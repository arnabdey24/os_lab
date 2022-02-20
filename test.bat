@echo off
set COUNT=0
for %%x in (%*) do set /A COUNT+=1
echo COUNT = %COUNT%
pause