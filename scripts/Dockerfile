# FROM debian:bullseye-slim
FROM --platform=linux/amd64 debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

# Create user
RUN apt update -y && apt upgrade -y && useradd -m docker

# Install dependencies
RUN apt install -y --no-install-recommends \
    wget jq build-essential python3 python3-pip zip unzip git \
    openssh-server openssh-client curl ca-certificates

# Install Terraform
WORKDIR /opt/terraform
RUN wget --no-check-certificate https://releases.hashicorp.com/terraform/1.12.2/terraform_1.12.2_linux_amd64.zip && \
    unzip terraform_1.12.2_linux_amd64.zip && \
    mv terraform /usr/local/bin/terraform && \
    chmod +x /usr/local/bin/terraform && \
    rm terraform_1.12.2_linux_amd64.zip

# Install Terragrunt
WORKDIR /tmp
RUN wget --no-check-certificate https://github.com/gruntwork-io/terragrunt/releases/download/v0.82.1/terragrunt_linux_386 && \
    mv terragrunt_linux_386 /usr/local/bin/terragrunt && \
    chmod +x /usr/local/bin/terragrunt

# Set up GitHub Actions runner
WORKDIR /home/docker/actions-runner
RUN wget --no-check-certificate https://github.com/actions/runner/releases/download/v2.326.0/actions-runner-linux-x64-2.326.0.tar.gz && \
    tar xzf actions-runner-linux-x64-2.326.0.tar.gz && \
    rm actions-runner-linux-x64-2.326.0.tar.gz

# Install dependencies required by GitHub runner
RUN chmod +x ./bin/installdependencies.sh && ./bin/installdependencies.sh

# Set ownership to docker user
RUN chown -R docker /home/docker

# Copy entrypoint
COPY entrypoint.sh /home/docker/actions-runner/
RUN chmod +x /home/docker/actions-runner/entrypoint.sh

# Set working dir and user
USER docker
WORKDIR /home/docker/actions-runner

ENTRYPOINT ["./entrypoint.sh"]
