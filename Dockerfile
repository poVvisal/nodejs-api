FROM node:18-alpine
WORKDIR /app/sonarqube_proj
COPY sonarqube_proj/package*.json ./
RUN npm install
COPY sonarqube_proj/ ./
EXPOSE 3000
CMD ["npm", "start"]