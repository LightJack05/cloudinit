# HA-Proxy configuration

. ./variables.sh

sed -i "s/{{HA_PROXY_EXT_PORT}}/$HA_PROXY_EXT_PORT/" /etc/haproxy/haproxy.cfg
sed -i "s/{{HA_PROXY_INT_PORT}}/$HA_PROXY_INT_PORT/" /etc/haproxy/haproxy.cfg

for i in "${!HA_PROXY_HOST_ADDR[@]}"; do
    echo "    server srv$i ${HA_PROXY_HOST_ADDR[$i]}:${HA_PROXY_INT_PORT} check" >> /etc/haproxy/haproxy.cfg
done

systemctl restart haproxy 
