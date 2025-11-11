FROM apache/apisix:3.7.0-debian

# Yapılandırma dosyalarını kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Port expose
EXPOSE 9080 9443 9180

# APISIX'i başlat
CMD ["sh", "-c", "/usr/local/apisix/bin/apisix start && tail -f /usr/local/apisix/logs/access.log"]