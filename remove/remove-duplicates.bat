
@echo off
color 2
echo ==================================================================================================
echo ===================================================================================================
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                                                                                                *
echo **                              R5FS Remove Duplicates                                           *
echo **                         (Image Removing Files Duplicated)                                   *
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

set dtb=%DATE:~0,2%/%DATE:~3,2%/%DATE:~6,4% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%

echo.
echo [+] Starting program at  %dtb% ...

For %%x in (*.jpg *.jpeg *.png) do (
  echo %%x | findstr "Copia" >nul
  if errorLevel 1 (
    echo 1 > nul
    ) else (
      echo "[+]Removing %%x"
	  del "%%x"
      )
)

echo.
echo [-]Finished Process
echo.
echo [*]Press any key to exit...
pause > nul

exit