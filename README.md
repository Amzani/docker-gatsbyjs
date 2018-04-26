# docker-gatsbyjs

GatsbyJS docker image - Alpine

- Latest nodeJS 9.11.1
- A very small image (thanks to Alpine)
- Can be used to bootstap a new gatsby website from scratch


## Usage

### Develop
```sh
docker run -it --rm -v $(pwd):/app -p 8000:8000 amzani/docker-gatsbyjs develop
```

### Build

```sh
docker run -it --rm -v $(pwd):/app -p 8000:8000 amzani/docker-gatsbyjs build
```

Production ready in `/public`


### Stage

```sh
docker run -it --rm -v $(pwd):/app -p 8000:8000 amzani/docker-gatsbyjs stage
```

### Install a new gatsbyjs plugin

```sh
docker run -it --rm -v $(pwd):/app -p 8000:8000 amzani/docker-gatsbyjs yarn add XXXXXX
```


### Deploy
TODO
