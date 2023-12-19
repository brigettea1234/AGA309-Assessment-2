@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T cs_6_6 -E MainCS -Fc SSDTemporalAccumulation.d3dasm -Fo SSDTemporalAccumulation.dxil SSDTemporalAccumulation
:END
PAUSE
