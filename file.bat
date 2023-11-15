
@echo off
color 2
echo ==================================================================================================
echo ===================================================================================================
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                              R5FS PROCCESS FILE V1                                             *
echo **                         (Image Processing AND Move Files)                                      *
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                         Press Any Key to Start Processing ...                                  *
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================



pause > nul

set years=2016 2017 2018 2019 2020 2021 2022 2023
set dtb=%DATE:~0,2%/%DATE:~3,2%/%DATE:~6,4% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%

echo.
echo [+] Starting program at  %dtb% ...

(for %%z in (%years%) do (

  echo ***Processing files of year %%z ...
      For %%x in (*.jpg *.jpeg *.png) do (
         echo %%x | findstr "IMG-%%z" >nul
           if errorLevel 1 (
              echo 1 > nul
             ) else (
			 if exist yourfilename (
			     echo 1 > null
				 ) else (
				 mkdir %%z
				 )
			 
             echo "[+]Found %%x"
             move "%%x" %%z
             )
      )
))

echo.
echo [-]Finished Process
echo.
echo [*]Press any key to exit...
pause > nul

exit