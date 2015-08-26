### Using Nginx and Node.js with Docker ###

This example wil be using Docker to create a Nginx web server and a Nodejs server. Nginx will be configured to use the Nodejs server as a proxy to a specfic url.

#### Directory Structure ####
```
nodejs/
	Dockerfile
	src/
		package.json
		server.js
web/
	src/
		public/
			index.html
config/
	nginx.conf

scripts/
	ngnix.sh
	node.sh
```
The **nodejs** directory contains a Dockerfile to create a Docker image and a src directory that stores the nodejs server javascript file and package.json file.

The **web** directory contains the static web files used by the Nginx web server.

The **config** directory contains the custom Nginx configuration file I’ll be using for creating the Nginx Docker container.

The **scripts** directory contains bash shell scripts to start the nginx and nodejs containers.

For more details about this example, checkout this [article](http://www.schempy.com/2015/08/25/docker_nginx_nodejs/) I wrote.