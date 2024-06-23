# 容器 Python 版本
FROM python:3.12

# 建立一個區域 app/
WORKDIR /app

# 目前的路徑裡的文件，複製到容器 /app 裡
COPY . .

# 在 image 建置時執行安裝套件的動作
RUN pip install --no-cache-dir -r requirements.txt

# 設定 PORT
EXPOSE 8888

# 執行以下指令
CMD ["python", "src/main.py"]
