#!/bin/sh

GIT_COLOR="#f14e32"

git_color_text() {
  text=$1

  gum style --foreground "GIT_COLOR" "$text"
}
get_branches(){
  gum choose --no-limit $(git branch --format="%(refname:short)")
}


gum style \
  --border normal \
  --margin "1" \
  --padding "1" \
  --border-foreground "$GIT_COLOR" \
  "$(git_color_text " Git") Branch Manager"

echo "Choose $(git_color_text "branches") to operate on:"
branches=$(get_branches)

echo ""
echo "Choose a $(git_color_text "command"):"
command=$(gum choose rebase delete update)
echo ""
