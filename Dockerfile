# Stage 1: Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 2: Production stage
FROM nginx:alpine
# الانتقال لمجلد nginx
WORKDIR /usr/share/nginx/html
# مسح أي ملفات قديمة لضمان النظافة
RUN rm -rf ./*
# نسخ المحتويات مباشرة للمجلد الحالي
COPY --from=build /app .

# تثبيت curl ضروري جداً لنجاح الأكشن
RUN apk add --no-cache curl

# فحص الحالة
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

EXPOSE 80