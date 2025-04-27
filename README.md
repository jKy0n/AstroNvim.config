# ⌨️ jKyon AstroNvim configuration ⚙️

![face](https://github.com/jKy0n/AstroNvim.config/blob/main/media/2025-04-27_03-39.png)

**NOTE:** This is for [AstroNvim](https://github.com/AstroNvim/AstroNvim)  v4+

## 🛠️ Installation

#### 1. Make a backup of your current nvim and shared folder first

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### 2. Clone the repository

```shell
git clone https://github.com/jKy0n/AstroNvim.config.git ~/.config/nvim # HTTPS
# or
git clone git@github.com:jKy0n/AstroNvim.config.git ~/.config/nvim     # SSH (Recommended)
```

#### 3. Start Neovim

```shell
nvim
```

#### 4. Manage plugins

In nvim type:
```
:Lazy check     # to check for plugin updates.
:Lazy update    # to apply any pending plugin updates
:Lazy clean     # to remove any disabled or unused plugins
:Lazy sync      # to update and clean plugins
```

And it's done, enjoy! =)
