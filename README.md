# arm-lap5

This in an arm Docker container to run a web server with apache and PHP5.

## How run it?

Pull the image:

    docker pull vsasyan/arm-lap5

Run a container:

    docker run -p 8080:80 vsasyan/arm-lap5

Go to : [http://your_device:8080](http://your_device:8080)

## How to configure it?

Fork or copy this repository.

### PHP configuration

You can personnalize `php.ini` file to modify the php configuration.

### Web site files

Put all your web site files in the `web_site` folder.

NOTE : The server roor directory in `web_site/www/html`.

### Apache configuration

Coming soon...
