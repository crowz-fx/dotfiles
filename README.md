# dotfiles
Collection of configuration and setup of tooling and applications

## Note(s)
- This defaults to the location of `$XDG_CONFIG_HOME` which as of a while it defaults to `~/.config/` and many applications honour and check it

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