This is a GitHub Pages repo showing how to install Stata packages directly from GitHub using the `net` command.

Using the `gh-pages` branch of a GitHub repository, you can create a simple web server from which to install Stata packages. (Note: My GitHub account is setup with a URL redirection to my personal domain (thomasleeper.com). If you don't have this configured, you should be able to access the Stata package directory using a standard github.io URL, such as `http://leeper.github.io/statpkg/`.)

Here's a simple example:

```
* net FROM THE SITE
. net from http://thomasleeper.com/statapkg/

* SEE WHAT'S IN THE PACKAGE DIRECTORY
. net
------------------------------------------------------------------------------------------------------
http://thomasleeper.com/statapkg/
Some kind of package title and maybe your name
------------------------------------------------------------------------------------------------------

PACKAGES you could -net describe-:
    helloworld        Package description
    goodbyeworld      Package description
------------------------------------------------------------------------------------------------------

* DESCRIBE A PACKAGE FROM THE REPO
. net describe helloworld
------------------------------------------------------------------------------------------------------
package helloworld from http://thomasleeper.com/statapkg
------------------------------------------------------------------------------------------------------

TITLE
      helloworld | Package Description

DESCRIPTION/AUTHOR(S)
      Distribution-date: 2014-05-29
      Author Name (Author Email)
      More details

INSTALLATION FILES                           (type net install helloworld)
      helloworld/helloworld.ado
      helloworld/helloworld.hlp
------------------------------------------------------------------------------------------------------


* INSTALL THE helloworld PACKAGE FROM THE SITE
. net install helloworld
checking helloworld consistency and verifying not already installed...
installing into c:\ado\plus\...
installation complete.

* RUN THE COMMAND
. helloworld
hello world!
```

All of the packages in the directory need their own `pkgname.pkg` file at the top-level of the repo. They also need to be listed in `stata.toc` so that the `net` command can see them. Each package is then listed in its own directory, with a separate .ado and .hlp file. Other files could also be listed in there, such as data file or whatever.

