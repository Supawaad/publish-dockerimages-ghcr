# download image
FROM alpine:latest

RUN apk add --no-cache bash

#สร้าง Directo ชือ APP
WORKDIR /app

#copy file จากเครื่องเราไปวางใน docker ให้ด้วย
COPY entrypoint.sh /app/

#ทำให้ sh เป็น excecutable
RUN chmod +x /app/entrypoint.sh

#สร้างขึ้นมาแล้วเนี่ยให้มันทำอะไร ก็คือให้รัน script.sh 
ENTRYPOINT [ "/app/entrypoint.sh" ]


#build manual docker build . -t platest . คืออยู๋ตรงนี้ ถ้าอยู่ที่อื่น คือ ./;;e