# Dotfiles

This is how I manage my dotfiles on nix(ish) systems.
Follows the ideas outlined in [this Atlassian blog post](https://www.atlassian.com/git/tutorials/dotfiles).

## Setup Snippet

```bash
git clone --bare https://gitlab.com/michael-johnson/dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
 echo "Checked out config.";
else
   echo "Backing up pre-existing dot files.";
   config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;

config checkout
config config status.showUntrackedFiles no
```
