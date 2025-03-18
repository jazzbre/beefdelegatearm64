@echo off

set BEEFBUILD=BeefBuild.exe

pushd CrashTest1 
echo Building ARM Debug
%BEEFBUILD% -config=Debug -platform=armv7-none-linux-androideabi23
echo Building ARM64 Debug
%BEEFBUILD% -config=Debug -platform=aarch64-none-linux-android23
echo Building ARM Release
BeefBuild -config=Release -platform=armv7-none-linux-androideabi23
echo Building ARM64 Release
BeefBuild -config=Release -platform=aarch64-none-linux-android23
popd 

echo All done!
pause