# Inception

- Description

This project aims to set up a small infrastructure composed of different services, following specific rules. The entire project is designed to be executed within a virtual machine using Docker Compose.

Each service is represented by a dedicated container, and the Docker images for the containers have the same name as their corresponding service. To ensure performance, the containers are built using the penultimate stable version of Debian

Please note that using pre-built Docker images and services like DockerHub is forbidden, except for Debian base images.

- Installation and Usage
  ```
  Clone the repository.
  Navigate to the project directory.
  Execute the Makefile to build the Docker images using the Dockerfiles provided for each service.
  Modify the docker-compose.yml file as needed.
  Run docker-compose up to start the infrastructure.
  Access the services using the appropriate URLs and ports.
  ```

- Acknowledgements
  
Special thanks to the creators and maintainers of Docker, NGINX, WordPress, and MariaDB for their excellent tools and services.


