FROM apache/apisix:3.7.0-debian

# Root olarak çalış
USER root

# Yapılandırma dosyalarını kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Log dizinini oluştur ve izinleri ayarla
RUN mkdir -p /usr/local/apisix/logs && \
    chmod -R 755 /usr/local/apisix/logs && \
    chmod 644 /usr/local/apisix/conf/config.yaml && \
    chmod 644 /usr/local/apisix/conf/apisix.yaml

# APISIX binary'sine execute izni ver
RUN chmod +x /usr/local/apisix/apisix && \
    chmod +x /usr/local/openresty/bin/openresty

# APISIX portlarını expose et
EXPOSE 9080 9443 9091

# APISIX kullanıcısına geri dön (güvenlik için)
USER apisix

# APISIX'i başlat
CMD ["/usr/local/apisix/apisix", "docker-start"]
