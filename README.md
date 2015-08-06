A repo experimenting with installation of Stata packages from GitHub.

Using the `gh-pages` branch of a GitHub repository, you can create a simple web server from which to install Stata packages.

My GitHub account is setup with a URL redirection to my personal domain (thomasleeper.com). If you don't have this configured, you should be able to access the Stata package directory using a standard github.io URL, such as `http://leeper.github.io/statpkg/`.

You can use the following commands:

```
* net FROM THE SITE
. net describe helloworld, from(http://thomasleeper.com/statapkg/)

* SEE WHAT'S IN THE PACKAGE DIRECTORY
. net
------------------------------------------------------------------------------------------------------
http://thomasleeper.com/statapkg/
Some kind of package title and maybe your name
------------------------------------------------------------------------------------------------------

PACKAGES you could -net describe-:
    helloworld        Package description
------------------------------------------------------------------------------------------------------


* THIS COULD ALTERNATIVELY BE:
* . net describe helloworld, from(http://leeper.github.io/statpkg/)
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
