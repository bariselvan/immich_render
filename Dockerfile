# Immich için temel Docker imajı
FROM node:14-alpine

# Çalışma dizinini ayarla
WORKDIR /app

# Bağımlılıkları yükle
COPY package.json ./
RUN npm install

# Uygulamayı kopyala
COPY . .

# Uygulamayı başlat
CMD ["npm", "start"]