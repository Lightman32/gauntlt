When /^"gobuster" is installed$/ do
  ensure_cli_installed("gobuster")
end

When /^the WORDLISTS environment variable is set$/ do
  ensure_shell_variable_set("WORDLISTS")
end

When /^I launch (?:a|an) "gobuster" attack with:$/ do |command|
  add_to_profile('wordlists_path', get_shell_variable("WORDLISTS"))
  run_with_profile command
  @raw_gobuster_output = all_output
end
