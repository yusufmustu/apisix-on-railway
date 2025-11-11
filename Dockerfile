# Resmi Apache APISIX imajını temel al
FROM apache/apisix:3.9.1-debian

# Özel yapılandırma dosyamızı kopyala
COPY config.yaml /usr/local/apisix/conf/config.yaml

# APISIX'in rotaları ilk başlangıçta yüklemesi için
# stand-alone (bağımsız) modda kullanılacak apisix.yaml dosyasını kopyala
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml
