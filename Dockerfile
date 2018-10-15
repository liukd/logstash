# Logstash  + logstash-input-oss  plugin

# Base image
# FROM docker.elastic.co/logstash/logstash:5.5.3 unavailable 一直报ENV[TMPDIR]
# From docker.elastic.co/logstash/logstash:6.4.2 unavailable jruby为1.9 missing psych
From docker.elastic.co/logstash/logstash:5.6.12
# Maintainer
MAINTAINER kedong_liu@163.com

# 不知道有没有起作用，估计没用
ENV TMPDIR=/opt/logstash-input-oss/ \
  TMP=/opt/logstash-input-oss/

COPY logstash-input-oss-1.0.0.gem  /opt/logstash-input-oss-1.0.0.gem

RUN logstash-plugin install logstash-filter-alter \
 && logstash-plugin install /opt/logstash-input-oss-1.0.0.gem