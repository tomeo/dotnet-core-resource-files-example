FROM microsoft/dotnet:2.1.403-sdk AS builder

ENV APP_DIR=/app
ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true
ENV NUGET_XMLDOC_MODE=skip
RUN mkdir -p $APP_DIR

WORKDIR $APP_DIR
ADD . $APP_DIR
RUN dotnet build -c Release ResourceFilesExample.sln

FROM microsoft/dotnet:2.1.5-runtime
WORKDIR /app

COPY --from=builder /app/ResourceFilesExample/bin/Release/netcoreapp2.1 .
ENTRYPOINT ["dotnet", "ResourceFilesExample.dll"]   