description "General development cookbooks."
run_list [
  "recipe[ack]",
  "recipe[git]",
  "recipe[hub]",
  "recipe[libxml2]",
  "recipe[netcat]",
  "recipe[socat]"
]
