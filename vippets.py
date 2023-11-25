import yaml
from sys import argv
from os import remove, path, getcwd as pwd

with open(argv[1], "r") as stream:
    snippets = yaml.safe_load(stream)
    try:
        remove(f"{pwd()}/{argv[2]}")
    except FileNotFoundError:
        print("\x1b[31mFile wasn't found\033[0m")
    for snippet in snippets:
        snippet["code"] = (
            f"ab {snippet['name']} " + snippet["code"].replace("\n", "<CR>") + "\n"
        )
        with open(argv[2], "a") as output_stream:
            output_stream.write(snippet["code"])
