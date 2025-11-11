FROM apache/apisix:3.7.0-debian

USER root

# Yapılandırma dosyalarını kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Gerekli dizinleri oluştur
RUN mkdir -p /usr/local/apisix/logs && \
    mkdir -p /var/run/apisix && \
    chown -R apisix:apisix /usr/local/apisix/logs && \
    chown -R apisix:apisix /var/run/apisix && \
    chown -R apisix:apisix /usr/local/apisix/conf

# APISIX'i initialize et
RUN /usr/local/apisix/apisix init && \
    /usr/local/apisix/apisix init_etcd

USER apisix

EXPOSE 9080 9443 9091

# OpenResty'yi foreground'da başlat
CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;", "-p", "/usr/local/apisix", "-c", "/usr/local/apisix/conf/nginx.conf"]
