FROM debian:bullseye-slim
#ARG RUNNER_VERSION = ""
#ARG DEBIAN_FRONTEND=noninteractive


RUN apt update -y && apt upgrade -y && useradd -m docker
RUN apt install -y --no-install-recommends \
wget jq build-essential python3 python3-pip zip unzip git openssh-server openssh-client curl 

RUN mkdir terraform && cd terraform && wget --no-check-certificate https://releases.hashicorp.com/terraform/1.12.2/terraform_1.12.2_linux_amd64.zip && unzip ./terraform_1.12.2_linux_amd64.zip && ln -s /terraform/terraform /usr/bin/terraform \
&& rm -rf ./terraform_1.12.2_linux_amd64.zip

RUN wget --no-check-certificate https://github.com/gruntwork-io/terragrunt/releases/download/v0.82.1/terragrunt_linux_386
RUN mv terragrunt_linux_386 /bin/terragrunt && chmod +x /bin/terragrunt
RUN cd /home/docker && mkdir action-runner && cd action-runner \
&& wget --no-check-certificate https://github.com/actions/runner/releases/download/v2.326.0/actions-runner-linux-x64-2.326.0.tar.gz \
&& tar xzf ./actions-runner-linux-x64-2.326.0.tar.gz \
&& rm -rf ./actions-runner-linux-x64-2.326.0.tar.gz \
&& ls -l ./bin \
&& chmod +x ./bin/installdependencies.sh

# RUN chmod +x ./bin/installdependencies.sh && ./bin/installdependencies.sh
RUN chown -R docker /home/docker