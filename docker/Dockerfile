FROM node:lts-alpine3.12

LABEL AUTHOR="none" \
      VERSION=0.1.4
ARG KEY="-----BEGIN OPENSSH PRIVATE KEY-----\nb3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW\nQyNTUxOQAAACDO9dyYFP2//p6qsesO27Or+pu94D5/0CFeWF0GKIpjtgAAAJCkmvt9pJr7\nfQAAAAtzc2gtZWQyNTUxOQAAACDO9dyYFP2//p6qsesO27Or+pu94D5/0CFeWF0GKIpjtg\nAAAED11DpH/K5HqY82uuIIgomJms94sscM9D+BPhGNJArDrM713JgU/b/+nqqx6w7bs6v6\nm73gPn/QIV5YXQYoimO2AAAADGpkX2x4a2JhY2t1cAE=\n-----END OPENSSH PRIVATE KEY-----"

ENV DEFAULT_LIST_FILE=crontab_list.sh \
    CUSTOM_LIST_MERGE_TYPE=append \
    COOKIES_LIST=/scripts/logs/cookies.list \
    REPO_URL=git@github.com:sup3root/jd.git \
    REPO_BRANCH=main

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash tzdata git moreutils curl jq openssh-client build-base vim\
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && mkdir -p /root/.ssh \
    && echo -e $KEY > /root/.ssh/id_ed25519 \
    && chmod 600 /root/.ssh/id_ed25519 \
    && ssh-keyscan github.com > /root/.ssh/known_hosts \
    && git clone -b $REPO_BRANCH $REPO_URL /scripts \
    && cd /scripts \
    && mkdir logs \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install \
    && cp /scripts/docker/docker_entrypoint.sh /usr/local/bin \
    && chmod +x /usr/local/bin/docker_entrypoint.sh

WORKDIR /scripts

ENTRYPOINT ["docker_entrypoint.sh"]

CMD [ "crond" ]
