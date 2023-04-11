from glob import glob
import json
import re
from collections import defaultdict

std_trainer = re.compile(r"std_trainer(?:_2)?[(](\w+)[)]")
filename_pat = re.compile(r"([A-Z0-9]+)[.]\w+$")
define_pat = re.compile(r"#define (\w+) (\d+)\n")
trainer_pat = re.compile(r"(?m)^\s*trainer_battle (TRAINER_\w+),")

trainer_numbers = {}
matches = defaultdict(dict)

with open("src/data/map_headers.h") as file:
    map_headers_contents = file.read()

with open("files/poketool/trainer/trainers.json") as trainers_file:
    trainers = json.load(trainers_file)["trainers"]

with open("include/constants/trainers.h") as trainers_constants_file:
    for line in trainers_constants_file.readlines():
        match = define_pat.fullmatch(line)
        if match:
            trainer_numbers[match.group(1)] = int(match.group(2))


def append_trainer(mapsec, trainer):
    trainer_number = trainer_numbers[trainer]
    matches[mapsec][trainer] = (trainer_number, trainers[trainer_number])


for name in glob("files/fielddata/eventdata/zone_event/*.json"):
    map_name = filename_pat.search(name).group(1)
    if map_name == "DUMMY":
        continue
    mapsec = re.search(
        rf"\[MAP_{re.escape(map_name)}\] = [^}}]*?[.]mapsec = MAPSEC_(\w+),",
        map_headers_contents,
    ).group(1)
    with open(name) as file:
        for o in json.load(file).get("objects", ()):
            scr = o["scr"]
            if type(scr) == str:
                match = std_trainer.fullmatch(scr)
                if match:
                    append_trainer(mapsec, match.group(1))

for seq in glob("files/fielddata/script/scr_seq/scr_seq_*_*.s"):
    if "_hdr" in seq:
        continue
    map_name = filename_pat.search(seq).group(1)
    mapsec = re.search(
        rf"\[MAP_{re.escape(map_name)}\] = [^}}]*?[.]mapsec = MAPSEC_(\w+),",
        map_headers_contents,
    ).group(1)
    with open(seq) as file:
        for match in trainer_pat.finditer(file.read()):
            append_trainer(mapsec, match.group(1))

nsre = re.compile("([0-9]+)")


def natural_sort_key(s):
    return [int(text) if text.isdigit() else text.lower() for text in nsre.split(s)]

def average_level(v):
    count = 0
    level = 0
    for (_, trainer) in v[1].values():
        for poke in trainer["party"]:
            count += 1
            level += poke["level"]
    return level / count


print("Trainer\tID\tSpecies\tLevel")
for match, values in sorted(matches.items(), key=average_level):
    print("\t\t\t")
    print(f"{match}\t\t\t")
    for trainer_name, (trainer_number, trainer) in sorted(values.items(), key=lambda v: max(v["level"] for v in v[1][1]["party"])):
        print(f"{trainer_name.replace('TRAINER_', '', 1)}\t{trainer_number}\t", end="")
        later = False
        for poke in trainer["party"]:
            if later:
                print("\t\t", end="")
            species = poke["species"].replace("SPECIES_", "").title()
            if species == "Mr_Mime":
                species = "Mr. Mime"
            level = poke["level"]
            print(f"{species}\t{level}")
            later = True
