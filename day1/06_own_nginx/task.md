# Build my-own image


## Write own html page and provide to nginx image

## Run nginx and access it by browser

## Create password file inside my-own folder

```password
very-secret-password
```

## Copy all files into image inside Dockerfile

```
COPY . /usr
```

Rebuild image and verify password is there

```
docker container run --rm <?> cat /password
```

## Remove other files copied using dockerignore

Create `.dockerignore`

```.dockerignore
*.md
<?>
```

1. Rebuild image
2. Password is no longe there

## Run container and verify new index.html page