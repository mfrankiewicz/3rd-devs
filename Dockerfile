FROM node:23

ADD ./package.json ./package.json
ADD ./package-lock.json ./package-lock.json
ADD ./bun.lockb ./bun.lockb

SHELL ["/bin/bash", "-c"]

RUN curl -fsSL https://bun.sh/install | bash

RUN source /root/.bashrc && bun install && yarn global add promptfoo@0.93 --verbose

EXPOSE 3000
EXPOSE 15500

ENTRYPOINT ["bash"]