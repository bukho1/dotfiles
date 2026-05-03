#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"
CONFIG="$HOME/.config"

symlink() {
    local src="$1"
    local dst="$2"
    if [ -e "$dst" ] && [ ! -L "$dst" ]; then
        echo "  [backup] $dst → $dst.bak"
        mv "$dst" "$dst.bak"
    fi
    ln -sfn "$src" "$dst"
    echo "  [linked] $dst"
}

echo "==> Linking .config entries..."
for dir in "$DOTFILES/.config"/*/; do
    name=$(basename "$dir")
    symlink "$dir" "$CONFIG/$name"
done

echo "==> Linking .themes/presets..."
mkdir -p "$HOME/.themes"
symlink "$DOTFILES/.themes/presets" "$HOME/.themes/presets"

echo "==> Linking scripts..."
symlink "$DOTFILES/.scripts" "$HOME/.scripts"

echo "==> Linking shell files..."
symlink "$DOTFILES/.zshenv" "$HOME/.zshenv"
[ -f "$DOTFILES/.zshrc" ] && symlink "$DOTFILES/.zshrc" "$HOME/.zshrc"

echo "==> Done. Restart your session to apply."
