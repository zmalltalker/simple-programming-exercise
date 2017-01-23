# Programming exercise in various languages

I found the following exercise/challenge somewhere on the web, and it
really caught my interest:

> Write three functions that compute the sum of the numbers in a given
> list using a for-loop, a while-loop and recursion

What I really liked about this challenge is that it's really easy;
there are no difficult algorithm problems to solve. But solving the
same problem using these three approaches demonstrates how different
approaches to solving a problem makes me reason about the problem.

To give myself a second challenge I set out to do it in more than one
programming language. My go-to language is usually Ruby, so that was
the first one I tried. Then I wanted to brush up on my Python skills,
so that was a natural next step. I haven't written much C in my life,
and this seemed like a manageable challenge. The JavaScript version
took me virtually no time at all, while Go forced me to think
differently about the problem, not only because Go doesn't have a
`while` clause.

To wrap it all up, I made the sample programs exit with an exit code
of `0` in case all tests passed. Then I wrote a `Rakefile` which runs
all the programs and uses the exit code to determine whether the tests
ran successfully or not. Running `rake all` will run all the tests for you.

If you want to do this exercise in a different language, feel free to
contribute your own and submit a pull request.
