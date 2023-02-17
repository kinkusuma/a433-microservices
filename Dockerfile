# menggunakan base image node versi 14
FROM node:14
# /app sebagai working directory
WORKDIR /app
# menyalin seluruh source code
COPY . .
# mengatur environment variable
ENV NODE_ENV=production DB_HOST=item-db
# menjalankan perintah install dan build app
RUN npm install --production --unsafe-perm && npm run build
# mengexpose port yang digunakan
EXPOSE 8000
# menjalankan aplikasi
CMD ["npm", "start"]
