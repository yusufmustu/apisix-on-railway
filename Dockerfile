#FROM apache/apisix:3.12.0-debian 
FROM apache/apisix:dev-amd64

# kopyala
COPY conf/apisix.yaml /usr/local/apisix/conf/apisix.yaml
COPY conf/config.yaml /usr/local/apisix/conf/config.yaml

# APISIX standalone modu için env (Railway'de de ayarlayacağız)
ENV APISIX_STAND_ALONE=true

# expose (Railway port konfigürasyonunda 9080 seç)
EXPOSE 9080

# start APISIX (image'ın default start komutunu kullanalım)
CMD ["sh", "-c", "apisix start && tail -f /usr/local/apisix/logs/error.log"]
