FROM node:8

WORKDIR /projects/cites

COPY ./ ./

RUN npm install

CMD ["/bin/bash"]