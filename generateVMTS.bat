REM Place this script in your folder containing the VTFs, this script will generate the VMTs.

@ECHO OFF
for %%f in (*.vtf) do (
    ECHO Creating VMT for file %%f
    ECHO "VertexLitGeneric"^
    {^
        "$basetexture"	"titus/breakers/%%~nf"^
        "$alphatest" 	"1"^
        "$alphatestreference"	"0.5"^
        "$allowAlphaToCoverage"	"1"^
    } > %%~nf.vmt
)
PAUSE
