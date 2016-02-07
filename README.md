

Add your symfony app to the 'symfony' folder and run:

    docker-compose up

The default database credentials are:

    database: db
    user: root 
    password: a

Run nodejs commands/gulp using:

    docker run -it -v "$(pwd)/symfony:/data" -w="/data" --rm docker_nodejs npm install
    docker run -it -v "$(pwd)/symfony:/data" -w="/data" --rm docker_nodejs gulp build
