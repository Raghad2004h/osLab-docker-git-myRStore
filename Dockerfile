# Stage 1: Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# If you have a build step, uncomment the next line
# RUN npm run build

# Stage 2: Production stage
FROM nginx:alpine
COPY --from=build /app /usr/share/nginx/html
