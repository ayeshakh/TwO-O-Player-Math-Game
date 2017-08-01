# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './player'
require './match'
require './questions'

## Your test code can go here
match1 = Match.new
match1.play


# binding.pry

#pp qualified_candidates(@candidates)
#pp ordered_by_qualifications(@candidates)