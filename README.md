A repo experimenting with installation of Stata packages from GitHub.

Using the `gh-pages` branch of a GitHub repository, you can create a simple web server from which to install Stata packages.

You can use the following commands:

```Stata
* net from the site
net from http://leeper.github.io/statapkg

* install the helloworld package from the site
net install helloworld, from(http://leeper.github.io/statapkg)
```
