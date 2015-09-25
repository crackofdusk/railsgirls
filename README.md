# Tips for coaching at Rails Girls

I wrote this short guide for mentors instead of students. There are two reasons:

1. When learners read a tutorial, they concentrate on the text and it's hard to have a group discussion
2. Everyone has their unique teaching style. I give one example here, but you may present the material in a different way or teach something else entirely.

Some people in your group will grasp concepts faster than others. Have them explain to their peers what they have understood in their own words. They won't get bored and you will discover ways to present that you hadn't considered. This will also encourage them to work as a team.

## Installation

The fastest way to get started with Ruby on Windows is to download and run [RubyInstaller](http://rubyinstaller.org/downloads/). You want the latest available version.

After installation run "Command prompt with Ruby" (in the start menu search field, type "ruby" and it should appear in the results). From the terminal that launches, run

```
ruby -v
```

to confirm that the correct version of Ruby is installed.

Note: there is a project called [RailsInstaller](http://railsinstaller.org/) which installs both Ruby and Rails, but it has older versions of Ruby and I've ran into SSL certificate problems with it on Windows. I strongly recommend you use RubyInstaller instead as explained above.

You also want a text editor. Install [Atom](https://atom.io/).

## A quick note about Rails

Even though the event is called Rails Girls, getting started with Rails out of the blue is ill-advised for complete beginners. If you are coaching a more advanced group, go ahead and install rails through the "Command prompt with Ruby":

````
gem install rails
```

These tips are meant for mentors of beginner groups.

## Getting started

The important thing is to teach in small steps and introduce each new concept as an answer to a question about the current step. What follows is one example of such a style.

Start by just printing "Hello, World!" in `irb` (Run `irb` from the "Command prompt with Ruby").

```
irb(main):001:0> puts "Hello, World!"
Hello, World!
=> nil
```

You can try other simple things like `1 + 1` or printing other messages.

Explain that you are communicating with the computer in an interactive session. Ask how you could run a program without having to type it in every time. Explain that you are going to store the program in a file.

In a new "Command Prompt with Ruby", create a `railsgirls` directory in an easily accessible place.

```
C:\> cd c:
C:\> mkdir railsgirls
C:\> cd railsgirls
C:\railsgirls>
```

As you go along, explain what the commands do. It may be tempting to create a folder using the file manager, but the students are going to spend some time in a terminal later on, so it's a good idea to get them accustomed to it from the get go.

Open the text editor and write the following program:

```ruby
puts "Hello, World!"
```

Save it as `hello.rb` in the folder created above (`C:\railsgirls`). Run the program:

```
C:\railsgirls> ruby hello.rb
Hello, World!
```

Modify the program to print something else, save it and run it again. Explain that as the program gets longer, it will become more convenient to try out the changes this way, but `irb` is still very helpful if you want to play around with a small part of a program (e.g. one particular line of code).

Now that your group understands how to save and run a program, they can start writing a little command line game. Refer to the [guessing game readme](/guess/README.md).
