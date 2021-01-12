FROM node:14.14-alpine3.12

# create the app directory
RUN mkdir /app
WORKDIR /app
COPY . ./

# Install per dependencies and get ready for production
RUN npm ci && \
    rm -f .npmrc

# Start code
CMD ["npm", "run", "start"]
