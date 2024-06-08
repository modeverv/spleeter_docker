FROM python:3.7

# 必要なライブラリをインストール
RUN apt-get update && apt-get install -y \
    libsndfile1 ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN pip install spleeter

ENTRYPOINT ["tail", "-f", "/dev/null"]
