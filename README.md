A repo experimenting with installation of Stata packages from GitHub.

Using the `gh-pages` branch of a GitHub repository, you can create a simple web server from which to install Stata packages.

My GitHub account is setup with a URL redirection to my personal domain (thomasleeper.com). If you don't have this configured, you should be able to access the Stata package directory using a standard github.io URL, such as `http://leeper.github.io/statpkg/`.

You can use the following commands:

```
* net from the site
. net describe helloworld, from(http://thomasleeper.com/statapkg/)

* This could alternatively be:
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


* install the helloworld package from the site
. net install helloworld
checking helloworld consistency and verifying not already installed...
installing into c:\ado\plus\...
installation complete.

* run the command
. helloworld
hello world!
```
