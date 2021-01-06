FROM ubuntu:latest
# To get started on https://docs.crp.kypo.muni.cz/installation-guide/base-infrastructure/
RUN apt-get -y update && apt-get -y install python3-pip openssh-client git ansible openssl bash jq
RUN pip3 install pipenv yq jinja2 python-openstackclient
RUN git clone https://gitlab.ics.muni.cz/muni-kypo-crp/devops/kypo-crp-openstack-base.git
RUN cd kypo-crp-openstack-base && pipenv install
