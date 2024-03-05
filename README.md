# Workstation


1. [Generate SSH key for GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and clone repo
1. Run `./.setup.sh`

## Manual steps

#### Prerequisites

- Install Homebrew
- Install 1Pass

#### iTerm2
* Preferences > Profiles > Text > Font > size 13
* Preferences > Profiles > Colors > Color Presets > Import > import `.itermcolors` file

#### macOS settings
- Set up hot corners
- Update keypress speeds
  - Keyboard > set `Key Repeat` to `Fast`; `Delay Until Repeat` to `Short`
- Set Modifier Keys > USB Keyboard > Swap Option and Command keys

#### Alfred
- Replace Spotlight shortcut with Alfred
  - 1. Keyboard shortcuts > Spotlight > uncheck Show spotlight search
  - 1. Alfred > Preferences > change Alfred hotkey to cmd+space

- Allow Alfred access
  - Alfred > Preferences > Features > Default Results: Check Folders, Documents

- Activate PowerPack

- Import Alfred Workflows - download & double-click
  - [GitHub Workflow](https://github.com/gharlan/alfred-github-workflow)
  - [Encode/Decode](https://github.com/willfarrell/alfred-encode-decode-workflow)

#### Chrome plugins
- [AdBlock](https://chromewebstore.google.com/detail/adblock-%E2%80%94-best-ad-blocker/gighmmpiobklfepjocnamgkkbiglidom)
- [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)
- [ColorPick Eyedropper](https://chrome.google.com/webstore/detail/colorpick-eyedropper/ohcpnigalekghcmgcdcenkpelffpdolg)
- [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
- [EditThisCookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg)
- [Ghostery](https://chrome.google.com/webstore/detail/ghostery-%E2%80%93-privacy-ad-blo/mlomiejdfkolichcflejclcbmpeaniij) - privacy ad blocker

#### VS Code

- Enabling key repeat (eg. for vim plugin). Restart VSCode after: `defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false`

#### JetBrains

Install command-line launcher for JetBrains IDE, eg. Goland.

1. Add script at `/usr/local/bin/goland`; make  executable

```
#!/usr/bin/env bash

open -na "<path to binary>" --args "$@" .
```

2. Alias `god` to script path

```
alias god=/usr/local/bin/goland
```

**Other Jetbrains config**
- Preferences > Plugins > Marketplace  
  - `Spacegray Theme` ([spacegray-theme](https://plugins.jetbrains.com/plugin/12122-spacegray-theme))
  - `IdeaVim`
  - `Rainbow Brackets`
- Enabling key repeat (eg. for vim plugin)
  - Intellij Ultimate Edition: `defaults write com.jetbrains.goland ApplePressAndHoldEnabled -bool false`
  - Intellij Community Edition: `defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false`
  - Goland: `defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false`
- Resolve keymap conflict between IdeaVim and Intellij:
  - Preferences > search `vim`:
    - `^G`: `Add Selection for Next Occurrence` > set Handler to `IDE`

