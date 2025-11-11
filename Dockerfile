# Resmi Apache APISIX imajını temel al
FROM apache/apisix:3.9.1-debian

# APISIX'in ana yapılandırma dosyasını kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml

# APISIX'in tüm route, upstream vb. ayarlarını okuyacağı YAML dosyasını kopyala
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml
