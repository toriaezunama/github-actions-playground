# github-actions-playground

# Build

## Development

`docker build --target development -t github-actions-playground:development .`

## Production

`docker build --target production -t github-actions-playground:production .`

# Run

## Development

`docker run -p 3000:3000 --rm --name gap -d github-actions-playground:development`

### Test

`docker run --rm --name gap-unit-tests github-actions-playground:development test`

## Production

`docker run -p 3000:3000 --rm --name gap -d github-actions-playground:production`

# Stop

`docker stop gap`

# Liveness

`curl localhost:3000`
