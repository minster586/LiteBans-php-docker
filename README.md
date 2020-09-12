# LiteBans-php-docker
Docker image for litebans-php

## Usage

From the CLI:  
```bash
docker run -d -p 8080:80 --name litebans dada513/litebans-php:latest
```
This command will run litebans-php and expose it on port 8080.  
Then, you should import the [`settings.php`](https://gitlab.com/ruany/litebans-php/-/blob/master/inc/settings.php) file to the container.
```bash
docker cp /path/to/settings.php litebans:/var/www/html/inc/settings.php
```
Now you should be able to access your litebans-php installation at `http://yourip:8080`

## Database notes
To access a database hosted on the host machine from the docker container, see [this stackoverflow post](https://stackoverflow.com/q/31324981/13040473)
