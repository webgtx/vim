# Fully-featured Portable Vim
> Just clone, and use!

## Features
- **100%** portable, no need for any vim/nvim package managers
- Exclusive snippet manager with yaml support

## Vim Manager *(Vimanager)*
With *Vimanager*, you can easily **install** and fine-tune Vim according to your preferences
using a simple command-line interface. No configuration files are required.
```bash
python vimanager.py --help
```

## Snippet converter *(Vippets)*
Run `vippets.py` with python to convert your yaml snippets to vim snippets
```bash
python vippets.py snippets/python.yml .vim/ftplugin/python.vim
```
