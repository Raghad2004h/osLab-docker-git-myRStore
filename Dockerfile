# Stage 1: Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 2: Production stage
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
# مسح ملفات nginx الافتراضية لضمان نظافة المجلد
RUN rm -rf ./*
# نسخ الملفات من المرحلة الأولى
COPY --from=build /app .

# تثبيت curl للفحص
RUN apk add --no-cache curl

# التأكد من صحة المنفذ والرابط
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

EXPOSE 80