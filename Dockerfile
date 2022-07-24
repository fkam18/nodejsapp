FROM node:12
# To Create nodejsapp directory
WORKDIR /nodejsapp
# To Install All dependencies
COPY package.json ./
COPY tsconfig.json ./
COPY app/index.ts ./app/index.ts
RUN npm install
RUN npm install typescript
RUN npm run build
# To copy all application packages
# Expose port 3000 and Run the server.js file to start node js application
EXPOSE 3000
CMD [ "node", "app/index.js" ]
