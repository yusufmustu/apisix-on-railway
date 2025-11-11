FROM apache/apisix:3.7.0-debian

# Yapılandırma dosyalarını kopyala
COPY --chown=apisix:apisix config.yaml /usr/local/apisix/conf/config.yaml
COPY --chown=apisix:apisix apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Log dizinini oluştur
RUN mkdir -p /usr/local/apisix/logs

# APISIX portlarını expose et
EXPOSE 9080 9443 9091

# ENTRYPOINT kullan (CMD yerine)
ENTRYPOINT ["/usr/local/apisix/apisix"]
CMD ["docker-start"]
