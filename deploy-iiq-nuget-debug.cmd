
set /p ApiKey=Enter the API key required for publishing to nuget.iqapps.io: 

cd src\NJsonSchema
del bin\Debug\*.nupkg

dotnet build
dotnet pack

dotnet nuget push bin\Debug\*.nupkg -k %ApiKey% -s http://nuget.iqapps.io/api/v2/package

cd ..\..
