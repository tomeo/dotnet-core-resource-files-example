Using Resource files to link to files doesn't seem to work the same way when using dotnet cli and running dotnet via Docker.

1. Run
```
dotnet run --project ResourceFilesExample\ResourceFilesExample.csproj
```
which has, what I consider, the correct output
```
Resource file test
{
  "test": "test"
}
```

2. Run
```
docker build -t rfe .
docker run rfe
```
which has, what I consider, incorrect output
```
Resource file test

Unhandled Exception: System.InvalidCastException: Unable to cast object of type 'System.String' to type 'System.Byte[]'.
   at ResourceFilesExample.Resource.get_example() in /app/ResourceFilesExample/Resource.Designer.cs:line 68
   at ResourceFilesExample.Program.Main(String[] args) in /app/ResourceFilesExample/Program.cs:line 10
```