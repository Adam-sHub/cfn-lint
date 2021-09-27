FROM python:3.8-alpine

RUN pip install cfn-lint
RUN pip install pydot
RUN pip3 install awscli --upgrade --quiet
RUN pip3 install cfn-lint --quiet
ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
