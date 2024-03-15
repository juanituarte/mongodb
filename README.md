# mongodb
RatKillers - Mongodb

# MongoDB Docker Image for OpenShift

[![MongoDB Icon](https://webassets.mongodb.com/_com_assets/cms/mongodb_logo1-76twgcu2dm.png)](https://www.mongodb.com/)

This repository contains a Dockerfile for building a MongoDB image suitable for deployment on OpenShift.

## Usage

### Building the Docker Image

To build the MongoDB Docker image, run the following command:

```bash
docker build -t mongodb-openshift .
```

## Running the MongoDB Container
To run the MongoDB container, use the following command:

bash
Copy code
```bash
docker run -d --name mongodb -p 27017:27017 mongodb-openshift
```
This command will start the MongoDB container in detached mode and expose port 27017.

## Environment Variables
The following environment variables are available to customize the MongoDB configuration:

MONGO_INITDB_ROOT_USERNAME: Username for the MongoDB root user (default: admin).
MONGO_INITDB_ROOT_PASSWORD: Password for the MongoDB root user (default: password).
MONGO_INITDB_DATABASE: Name of the initial database to be created (default: mydatabase).
You can set these variables as needed when running the Docker container.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or create a pull request.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
