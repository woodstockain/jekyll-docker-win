## User Defined
JEKYLL_VERSION=3.8
SITE_NAME=getting-started

## Script Vars
COMMAND=$1

## Functions
function jekylldocker {
    export JEKYLL_VERSION=$JEKYLL_VERSION
    JEKYLLCOMMAND=$1
    DOCKEROPTS=$2
    SITEPATH=$3"/"
    
    echo "Using jekyll/jekyll Version:"
    env | grep JEKYLL
    echo "Doing: $JEKYLLCOMMAND"
    echo "With docker-opts: $DOCKEROPTS"
    echo "With site path:$SITEPATH"
    
    winpty docker run --rm \
        --volume="/$(pwd -W)$SITEPATH:/srv/jekyll/" \
        $DOCKEROPTS \
        -it jekyll/jekyll:$JEKYLL_VERSION \
        jekyll $1
}
function init {
        mkdir -p $SITE_NAME
        touch $SITE_NAME/_config.yml
        touch $SITE_NAME/_config.docker-win.yml
        echo "# Overide _config.yml when running in jekyll docker container on Windows" >> $SITE_NAME/_config.docker-win.yml
        echo "url: "http://localhost:4000"" >> $SITE_NAME/_config.docker-win.yml
}

## Do Stuff
case "${COMMAND}" in
    test)
    winpty docker run -it --rm --volume="/$(pwd -W)/:/srv/jekyly/" alpine
    ;;
    new)
        jekylldocker "new $SITE_NAME --blank"
        init
        echo "<marquee>Hello World</marquee>" >> $SITE_NAME/index.html
    ;;
    example)
        jekylldocker "new $SITE_NAME"
        init
    ;;
    init)
        init
    ;;
    build)
        jekylldocker "build"
    ;;
    build-watch)
        jekylldocker "build --watch"
    ;;
    serve)
        jekylldocker \
            "serve --config _config.yml,_config.docker-win.yml --incremental --force-polling" \
            "--env JEKYLL_ENV=docker-win -p 4000:4000" \
            "/"$SITE_NAME
    ;;
    cli)
        echo "Command to run (eg: help, serve help):"
        read jekyllcommand
        jekylldocker "$jekyllcommand"
    ;;
    stop)
        echo "stop"
        unset JEKYLL_VERSION
        env | grep JEKYLL
esac