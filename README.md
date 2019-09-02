# jekyll-docker-win

Helper Script for Running jekyll/jekyll in Docker for/on Windows. 

Requires:

- Windows
- Docker Desktop (Linux Containers)
- git/git bash

## Usage

- wget/download script to root of repo (note this is one level above jekyll files - if in doubt try the 'new' command)
  
  ```sh
  wget %url%
  ```

- Set Params at head of script
  
  ```sh
    ## User Defined
    JEKYLL_VERSION=3.8
    SITE_NAME=getting-started
  ```

- Run Script like any other bash script
  
  ```sh
    $> sh jekylldocker.sh %COMMAND%
  ```

### New Site / Repo
  
  ```sh
  $> sh jekylldocker.sh new
  ```

### Existing Site / Repo

  ```sh
  $> sh jekylldocker.sh init
  ```

## Commands

| Command | Description |
|---------|-------------|
| `init` | Creates `_config.docker-win.yml` required for serve |
| `new` | This runs `jekyll new --blank` and the 'init' command |
| `example` | This runs `jekyll new` and the 'init' command |
| `build` | x |
| `build-watch` | x |
| `serve` | Serves the site locally on port 4000, with incremental build. `ENV=docker-win` |
| `cli` | x |

## References Used

- [Jekyll Documentation - Jekyll CLI](https://jekyllrb.com/docs/usage/)
- [This is Tony's Blog - Jekyll, Docker, Windows, and 0.0.0.0](https://tonyho.net/jekyll-docker-windows-and-0-0-0-0/)
