# Base image olarak Python kullanıyoruz
FROM python:3.8-slim

# Çalışma dizini oluşturuluyor
WORKDIR /app

# Gerekli dosyaları konteynere kopyalıyoruz
COPY . /app

# Gerekli bağımlılıkları kuruyoruz
RUN pip install -r requirements.txt

# Uygulamayı başlatıyoruz
CMD ["python", "app.py"]