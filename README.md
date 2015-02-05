Docker generator-reveal
=======================

[reveal.js][] is a great tool for showing HTML presentation. Combined
with [generator-reveal][], a [Yeoman][yeoman] generator, it make
creating rich HTML presentations very easy.

This project aims to containerize the generator so that you are only
depend on [docker][] for creating and running reveal.js presentations.

How to Use
----------

### Initializing a presentation

The following docker command will initialize a reveal.js presentation
with `generator-reveal`.

```sh
docker run -v $PWD:/presentation dvberkel/generator-reveal -i yo reveal
```

When there is a `EPERM, readdir` permission problem with `bower` you
need to follow up with

```sh
mkdir bower_components
docker run -v $PWD:/presentation dvberkel/generator-reveal -i bower install
```

### Creating a slide

To create a new slide with the container issue

```sh
docker run -v $PWD:/presentation dvberkel/generator-reveal yo reveal:slide
```

### Running presentation

When you want to present the slideshow, you need to change the
`hostname` in the generated `Gruntfile.coffee` to `*` and run

```sh
docker run -v $PWD:/presentation dvberkel/generator-reveal -p 9000:9000 -p 35729:35729 grunt serve
```

Use the `boot2docker ip` command to figure out where to point your
browser if you are using boot2docker.

[reveal.js]: http://lab.hakim.se/reveal-js/#/
[generator-reveal]: https://github.com/slara/generator-reveal
[yeoman]: http://yeoman.io/
[docker]: https://www.docker.com/
