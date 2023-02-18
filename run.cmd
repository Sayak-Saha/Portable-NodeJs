@echo off
    :menu
    title Menu
    cls
    echo.
    echo.
    echo       I - Install and Update npm dependancies
    echo       C - Clear npm dependancies
    echo       R - Directly Run the app
    echo.
    echo.
    choice /c:IRC > nul
        if errorlevel 3 goto C
        if errorlevel 2 goto B
        if errorlevel 1 goto A
        echo Error... choice not installed
        goto end
    :A
        cls
        echo Installing npm dependancies
        title Installing npm dependancies
        @cmd /c pnode\npm install .\app
        echo.
        echo.
        pause
        goto menu
    :B
        cls
        echo Running the app
        title Running the app
        @cmd /c pnode\node app\index.js
        echo.
        echo.
        pause
        goto menu
    :C
        cls
        echo Clearing the dependencies and rest...
        title Clearing the dependencies and rest
        del package.json
        del package-lock.json
        rmdir /s /q node_modules
        echo.
        echo.
        pause
        goto menu
    :end
    pause >nul