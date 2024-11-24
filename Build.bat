MSBuild.exe IdentityServer4.sln -t:restore -p:RestorePackagesConfig=true
msbuild IdentityServer4.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe IdentityServer4.sln -m /property:Configuration=%Configuration% 
git add -A
git commit -a --allow-empty-message -m ''
git push