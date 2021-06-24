FROM node:lts
WORKDIR /workdir
COPY . .
RUN npm install -g http-server
EXPOSE 80
CMD ["http-server", "-p", "80"]