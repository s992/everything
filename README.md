# Sean's Monorepo

Just fiddling with Bazel on a few projects I work on occasionally:
- [note](https://github.com/s992/note)
- [tasky](https://github.com/s992/Tasky) - this is forked from [the original](https://github.com/jonsterling/Tasky)

## Structure
Please see the individual project directories for more information on each project.

```
├── bazel           # Miscellaneous Bazel utils
├── note
│   ├── scripts
│   └── src
├── scripts         # Miscellaneous scripts
├── tasky
│   ├── scripts
│   └── src
└── third_party     # Third party dependencies
    ├── cargo       # Rust dependencies
    └── python      # Python dependencies
```

Each project has a `scripts/install.sh` script that will build the project and install it to the specified directory. If a directory is not provided, the default is `"$HOME/dotfiles/bin"` (likely not useful for anyone other than me).

Additionally, you can use the top level `scripts/install-all.sh` to build and install every project at once. Again, you may provide the desired output directory to this script.
