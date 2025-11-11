FROM apache/apisix:3.7.0-debian

# Yapılandırma dosyalarını kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Start script'i kopyala ve executable yap
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Log dizinini oluştur
RUN mkdir -p /usr/local/apisix/logs

# APISIX portlarını expose et
EXPOSE 9080 9443 9091

# Start script ile başlat
CMD ["/start.sh"]
