FROM microsoft/dotnet:sdk AS build-env
WORKDIR /DockerSpecialFolders

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:runtime
WORKDIR .
COPY --from=build-env /DockerSpecialFolders/out .
ENTRYPOINT ["dotnet", "DockerSpecialFolders.dll"]