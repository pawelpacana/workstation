description "Base apps."
run_list [
  "recipe[curl]",
  "recipe[wget]",
  "recipe[vim]",
  "recipe[tmux]",
  "recipe[watch]",
  "recipe[tree]",
  "recipe[pwgen]",
  "recipe[coreutils]",
  "recipe[findutils]",
  "recipe[ctags]",
  "recipe[bash::completion]",
  "recipe[firefox]",
  "recipe[google-chrome]",
  "recipe[dropbox]",
  "recipe[skype]",
  "recipe[virtualbox]",
  "recipe[vagrant]"
]
