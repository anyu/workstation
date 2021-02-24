# Workstation
Setup and dotfiles

## Manual steps

### iTerm2
* Preferences > Profiles > Colors > Color Presets > Import > [nord-iterm2](https://github.com/arcticicestudio/nord-iterm2) theme from `/iterm2_theme`
* Tweak ANSI colors
* Preferences > Profiles > Text > Font > size 14

### JetBrains

Install command-line launcher for JetBrains IDE, eg. Goland.

1. Add script at `/usr/local/bin/goland`; make  executable

```
#!/usr/bin/env bash

open -na "<path to binary>" --args "$@" .
```

2. Alias `goland` to script path

```
alias goland=/usr/local/bin/goland
```

### Alfred Workflows
* [GitHub Workflow](https://github.com/gharlan/alfred-github-workflow)
* [Encode/Decode](https://github.com/willfarrell/alfred-encode-decode-workflow)