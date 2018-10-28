INSTALL_DIR=$1

if [ -z "$INSTALL_DIR" ]; then
  INSTALL_DIR="$HOME/dotfiles/bin"
fi

bazel build //note
cp bazel-bin/note/note "$INSTALL_DIR"
