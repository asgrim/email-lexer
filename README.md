# Email lexer - FLEX demo

THIS IS NOT A USEFUL TOOL, JUST AN EXPERIMENT I AM LEARNING FLEX WITH.

Requires flex and cmake.

## Compiling

```
$ cmake CMakeLists.txt
$ make
```

## Running

```
$ ./email_lexer < test_email
 == Valid header == From: James <foo@bar.com>
 == Valid header == Subject: Something great: yes!
 == Valid header == Date: January 25, 2011 3:30:58 PM PDT
 == Valid header == To: bat@baz.com
 == Beginning content...
This is some content.
It might go on for a while.
It might not though.
 == End of content.
$ 
```
