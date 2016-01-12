# Ruby Drill: Command Line Arguments

##Summary

 Any Ruby program you write is running inside another pieces of software: the Ruby interpreter.  And that interpreter is itself running inside another piece of software: your operating system.  These software layers "outside" your Ruby program are called **the environment** and there are many ways you can shuttle data between the environment and your program.

One way is via the `ARGV` constant which comes pre-defined in every Ruby program.  It is an `Array` of `Strings` representing the command line arguments.  Consider this simple program:

```ruby
puts "The command line arguments are:"
puts ARGV.inspect
puts ""
```

The output looks like this:

```text
jesse@dewey ~ $ ruby argv.rb these are
The command line arguments are:
["these", "are"]

jesse@dewey ~ $ ruby argv.rb these are the command line arguments
The command line arguments are:
["these", "are", "the", "command", "line", "arguments"]

jesse@dewey ~ $ ruby argv.rb "this come in as one" "this comes in as two"
The command line arguments are:
["this come in as one", "this comes in as two"]

jesse@dewey ~ $
```

##Releases
###Release 0: ARGV-ify Pig Latin

Take your pig latin script and augment it so you can do the following:

```
$ ruby pig_latin.rb i love baseball
iay ovelay aseballay
$
```

Commit your new script

###Release 1: ARGV-ify Anagrams

Take your anagram detector code and write a script that takes two arguments and tells you if they're anagrams of each other.

```text
$ ruby anagram.rb cinema iceman
true

$ ruby anagram.rb these are
false
```

Commit your new script
