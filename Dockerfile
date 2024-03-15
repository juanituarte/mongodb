# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Set environment variables for MongoDB
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=password
ENV MONGO_INITDB_DATABASE=mydatabase

# Expose MongoDB default port
EXPOSE 27017

# Copy the MongoDB configuration file
COPY mongod.conf /etc/mongod.conf

# Run MongoDB with custom configuration file
CMD ["mongod", "--config", "/etc/mongod.conf"]
