# arm-lap5

This in an arm Docker container to run a web server with apache and PHP5.


## How run it?


### Get the image

I can't make an automated build because it is not compatible with arm architecture. So you have to build the image or trust my pushed image (vsasyan/arm-lap5).


#### Use the pushed image

Pull the image

    docker pull vsasyan/arm-lap5


#### Build the image

Clone the git repository

    git clone https://github.com/VSasyan/arm-lap5.git

Build the image

    docker build -t vsasyan/arm-lap5 ./arm-lap5


### Run a container


Now we can run a container

    docker run -d -p 8080:80 vsasyan/arm-lap5

Go to : [http://your_device:8080](http://your_device:8080), you should get :

![You should get](https://raw.githubusercontent.com/VSasyan/arm-lap5/master/doc/screen.png "You should get")


## How to configure it?


Fork or copy this repository.


### PHP configuration

You can personnalize `php.ini` file to modify the php configuration.


### Web site files

Put all your web site files in the `web_site` folder.

NOTE : The server roor directory in `web_site/www/html`.


### Apache configuration

Coming soon...
