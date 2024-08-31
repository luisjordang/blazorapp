# Imagen base de runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Copiar los archivos de la aplicación
COPY . /app
WORKDIR /app

# Establecer la URL en la que la aplicación escuchará
ENV ASPNETCORE_URLS="http://0.0.0.0:5000"

# Ejecutar la aplicación
ENTRYPOINT ["dotnet", "BlazorApp.dll"]

