# About the fzf plugin

This plugin provides support for opening files via [fzf](https://github.com/junegunn/fzf).

# Commands

The plugin providies the following commands:

* `fzf`: launch `fzf` to find a file to open.

# Remarks

`fzf` relies on `FZF_DEFAULT_COMMAND` variable to provide a default command that is responsible for listing files
that are shoveled into the interactive finder.

To make `fzf` working with external search tool like [the-silver-searcher](https://github.com/ggreer/the_silver_searcher) or [rigrep](https://github.com/BurntSushi/ripgrep) for extra functionality (e.g. ignoring files based on your `.gitignore` configuration), you might want to override it for your shell (e.g. `FZF_DEFAULT_COMMAND="ag -g ''"`).
