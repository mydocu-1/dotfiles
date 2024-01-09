# Environment variables.

set -gx JAVA_HOME (dirname (dirname (realpath (which javac))))


# Set global `fish_user_paths`.
fish_add_path -g ~/.local/bin ~/node_modules/.bin ~/go/bin

