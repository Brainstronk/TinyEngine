
function assertInstalled()
{
    for var in "$@"; do
        if ! which $var &> /dev/null; then
            echo "Install $var!"
            exit 1
        fi
    done
}


if [[ "$OSTYPE" == "linux-gnu" ]]; then
CC=x86_64-w64-mingw32-gcc ;
elif [[ "$OSTYPE" == "darwin"* ]]; then
CC=x86_64-w64-mingw32-gcc ;
elif [[ "$OSTYPE" == "cygwin" ]]; then
CC=gcc ;
elif [[ "$OSTYPE" == "msys" ]]; then
CC=gcc ;
elif [[ "$OSTYPE" == "win32" ]]; then
CC=gcc ;
elif [[ "$OSTYPE" == "freebsd"* ]]; then
CC=x86_64-w64-mingw32-gcc ;
else
echo "unknown OS"
exit 1
fi

assertInstalled $CC
mkdir -p ../build
$CC win32_tinyengine.c -luser32 -ld3d11 -ldxguid -o ../build/tinyengine.exe

