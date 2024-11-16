import fire
import subprocess
from os import environ, remove, listdir
from shutil import copytree, copyfile, rmtree


class VIManager:
    def __init__(self):
        self.plugins_path = f"{environ['HOME']}/.vim/pack/plugins/start"
        self.home_path = environ["HOME"]
        self.gh_url = "https://github.com/"
        self.integrations = {
            "terraform": "hashivim/vim-terraform.git",
            "d2": "terrastruct/d2-vim",
            "completor": "maralla/completor.vim",
            "fzf": "junegunn/fzf.vim",
            "css-colors": "ap/vim-css-color",
            "wakatime": "wakatime/vim-wakatime",
            "airline": "vim-airline/vim-airline"
        }

    def install(self):
        "Install VIM configuration"
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
        show: bool = False,
    ):
        if show:
            theme_registry = listdir(".vim/colors")
            return "Available colorschemes:\n" + "\n".join(theme_registry)

        with open(f"{self.home_path}/.vim/general/theme.vim", "w") as themeconf:
            themeconf.write(
                (
                    f"colorscheme {name}\n"
                    f"hi StatusLineTerm ctermbg={termlinebg[0]} ctermfg=255\n"
                    f"hi StatusLineTermNC ctermbg={termlinebg[1]} ctermfg=255"
                )
            )

        return f"Colorscheme: {name}\nTerminalLineBG: {termlinebg}"

    def extend(self, integrations: tuple = ("terraform",), full: bool = False):
        plugins = tuple(self.integrations.keys()) if full else integrations
        plugins = plugins if type(plugins) is tuple else [plugins]
        for integration in plugins:
            subprocess.run(f"git clone {self.gh_url}/{self.integrations[integration]} {self.plugins_path}/{self.integrations[integration].split('/')[1]}".split(" "))

        return f"Installed integrations: {list(plugins)}"


if __name__ == "__main__":
    fire.Fire(VIManager)
