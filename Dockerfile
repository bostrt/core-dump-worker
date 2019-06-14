FROM registry.access.redhat.com/ubi7/ubi

RUN yum install -y gdb && yum clean all

ENV SERVICE_NAME ""
ENV SERVICE_PORT ""

COPY run.sh .

CMD ["./run.sh"]