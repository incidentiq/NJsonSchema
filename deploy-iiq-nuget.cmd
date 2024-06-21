
:: set /p ApiKey=Enter the API key required for publishing to nuget.iqapps.io: 

cd src\NJsonSchema
del bin\Release\*.nupkg

dotnet build -c Release
dotnet pack

dotnet nuget push bin\Release\*.nupkg --source iiq-local-artifacts --api-key az --skip-duplicate --interactive

cd ..\..
