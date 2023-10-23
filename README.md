# Fully-featured Portable Vim
> Just clone, and use!

## Features
- **100%** portable, no need for any vi/vim/nvim package managers
- Exclusive snippet manager with yaml support

## Usage
Run `setup.sh` for installation
```bash
Arguments:
    --extended -e   # Setup extended sre/devops intergration
    --clear -c      # Delete all thrid-party plugins  
    --theme -t      # Select colorscheme
```

## Snippet manager
Run `vippets.py` with python to convert your yaml snippets to vim snippets
```bash
python vippets.py snippets/python.yml .vim/ftplugin/python.vim
```
