# Installing Stata Packages from GitHub

This site contains a Stata package directory with two Stata programs: `helloworld` and `goodbyeworld`.

Use `net from http://thomasleeper.com/statapkg/` to see the available packages.

Use `net describe helloworld, from(http://thomasleeper.com/statapkg/)` to see the details of the "helloworld" example package.
  
Then use `net install helloworld` to install the first package. It contains one command called `helloworld`. You might imagine what it does. The other package is basically the same.
