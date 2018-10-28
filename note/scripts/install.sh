INSTALL_DIR=$1

if [ -z "$INSTALL_DIR" ]; then
  INSTALL_DIR="$HOME/dotfiles/bin"
fi

bazel build //note
cp bazel-bin/note/note "$INSTALL_DIR"

# the binary comes out without write permissions for current user, so running this script
# again fails when we try to override the binary we've copied into $INSTALL_DIR
chmod 0755 "$INSTALL_DIR/note"
