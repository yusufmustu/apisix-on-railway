FROM apache/apisix:3.7.0-debian

# Yapılandırma dosyalarını doğru konuma kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Port expose
EXPOSE 9080 9443 9180

# APISIX varsayılan olarak standalone modda başlar
# Doğrudan nginx'i başlatıyoruz
CMD ["/usr/bin/apisix", "docker-start"]