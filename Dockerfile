# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Set environment variables for MongoDB
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=password
ENV MONGO_INITDB_DATABASE=mydatabase

# Create a directory for the MongoDB key file
RUN mkdir -p /etc/mongod

# Create a volume for MongoDB data
#VOLUME /data/db
#RUN mkdir -p /data/db/journal 
RUN chown -R mongodb:mongodb /data/

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017

# Create the journal directory with appropriate permissions

    
# Copy the MongoDB configuration file
#COPY mongod.conf /etc/mongod.conf

# Copy the MongoDB key file
#COPY mongod.key /etc/mongod/mongod.key

# Set permissions for the MongoDB key file
#RUN chmod 600 /etc/mongod/mongod.key

# Start MongoDB with custom configuration file
#CMD ["mongod", "--config", "/etc/mongod.conf"]
CMD ["mongod"]
