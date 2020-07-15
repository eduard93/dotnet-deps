# dotnet-deps

```
git clone https://github.com/eduard93/dotnet-deps.git
cd dotnet-deps
docker-compose build
docker-compose up -d
docker-compose exec iris iris session iris
write ##class(dc.Test).Test()
```

To build on host set `GWLIBDIR` environment variable to `<IRIS>/dev/dotnet/bin/Core21`
