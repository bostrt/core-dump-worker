FROM registry.access.redhat.com/ubi7/ubi

RUN yum install -y gcc && yum clean all
COPY main.c .
RUN gcc -o main main.c

FROM registry.access.redhat.com/ubi7/ubi
COPY --from=0 main .
ENV TEST 60

CMD ["./main"]