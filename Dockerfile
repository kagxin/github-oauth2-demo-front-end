# builder image
FROM node:lts AS builder
WORKDIR /build
COPY . /build
RUN npm --registry=https://registry.npm.taobao.org install && npm run build

FROM nginx:alpine AS vbs9010_web
COPY --from=builder /build/dist/ /app/www/oauth2/
COPY --from=builder /build/nginx.conf /etc/nginx/conf.d/oauth2.conf