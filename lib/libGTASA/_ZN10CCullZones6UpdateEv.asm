; =========================================================
; Game Engine Function: _ZN10CCullZones6UpdateEv
; Address            : 0x5CF880 - 0x5CF908
; =========================================================

5CF880:  PUSH            {R7,LR}
5CF882:  MOV             R7, SP
5CF884:  SUB             SP, SP, #0x10
5CF886:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5CF88C)
5CF888:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5CF88A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5CF88C:  LDR             R0, [R0]; CTimer::m_FrameCounter
5CF88E:  AND.W           R0, R0, #7
5CF892:  CMP             R0, #6
5CF894:  BEQ             loc_5CF8BC
5CF896:  CMP             R0, #2
5CF898:  BNE             loc_5CF904
5CF89A:  LDR             R0, =(TheCamera_ptr - 0x5CF8A0)
5CF89C:  ADD             R0, PC; TheCamera_ptr
5CF89E:  LDR             R0, [R0]; TheCamera ; this
5CF8A0:  BLX.W           j__ZN7CCamera18GetGameCamPositionEv; CCamera::GetGameCamPosition(void)
5CF8A4:  LDRD.W          R3, R1, [R0]
5CF8A8:  LDR             R2, [R0,#8]
5CF8AA:  MOV             R0, R3
5CF8AC:  BLX.W           j__ZN10CCullZones22FindAttributesForCoorsE7CVector; CCullZones::FindAttributesForCoors(CVector)
5CF8B0:  LDR             R1, =(_ZN10CCullZones19CurrentFlags_CameraE_ptr - 0x5CF8B6)
5CF8B2:  ADD             R1, PC; _ZN10CCullZones19CurrentFlags_CameraE_ptr
5CF8B4:  LDR             R1, [R1]; CCullZones::CurrentFlags_Camera ...
5CF8B6:  STR             R0, [R1]; CCullZones::CurrentFlags_Camera
5CF8B8:  ADD             SP, SP, #0x10
5CF8BA:  POP             {R7,PC}
5CF8BC:  ADD             R0, SP, #0x18+var_14; int
5CF8BE:  MOV.W           R1, #0xFFFFFFFF
5CF8C2:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5CF8C6:  ADD             R2, SP, #0x18+var_14
5CF8C8:  LDM             R2, {R0-R2}
5CF8CA:  BLX.W           j__ZN10CCullZones22FindAttributesForCoorsE7CVector; CCullZones::FindAttributesForCoors(CVector)
5CF8CE:  LDR             R1, =(_ZN10CCullZones22bMilitaryZonesDisabledE_ptr - 0x5CF8DA)
5CF8D0:  TST.W           R0, #0x1000
5CF8D4:  LDR             R2, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5CF8DC)
5CF8D6:  ADD             R1, PC; _ZN10CCullZones22bMilitaryZonesDisabledE_ptr
5CF8D8:  ADD             R2, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5CF8DA:  LDR             R1, [R1]; CCullZones::bMilitaryZonesDisabled ...
5CF8DC:  LDR             R2, [R2]; CCullZones::CurrentFlags_Player ...
5CF8DE:  LDRB            R1, [R1]; CCullZones::bMilitaryZonesDisabled
5CF8E0:  STR             R0, [R2]; CCullZones::CurrentFlags_Player
5CF8E2:  BEQ             loc_5CF904
5CF8E4:  CBNZ            R1, loc_5CF904
5CF8E6:  MOV.W           R0, #0xFFFFFFFF; int
5CF8EA:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5CF8EE:  BLX.W           j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
5CF8F2:  CMP             R0, #1
5CF8F4:  BNE             loc_5CF904
5CF8F6:  MOV.W           R0, #0xFFFFFFFF; int
5CF8FA:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5CF8FE:  MOVS            R1, #5; int
5CF900:  BLX.W           j__ZN10CPlayerPed20SetWantedLevelNoDropEi; CPlayerPed::SetWantedLevelNoDrop(int)
5CF904:  ADD             SP, SP, #0x10
5CF906:  POP             {R7,PC}
