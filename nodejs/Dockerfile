FROM debian

# Install libraries
RUN apt-get update && apt-get install -y \
	curl \
	python \
	make \
	g++

# Get the latest node.js and npm versions and install
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get update && apt-get install -y \
	nodejs

# Copy source code
COPY ./src /var/www/api

# Install dependencies
RUN cd /var/www/api; npm install

EXPOSE 5000
CMD ["node", "/var/www/api/server.js"]
