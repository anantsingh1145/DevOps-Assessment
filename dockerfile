FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

## To create the Image run the below command :-
## docker build -t nodejs-image .

## To run any container from image use the below command :- 
## docker run -p 3000:3000 nodejs-image
