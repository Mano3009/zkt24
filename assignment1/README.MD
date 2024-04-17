# Web Application Deployment using Docker

## Introduction
This repository contains scripts and configuration files for deploying a complete web application using Docker. The application consists of multiple services, each running in its own Docker container, and utilizes persistent volumes for storing data.

## Prerequisites
Before deploying the application, ensure that the following software is installed on your system:
- Docker
- Docker Compose (if using)

## Application Overview
The web application consists of the following services:
- Frontend: Provides the user interface
- Backend: Handles backend logic and data storage

## Configuration
### Docker Compose
The `docker-compose.yaml` file defines the services, networks, and volumes used by the application.

### Persistent Volumes
A named volume is used to persist data for the backend service.

## Container Configuration
Each service is configured using environment variables defined in the `Dockerfile` or passed through the `docker-compose.yaml` file.

## Services
- **Frontend**: Runs on port 5000 and communicates with the backend service.
- **Backend**: Listens on port 80 and provides API endpoints for the frontend.

## Usage
1. **Prepare the Application**: Execute the `prepare-app.sh` script to build Docker images and create necessary configurations, networks, and volumes.
2. **Start the Application**: Run the `start-app.sh` script to start all service containers. The application will be available at http://localhost:5000.
3. **Stop the Application**: Use the `stop-app.sh` script to stop all services gracefully.
4. **Remove the Application**: Execute the `remove-app.sh` script to delete all traces of the created application.

## Example
```bash
# Prepare the application
./prepare-app.sh

# Start the application
./start-app.sh

# Stop the application
./stop-app.sh

# Remove the application
./remove-app.sh
