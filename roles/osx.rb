description "OSX specific cookbooks."
run_list [
  "recipe[homebrew]",
  "recipe[dmg]",
  "recipe[mac_os_x::settings]",
  "recipe[ssh-copy-id]",
  "recipe[evernote]",
  "recipe[viscosity]",
  "recipe[iterm2]",
  "recipe[bettertouchtool]",
  "recipe[1password]"
]
