# Elm Analyse for Vim

This plugin adds support for linting through [ALE](https://github.com/w0rp/ale) with [elm-analyse](https://github.com/stil4m/elm-analyse).

# Installation

## vim-elm-analyse

| Package Manager | Command |
|---|---|
|[Vim-Plug](https://github.com/junegunn/vim-plug)|`Plug 'antew/vim-elm-analyse'`|
|[Vundle](https://github.com/VundleVim/Vundle.vim)|`Plugin 'antew/vim-elm-analyse'`
|[Pathogen](https://github.com/tpope/vim-pathogen)|<pre>cd ~/.vim/bundle<br>git clone https://github.com/antew/vim-elm-analyse.git</pre>|


## elm-analyse

NOTE: This project currently requires a fork of elm-analyse.

I recommend installing it globally, `npm i -g antew/elm-analyse#lsp`

For more info [see here](https://github.com/stil4m/elm-analyse/#install)

# Configuration

## Finding Executables
You can allow ALE to use a globally installed versions of `elm-analyse` with

```
let g:ale_elm_analyse_use_global = 1
```

Or, you can configure ALE to use a globally installed version for all executables.

```
let g:ale_use_global_executables = 1
```

## Configuring Elm Analyse
Create an `elm-analyse.json` file in the root of your project and add your customizations.

```
{
  "checks" : {
    "UnusedTypeAlias": false
  }
}
```

See the [Elm Analyse](https://stil4m.github.io/elm-analyse/#/configuration) documentation for additional configuration options.