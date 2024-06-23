FROM python:3.12

# 建立一個區域 app/
WORKDIR /app

# 目前的路徑裡的文件，複製到容器 /app 裡
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["python", "src/main.py"]