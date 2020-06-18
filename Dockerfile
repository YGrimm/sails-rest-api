# Use the official image as a parent image.
FROM node:10.15.3

# Set the working directory.
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

# Copy the file from your host to your current location.
COPY ./ /usr/src/app/

# Run the command inside your image filesystem.
RUN npm install -g sails express
RUN npm install mongodb
# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 1337

# Run the specified command within the container.
CMD [ "sails", "lift" ]
