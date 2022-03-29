[ -n "$PS1" ]

source "$HOME"/.aliases

PATH=$PATH:~/scripts/

shopt -s nocaseglob; # Case-insensitive globbing (used in pathname expansion)
shopt -s histappend; # Append to the Bash history file, rather than overwriting it
shopt -s cdspell; # Autocorrect typos in path names when using `cd`

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;
