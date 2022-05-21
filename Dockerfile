FROM Ubuntu AS base
WORKDIR /app
COPY *.csproj ./app
RUN dotnet restore 
COPY . .
RUN Dotnet build -o 


FROM Ubuntu 
COPY --from=base 
ENTRYPOINT ["Dotnet" "Run" ]


