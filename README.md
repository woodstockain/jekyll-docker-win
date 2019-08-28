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

- Create Jekyll scaffold
  
  ```sh
  $> sh jekylldocker.sh new
  ```

This runs `jekyll new --blank` and the 'init' command

### Existing Site / Repo

- Add required config to project
  
  ```sh
  $> sh jekylldocker.sh init
  ```

Creates `_config.docker-win.yml` required for serve

## Commands

## References Used

[Jekyll Documentation - Jekyll CLI](https://jekyllrb.com/docs/usage/)
[This is Tony's Blog - Jekyll, Docker, Windows, and 0.0.0.0](https://tonyho.net/jekyll-docker-windows-and-0-0-0-0/)
