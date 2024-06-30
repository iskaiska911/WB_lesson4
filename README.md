start docker 

docker run -d -e CLICKHOUSE_USER=admin123 -e CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT=1 -e CLICKHOUSE_PASSWORD=pwd123 -p 8083:8123 -p 9900:9000 \
-v C:/Users/almakarenkov/WB_lesson4/ch_data:/var/lib/clickhouse/ \
-v C:/Users/almakarenkov/WB_lesson4/ch_logs:/var/log/clickhouse-server/ \
--name click_server --ulimit nofile=262144:262144 clickhouse/clickhouse-server



![image](https://github.com/iskaiska911/WB_lesson4/assets/31636303/738c0d20-01df-4863-a77d-118142ad7ad1)

