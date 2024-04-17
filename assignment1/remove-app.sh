# Remove all traces of the created application
docker-compose down --volumes --rmi all

# Optionally, you can remove unused Docker objects
docker system prune -af
