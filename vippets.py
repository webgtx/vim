import yaml
from sys import argv
from os import remove, path, getcwd as pwd

with open(argv[1], "r") as stream:
    snippets = yaml.safe_load(stream)
    snippets_binary = str()
    try:
        remove(f"{pwd()}/{argv[2]}")
    except FileNotFoundError:
        print("\x1b[31mFile wasn't found\033[0m")
    for snippet in snippets:
        snippets_binary += (f"ab {snippet['name']} " + snippet["code"].replace("\n", f"<CR><Home>") + "\n")
    with open(argv[2], "w") as output_stream:
        output_stream.write(snippets_binary)
