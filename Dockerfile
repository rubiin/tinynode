FROM node:latest
# Install prerequisites
RUN apt-get update && apt-get install -y \
curl
RUN curl -sf https://gobinaries.com/tj/node-prune | sh

