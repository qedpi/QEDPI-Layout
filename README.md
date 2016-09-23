# QEDPI-Layout
## vim-like document editing + math & logic symbols on Dvorak variant

## Introduction
The problem of Keyboard-layout optimization has been studied since the time of Dvorak, 
and layouts that seek to maximize certain parameters have used statistical and evolutionary models, to great success.
As further improvements within the same constraints are likely minimal, 
I have decided to tackle this by expanding the design parameters beyond that of travel distance, stroke paths, 
relative effort depending on finger and position, and preservation of non-alphabetical chars. 

[for more comprehensive history coverage, check out this wiki on desk authority](https://deskthority.net/wiki/Keyboard_layouts)

Instead, I will present these rather unconventional considerations:
+ In both writing and programming, captitalization either occurs on the first letter of a word, or the entire word
  - eg: Wally works for Walmart.
  - eg: const BEST_NUMBER = 1 (A 'Capslock' key is required here)
  - Since mixing of cases (eg: LaTeX) is extremely rare, one of the shift key can become more effective by being sticky, ie,
    captalizing the next letter
+ 'Dead keys' can be introduced into prime territory, even perhaps the homekeys, in order to allow easy switching between layers
  - the default layer will be alphabetical
  - a vim/emacs-like second layer for navigation & text manipulation
  - a numerical third layer
  - specialized layers:
    * eg: programming symbols
    * eg: mathematical symbols, as typing math anywhere is λx ⇒ ∫eˣdy
    * eg: IPA
  - these dead keys can either be toggled, held down, or sticky, depending on the usage conditions for the layer
+ Frequently used special keys such as return and backspace should be easy to reach
+ The letter 'Q' is almost always used with 'u', so Q can be made into a 'qu' key, 
  or be substituted by combinations unseen in english, such as 'kw'
  - the purpose is to free up a key while reducing a hard to type rare key into an easy to type bigram
+ In a toggle-able 'prose mode' implement contractions such as 'thru -> through', targetting frequent but difficult to type words. 
  - allow systematic contractions based off of most frequent bigrams, trigrams, and suffixes. 
  - in a sense, this typed language of contractions is 'compiled' into conversational english, 
    since [english doesn't have enough syntactic sugar](http://ncf.idallen.com/english.html)


[Inspired and developed on ideas presented by: Dvorak, Colemak, Carpalx, Capewell, Workman,  MTGAP, Kaufmann, AdNW, Beakl)
](https://deskthority.net/wiki/Keyboard_layouts)
