cd src\Storage
MSBuild.exe IdentityServer4.Storage.sln -t:restore -p:RestorePackagesConfig=true
msbuild IdentityServer4.Storage.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe IdentityServer4.Storage.sln -m /property:Configuration=%Configuration% 
cd ..\IdentityServer4
MSBuild.exe IdentityServer4.sln -t:restore -p:RestorePackagesConfig=true
msbuild IdentityServer4.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe IdentityServer4.sln -m /property:Configuration=%Configuration% 
cd ..\EntityFramework.Storage
MSBuild.exe IdentityServer4.EntityFramework.Storage.sln -t:restore -p:RestorePackagesConfig=true
msbuild IdentityServer4.EntityFramework.Storage.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe IdentityServer4.EntityFramework.Storage.sln -m /property:Configuration=%Configuration% 
cd ..\EntityFramework
MSBuild.exe IdentityServer4.EntityFramework.sln -t:restore -p:RestorePackagesConfig=true
msbuild IdentityServer4.EntityFramework.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe IdentityServer4.EntityFramework.sln -m /property:Configuration=%Configuration% 
cd ..\AspNetIdentity
MSBuild.exe IdentityServer4.AspNetIdentity.sln -t:restore -p:RestorePackagesConfig=true
msbuild IdentityServer4.AspNetIdentity.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe IdentityServer4.AspNetIdentity.sln -m /property:Configuration=%Configuration% 
cd ..\..
git add -A
git commit -a --allow-empty-message -m ''
git push