# dotfiles
Collection of configuration and setup of tooling and applications

## Note(s)
- This defaults to the location of `$XDG_CONFIG_HOME` which as of a while it defaults to `~/.config/` and many applications honour and check it
- Going forward, you will always need to pre-prend your git commands with `--work-tree` and `--git-dir`, or their env var equivalents, probs setup a alias like [this](shell/aliases#L115)

## Setup
1. From your git location:
```shell
git clone --bare https://github.com/crowz-fx/dotfiles.git
```

2. Now ignore all files not tracked so it's not a shitfest:
```shell
git --work-tree $HOME/.config/ --git-dir=$HOME/git/dotfiles.git/ config --local status.showUntrackedFiles no
```

3. Reset as it will stage the changes in the delta's between the remote and what may already exist:
```shell
git --work-tree $HOME/.config --git-dir=$HOME/git/dotfiles.git/ reset --mixed
```

4. In the directory you're point the `work-tree` flag to (or replace the dot with the same location as the `work-tree`):
```shell
git --work-tree $HOME/.config/ --git-dir=$HOME/git/dotfiles.git/ restore .
```

5. Now, should be good to go, verify with a status:
```shell
git --work-tree $HOME/.config/ --git-dir=$HOME/git/dotfiles.git/ status
```

## Execution
One time perms (if not set already via git):
```shell
chmod +x setup
```

Run!
```shell
./setup <list of ssh key names>

# Example:
#    ./setup key-for-thing,key-for-remote,key-for-hackz
```