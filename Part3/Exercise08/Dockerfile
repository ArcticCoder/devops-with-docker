FROM node:16.19-alpine3.16 as build-stage
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
ENV REACT_APP_BACKEND_URL=http://devops:8080
RUN npm install && npm run build

FROM node:16.19-alpine3.16
EXPOSE 5000
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/build /usr/src/app/build
RUN npm install -g serve && \
	adduser -D appuser 
USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]
