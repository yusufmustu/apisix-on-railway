# APISIX Configuration

Bu repository APISIX API Gateway yapılandırma dosyalarını içerir.

## Kurulum

1. Repository'yi klonlayın:
```bash
   git clone https://github.com/KULLANICI_ADINIZ/apisix-config.git
   cd apisix-config
```

2. Docker Compose ile başlatın:
```bash
   docker-compose up -d
```

3. Log'ları kontrol edin:
```bash
   docker-compose logs -f
```

## Test Etme
```bash
# Hello endpoint'i test et
curl http://localhost:9080/api/hello

# Users endpoint'i test et
curl http://localhost:9080/api/users/1
```

## Yapılandırma Güncelleme

1. `apisix.yaml` dosyasını düzenleyin
2. Değişiklikleri commit edin
3. APISIX'i yeniden başlatın:
```bash
   docker-compose restart apisix
```
