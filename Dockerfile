# 使用 Go 官方镜像作为基础镜像
FROM golang:1.24

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器内
COPY . .

# 下载依赖
RUN go mod tidy

# 编译 Go 程序
RUN go build -o telegram-deepseek-bot main.go

# 设置运行环境变量（可选）
ENV TELEGRAM_BOT_TOKEN="7816069570:AAGAux0lPAa6T2DxWvXGbimObfwWzBfJm-k"
ENV DEEPSEEK_TOKEN="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"
ENV CUSTOM_URL=""
ENV DEEPSEEK_TYPE=""
ENV VOLC_AK=""
ENV VOLC_SK=""
ENV DB_TYPE=""
ENV DB_CONF=""

# 运行程序
CMD ["./telegram-deepseek-bot"]
