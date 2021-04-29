 Echo off
    set "textfile=userPrefs.mel"
    set "tempfile=userPrefs.mel.tmp"
    (for /f "delims=" %%i in (%textfile%) do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        set "line=!line: -iv "renderSetupEnable" 1= -iv "renderSetupEnable" 0!"
        echo(!line!
        endlocal
    ))>"%tempfile%"
    del %textfile%
    rename %tempfile%  %textfile%
    
    START C:\"Program Files"\Autodesk\Maya2019\bin\maya.exe