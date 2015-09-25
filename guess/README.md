# Guessing game: command line version

The game consists in guessing a number that the computer has picked. For each guess you get a hint whether your guess is too high or too low. The game ends when you guess the correct number.

Before writing any code, it's important to know what problem the program is solving. Write down the algorithm with your team. It is something like:

1. Print the game rules
2. Pick a number between 1 and 100
3. Read user input
4. If their guess was too low, say so
5. Otherwise, if their guess was too high, say so
6. Otherwise, if their guess was correct say so and end the program
7. Otherwise, start over from to step 3

Once you have agreed on an approximate structure like above, you can start implementing it step by step and introduce Ruby concepts as needed.

The students already know how to print a message from their hello world program. Write the code to display the game description and save the file as `guess.rb`.

```ruby
# guess.rb
puts "Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked."
```

```
C:\railsgirls> ruby guess.rb
Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked.
```

The second step is to generate a number. This is a good opportunity to explain how programmers find out how to do things they don't know how to do yet: search online, read the documentation, ask their peers for help, etc.

When writing the code, I searched for "random number ruby". I read through the Stack Overflow discussion [How to get a random number in Ruby?](http://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby). It contains a lot of information and it's easy for a beginner to get disoriented. Explain that this happens to experienced programmers too.

In this case you can just use `rand` with a range as an argument. Show the group the [`rand` documentation](http://ruby-doc.org/core-2.2.3/Kernel.html#method-i-rand) and try out different invocations in `irb`.

> If called without an argument, or if `max.to_i.abs == 0`, rand returns a pseudo-random floating point number between 0.0 and 1.0, including 0.0 and excluding 1.0.

```
irb(main):001:0> rand
=> 0.7930860130900022
```

This is not what we want. Next:

> When max.abs is greater than or equal to 1, rand returns a pseudo-random integer greater than or equal to 0 and less than `max.to_i.abs`.

```
irb(main):002:0> rand(100)
=> 67
```

This is closer to what we want but the generated number can be 0. The usage we want is this:

> When max is a Range, rand returns a random number where range.member?(number) == true.

The documentation is not meant for a complete beginner but you can paraphrase it. Also go to the [Range documentation](http://ruby-doc.org/core-2.2.3/Range.html) and play with ranges in `irb` to show how they work.

Finally, after some reading and some experimentation in `irb`, we have a way of generating a number between 1 and 100. Add a second line to the program that prints the random number.

```ruby
# guess.rb
puts rand(1..100)
```

Of course, we don't want to show the secret number to the player, but this will do for now, for debugging purposes. Save the program and run it again:

```
C:\railsgirls> ruby guess.rb
Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked.
96
```

Explain that the order of statements in the code matters. If you invert the two lines, the order of execution changes:

```ruby
# guess.rb
rand(1..100)
puts "Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked."
```

```
C:\railsgirls> ruby guess.rb
59
Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked.
```

The next step is getting user input. The group can search for that again. We are going to need to store what the user has written for further use. Explain variable assignment:

What the user types is stored in memory for further use in the program in something called a variable. A variable has a name and a value. In the code below the variable is named guess and it contains the text the user has typed before pressing Enter. We then can print the value of the variable.

```ruby
# guess.rb
puts rand(1..100)
puts "Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked."
puts "Guess the number:"
guess = gets
puts guess
```

```
C:\railsgirls> ruby guess.rb
43
Hello! In this game you'll try to guess a number between 1 and 100 that the computer has picked.
Guess the number:
50
50
```

Variables can store arbitrary values, not just user input:

```
irb(main):001:0> x = 1
=> 1
irb(main):002:0> puts x
1
=> nil
```

The random number should also be held in a variable so that we can compare the user guess to it. You can introduce conditionals and write the first comparison and try it out:

```ruby
# guess.rb
# ...
number = rand(1..100)
puts number
puts "Guess the number:"
guess = gets

if guess > number
  puts "You guessed too high!"
end
```

```
C:\railsgirls> ruby guess.rb
60
Guess the number:
70
guess.rb:6:in `>': comparison of String with 60 failed (ArgumentError)
  from guess.rb:6:in `<main>'
```

The program fails because `gets` returns a string and the comparison is not valid between a string and a number. You need to convert the user input to an integer:

```ruby
guess = gets.to_i
```

Now you can handle the other cases (smaller and equal). Your group will note that in the algorithm you have specified that the user tries again if they don't guess correctly. Introduce loops.

You can find an example of a complete implementation in [guess.rb](/guess/guess.rb)
