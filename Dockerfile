FROM node:8

WORKDIR /projects/cites_backend

COPY ./ ./

RUN npm install

EXPOSE 3003 3003

CMD ["/bin/bash"]
