# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Create the journal directory with appropriate permissions
RUN chown -R mongodb:mongodb /data/
    

# Start MongoDB
CMD ["mongod"]
