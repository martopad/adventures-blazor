FROM centos:7.7.1908

RUN rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm && \
    yum install -y \
        dotnet-sdk-3.1 \
        aspnetcore-runtime-3.1 \
        dotnet-runtime-3.1

ENV ASPNETCORE_URLS "https://+;http://+"

COPY entrypoint.sh /bin/entrypoint

ENTRYPOINT ["entrypoint"]