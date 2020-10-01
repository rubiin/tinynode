# tinynode
This node image contains an additional tool inside (node-prune)[https://github.com/tj/node-prune] .node-prune is a small tool to prune unnecessary files from ./node_modules, such as markdown, typescript source files, and so on thus reducing the final image size.

# Usage

```dockerfile

FROM tiny-node:12.17.0-alpine

WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --production=true

# this does the trick
RUN node-prune




```

## Dockerhub
Link to [dockerhub](https://hub.docker.com/repository/docker/rubiin/tinynode)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)



