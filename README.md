# Yorango Static Front End

The Yorango static front end, currently contains client-side code for the
Single Page App (SPA) of the listings marketplace and property management SaaS.

## Table of Contents

I. [Front End Development](#front-end-development) <br />
II. [Further Reading](#further-reading)

## Front End Development

### Using the Environment

1. Run `vagrant fsnotify` in a separate terminal window to notify the VM when
  a file has been changed
  - Only turn this on when you are _actively_ developing code
  - You will want to kill this process otherwise as it uses `touch` to
    propagate events, meaning it will easily interfere with file deletion,
    particularly when interacting with `git`, which may quickly add and delete
    files during a `rebase`
1. `docker-compose up -d` will run the front end watcher
  - `npm run watch` starts Webpack in watch mode, recompiling the JS and CSS
    whenever the source files change, outputting them into the `build/` folder
    as specified by the Webpack config
1. `docker-compose logs static` will show any output or errors in the
    build process

### Installing New Packages

1. `docker-compose exec static bash` will start a Bash shell
  - `npm install --save-dev <package_name>` will install and save a package
    as a dev dependency
  - `npm install --save <package_name>` will install and save a package as
    a production dependency
  - Alternatively, one can do this all in one-line with
    `docker-compose exec static npm install --save-dev <package_name>`
1. `import` the package where needed in the code

### Creating a Production Build

1. `docker-compose exec static npm run produce`

## Further Reading

1. [Webpack Docs](https://webpack.github.io/docs/)
1. [Webpack How To](https://github.com/petehunt/webpack-howto)
1. [NPM docs](https://docs.npmjs.com/)
1. [How Instagram Works](https://www.youtube.com/watch?v=VkTCL6Nqm6Y)
1. [Docker Docs](https://docs.docker.com/)
  - Read the Engine and Compose CLIs
