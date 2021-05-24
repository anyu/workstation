# Workstation


1. [Generate SSH key for GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and clone repo
1. Run `./.setup.sh`

## Manual steps

#### iTerm2
* Preferences > Profiles > Text > Font > size 13

#### macOS settings
- Set up hot corners
- Update keypress speeds
  - Keyboard > set `Key Repeat` to `Fast`; `Delay Until Repeat` to `Short`

#### Alfred
- Replace Spotlight shortcut with Alfred
  - 1. Keyboard shortcuts > Spotlight > uncheck Show spotlight search
  - 1. Alfred > Preferences > change Alfred hotkey to cmd+space

- Activate PowerPack

- Import Alfred Workflows - download & double-click
  - [GitHub Workflow](https://github.com/gharlan/alfred-github-workflow)
  - [Encode/Decode](https://github.com/willfarrell/alfred-encode-decode-workflow)

#### JetBrains

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

**Other Jetbrains config**
- [spacegray-theme](https://plugins.jetbrains.com/plugin/12122-spacegray-theme)
- Enabling key repeat (eg. for vim plugin)
  - Intellij Ultimate Edition: `defaults write com.jetbrains.goland ApplePressAndHoldEnabled -bool false`
  - Intellij Community Edition: `defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false`
  - Goland: `defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false`