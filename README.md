# logstash
使用logstash基础镜像，添加插件，构建满足自己使用的镜像


# 目录说明
【目录】logstash-input-oss-master: oss插件的源码。
【文件】Dockerfile：不解释
【文件】logstash.conf

# 更新说明
已经安装了 Filter插件 alter
已经安装了 Input插件 oss

# 启动命令
docker run -d -it --name logstash_oss -p 8080:9600 -v /opt/docker_volume/logstash_oss/logstash-input-oss-tomcat:/opt/logstash-input-oss/ -v /opt/docker_volume/logstash_oss/log_oss/:/tmp/ -v /opt/docker_volume/logstash_oss/config:/usr/share/logstash/config/  -v /opt/docker_volume/logstash_oss/pipeline/:/usr/share/logstash/pipeline/ com.hongkang-life/logstash-alter-oss:5.6.12 -f /usr/share/logstash/pipeline/logstash.conf --log.level=debug
