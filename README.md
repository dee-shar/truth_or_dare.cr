# truth_or_dare.cr
Web-API for [truthordarebot.xyz](https://truthordarebot.xyz/) an bot which is designed to make conversations with your friends more fun and exciting

## Example
```cr
require "./truth_or_dare"

truth_or_dare = TruthOrDare.new
paranoia_question = truth_or_dare.get_paranoia_question()
puts paranoia_question
```
