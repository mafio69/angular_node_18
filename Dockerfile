# BASE IMAGE with an alias #
FROM node:18-bullseye-slim as node
RUN npm install -g @angular/cli && \
    mkdir -p /app
COPY ./Main /app
WORKDIR /app
RUN npm install
CMD [ "npm" ,"start" ]
EXPOSE 4200
#FROM nginx:alpine
#COPY --from=node /app/dist/demo-app /usr/share/nginx/html

# Install Angular CLI to run Build #
