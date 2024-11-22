FROM gcr.io/google-appengine/nodejs
WORKDIR /grid
RUN git clone https://github.com/k8robotics/launchpad-test.git /grid
RUN rm apps/grid
EXPOSE 8080
RUN npm i
RUN npm install -g @gridspace/app-server
RUN ln -s .. apps/grid
CMD [ 'gs-app-server' ]
