FROM fluent/fluentd

RUN fluent-gem install -q fluent-plugin-forest && \
    fluent-gem install -q fluent-plugin-s3

USER root
RUN mkdir -p /fluentd/buffer && \
    chown fluent:fluent /fluentd/buffer

EXPOSE 24224 5140

USER fluent
