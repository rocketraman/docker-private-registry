FROM registry

ADD ./setup-configs.sh /docker-registry/setup-configs.sh
ADD ./config.yml /docker-registry/config/config.yml

VOLUME ["/tmp/registry"]

CMD cd /docker-registry && ./setup-configs.sh && ./run.sh
