C:\bin\swigwin-4.1.1\swig.exe -python hecdss.i


call "%%ONEAPI_ROOT%%\setvars.bat" intel64 vs2022

cl.exe /LD /IC:\Programs\WPy64-3771\python-3.7.7.amd64\include /I"path_to_your_header" /IC:\bin\swigwin-4.1.1 /Fe_hecdss_py.dll /D_USRDLL hecdss_wrap.c 

