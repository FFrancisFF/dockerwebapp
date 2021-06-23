# Get base image from dockerhub
FROM java:8-jdk-alpine 

# Copy a specific file from your local directory to the image directory.
# For this instance, The first "." indicates your default directory from where this Dockerfile resides.
# The second "." is the root directory of the image.
COPY . .

# This is the directory where Docker will execute the commands specified on this Dockerfile.
WORKDIR .

# Defines the port which the application will use. 
# For documentation only, this will not necessarily open the specified port.
# Use the -p switch on this docker command to open the ports for your application.
# E.g. Docker run -p 80:80 YourImage
EXPOSE 9080

# This will execute the specified commands every time a container starts using this image.
ENTRYPOINT ["java", "-jar", "sample_jar.jar"]