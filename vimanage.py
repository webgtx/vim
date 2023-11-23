import fire
import subprocess
from os import environ, remove, listdir
from shutil import copytree, copyfile, rmtree

class VIManager():
    def __init__(self):
        self.plugins_path = f"{environ['HOME']}/.vim/pack/plugins/start"
        self.home_path = environ['HOME']
        self.intergrations = {
            "terraform": f"git clone https://github.com/hashivim/vim-terraform.git {self.plugins_path}/vim-terraform",
            "d2": f"git clone https://github.com/terrastruct/d2-vim {self.plugins_path}/d2-vim"
        }

    def install(self):
        try:
            remove(f"{self.home_path}/.vimrc")
            rmtree(f"{self.home_path}/.vim")
        except FileNotFoundError:
            None

        copyfile(".vimrc", f"{self.home_path}/.vimrc")
        copytree(".vim", f"{self.home_path}/.vim")

        return "Super portable vim was installed successfully"

    def theme(
        self,
        name: str = "industry",
        termlinebg: tuple = ("25", "240"),
        show: bool = False
    ):
        if show:
            theme_registry = listdir(".vim/colors")
            return "Available colorschemes:\n" + "\n".join(theme_registry)

        with open(f"{self.home_path}/.vim/general/theme.vim", "w") as themeconf:
            themeconf.write((
                f"colorscheme {name}\n"
                f"hi StatusLineTerm ctermbg={termlinebg[0]} ctermfg=255\n"
                f"hi StatusLineTermNC ctermbg={termlinebg[1]} ctermfg=255"
            ))

        return f"Colorscheme: {name}\nTerminalLineBG: {termlinebg}"

    def extend(self, intergrations: tuple = None, full: bool = False):
        plugins = self.intergrations if full else intergrations
        for intergration in plugins:
            subprocess.run(self.intergrations[intergration].split(" "))

        return f"Installed intergrations: {list(plugins.keys())}"



if __name__ == '__main__':
    fire.Fire(VIManager)

