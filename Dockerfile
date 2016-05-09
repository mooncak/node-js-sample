# Dockerfile to create a docker image
FROM 172.20.15.142/ufsoft/node:4.4.2

# Add files to the image
RUN mkdir -p /opt/nodejs
ADD . /opt/nodejs
WORKDIR /opt/nodejs

# Expose the container port
EXPOSE 5000

ENTRYPOINT ["node", "index.js"]
