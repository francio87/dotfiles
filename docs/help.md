## Gnome Terminal

### Dump Profile:
```
dconf dump /org/gnome/terminal/ > ~/gnome-terminal-profiles.dconf
```
### Load Profile:
```
cat ~/gnome-terminal-profiles.dconf | dconf load /org/gnome/terminal/legacy/profiles:/
```

