# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Create the journal directory with appropriate permissions
RUN mkdir -p /data/db/journal && \
    chown -R mongodb:mongodb /data/db

# Start MongoDB
CMD ["mongod"]
