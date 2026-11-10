FROM nginx:1.27-alpine

# Trang tĩnh duy nhất; Three.js và font được tải từ CDN khi chạy trong trình duyệt
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html tropical-island-weather.html /usr/share/nginx/html/

EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -q --spider http://127.0.0.1/ || exit 1
