FROM node:19.0-bullseye-slim
WORKDIR /workdir
COPY . .
RUN apt update && apt full-upgrade --yes
RUN npm install --global http-server
EXPOSE 80
CMD ["http-server", "./public_html", "--port", "80"]
