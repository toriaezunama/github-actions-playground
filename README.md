# github-actions-playground

# Build

`docker build -t github-actions-playground:latest .`

# Run

`docker run -p 3000:3000 --rm --name gap -d github-actions-playground:latest`
`docker stop gap`

# Liveness

`curl localhost:3000`
