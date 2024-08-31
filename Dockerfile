#Imagen de runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0
COPY /app ./
WORKDIR /app
COPY --from=build-env /app/publish .

# Establece la URL en la que la aplicación escuchará
ENV ASPNETCORE_URLS="http://0.0.0.0:5000"

ENTRYPOINT ["dotnet", "BlazorApp.dll"]
