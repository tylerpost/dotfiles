#alias commands
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

#use enter to auto-replay the last command
Pry::Commands.command /^$/, "repeat last command" do  
  _pry_.input = StringIO.new(Pry.history.to_a.last)
end

#just print out large objects 
Pry.config.pager = false
