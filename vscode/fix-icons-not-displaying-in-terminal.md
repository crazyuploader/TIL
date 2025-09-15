# Fix Icons Not Displaying in Terminal

By using custom prompts like [Starship](https://starship.rs) in VS Code, some icons end up missing using default config & fonts. We can fix that, by installing and using a nerd font.

## Step 1: Download Fonts

- [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

## Step 2: Install Fonts

Double click, and choose "Install" to install these fonts system-wide.

## Step 3: Configure VS Code

Open Settings in VS Code, and search for `terminal.integrated.fontFamily` using search box, and set `MesloLGS NF` as font in Font Family section.

**_Reference(s):_**

- [GitHub](https://github.com/romkatv/powerlevel10k/issues/671)
- [powerlevel10k Guide](https://github.com/romkatv/powerlevel10k/blob/master/font.md#manual-font-installation)
