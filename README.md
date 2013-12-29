# Ruby Drill Argv Basics 
 
##Learning Competencies 

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

### Learning Goals

The goal here is to become familiar with how `ARGV` works.


## Objectives

### ARGV-ify Pig Latin

Take your pig latin script and augment it so you can do the following:

```
$ ruby pig_latin.rb i love baseball
iay ovelay aseballay
$
```

Save this file as `pig_latin.rb` in your gist.  Remember, you can add multiple files to a gist.

### ARGV-ify RPN Calculator

Take your RPN calculator script and augment it so you can do the following:

```text
$ ruby rpn.rb "3 4 +"
7
```

Note, you'll have to pass in the arguments in quotes because some characters have special meaning on the command-line.  `*` for example means "every file in the current directory."  Probably not what you want to pass in as command-line arguments!

Save this file as `rpn.rb` in your gist.  Remember, you cn add multiple files to a gist. 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources