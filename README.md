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

## Notes

## jekyll Docker Windows Helper script

### Refs

<https://tonyho.net/jekyll-docker-windows-and-0-0-0-0/>
