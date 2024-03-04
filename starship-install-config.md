# STARSHIP Configurations

Main install command

$ zimfw install

This is a Prompt Command for Starship

# zmodule spaceship-prompt/spaceship-prompt --name spaceship

## Nerd Font Symbols Preset

This preset changes the symbols for each module to use Nerd Font symbols.

[StarShip Presets](https://starship.rs/presets/#nerd-font-symbols).

[Nerd Font Symbols]

### Configuration

```
$ starship preset nerd-font-symbols -o ~/.config/starship.toml
```

## No Nerd Fonts

This preset changes the symbols for several modules so that no Nerd Font symbols are used anywhere in the prompt.

### Bracketed Segments Preset

This preset changes the format of all the built-in modules to show their segment in brackets instead of using the default Starship wording ("via", "on", etc.).

### Configuration

```
$ starship preset bracketed-segments -o ~/.config/starship.toml
```

## Plain Text Symbols

This preset changes the symbols for each module into plain text. Great if you don't have access to Unicode.

### Configuration

```
$ starship preset plain-text-symbols -o ~/.config/starship.toml
```

## No Runtime Versions

This preset hides the version of language runtimes. If you work in containers or virtualized environments, this one is for you!

Screenshot of Hide Runtime Versions preset

```

```


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
