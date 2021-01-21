ARG logstash_version
FROM docker.elastic.co/logstash/logstash:${logstash_version}
RUN bin/logstash-plugin install logstash-input-kinesis
RUN bin/logstash-plugin install logstash-codec-cloudwatch_logs
