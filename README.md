# Ruby Drill: Command Line Arguments

## Summary
When we write an application, we sometimes need to get data from the user.  For example, if we wanted to write an application that allows users to convert English to Pig Latin, the user would need to supply the English.  One option is to build a user interface that asks the user for input.  We can see an example of this in Figure 1.

![user interface animation](readme-assets/user-interface-animation.gif)  
*Figure 1*.  A script which prompts the user for input.

Alternatively, we can write an application so that users pass in data right when the application is executed.  In other words, users supply *command line arguments* when they run the application.  Just like passing arguments to a method when we call it, we can provide arguments to our applications when we run them.  We can see an example of this in Figure 2.

![argv interface animation](readme-assets/argv-animation.gif)  
*Figure 2*.  A script which relies on command line arguments.


## Configuration through Command Line Arguments
The Pig Latin applications whose use is demonstrated in Figures 1 and 2 provide the same utility to users, but each gets data from users in a different way.  In this example, prompting the user for input or accepting command line arguments might not make much difference in the user experience.  But, we're only looking for one piece of data from the user.  Imagine there are a number of different pieces of data the user needs to supply.  And imagine also that some of them are optional.  Among other options, maybe the user could specify that the translation should come back in all caps.  Or, perhaps the user could specify to consider "y" as a vowel at the start of a word.

Would we want to ask the user "Do you want the translation in all caps?", "Do you want to treat 'y' as a vowel?", and all the other configuration questions every time they run the application?  As a user would you want to answer those questions every time you ran the application?

```
$ rspec spec/dog_spec.rb
$ rspec --no-color --format documentation
$ rspec --order random --tag js
```
*Figure 3*.  Examples of configuring RSpec through command line arguments.


For a real life example of using command line arguments, consider RSpec.  We can use the `rspec` command by itself to run our test suite.  But, we can also use command line arguments to configure RSpec each time we run it.  We can specify whether or not to color the output, specify a specific file to run, specify rspec to stop running when it hits a certain number of failing tests, among other configuration settings.  See Figure 3 for some examples of running rspec while passing command line arguments, and from the command line run `rspec --help` to see a list of configuration options we can pass as command line arguments when running RSpec.


### Accessing Command Line Arguments
If a user runs our application and passes in command line arguments, how do we access them?  In what format are they in?

When we execute a Ruby script, Ruby creates a constant for us: `ARGV`—short for argument vector.  The value of `ARGV` is always an array.  Each of the command line arguments we pass when running the script becomes an element in the array—specifically, each argument is a string in the array.

When we execute a Ruby script we use the `ruby` command followed by the name of the file to run.  Any additional text is used as the command line arguments. Each individual word is considered a separate argument, but we can use quotation marks to get around this.  In Table 1, we have some examples of running a ruby script and what ARGV would look like in each example.

| Executing the Script                | Value of `ARGV` in Ruby |
| :--                                 | :---                    |
| `$ ruby runner.rb`                  | `[]`                    |
| `$ ruby runner.rb Chris`            | `["Chris"]`             |
| `$ ruby runner.rb Chris Seidel`     | `["Chris", "Seidel"]`   |
| `$ ruby runner.rb "Chris Seidel"`   | `["Chris Seidel"]`      |
| `$ ruby runner.rb "Chris Seidel" 5` | `["Chris Seidel", "5"]` |

*Table 1*.  Example `ARGV` values based on command line arguments.


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
