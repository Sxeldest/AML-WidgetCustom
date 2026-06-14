; =========================================================
; Game Engine Function: _ZN11CTheScripts15DrawDebugSquareEffff
; Address            : 0x34AEAE - 0x34AFAA
; =========================================================

34AEAE:  PUSH            {R4-R7,LR}
34AEB0:  ADD             R7, SP, #0xC
34AEB2:  PUSH.W          {R8-R11}
34AEB6:  SUB             SP, SP, #4
34AEB8:  VPUSH           {D8}
34AEBC:  SUB             SP, SP, #0x88
34AEBE:  MOV             R4, R1
34AEC0:  STR             R3, [SP,#0xB0+var_90]
34AEC2:  STR             R0, [SP,#0xB0+var_8C]
34AEC4:  MOVW            R10, #0
34AEC8:  STRD.W          R0, R4, [SP,#0xB0+var_34]
34AECC:  MOVS            R0, #0xC47A0000
34AED2:  ADD.W           R11, SP, #0xB0+var_88
34AED6:  ADD             R5, SP, #0xB0+var_84
34AED8:  STR             R0, [SP,#0xB0+var_2C]
34AEDA:  MOVT            R10, #0x447A
34AEDE:  ADD             R0, SP, #0xB0+var_34; CVector *
34AEE0:  MOV             R6, R2
34AEE2:  MOV.W           R8, #0
34AEE6:  MOV.W           R9, #1
34AEEA:  MOV             R1, R10; int
34AEEC:  MOV             R2, R5; int
34AEEE:  MOV             R3, R11; int
34AEF0:  STRD.W          R9, R8, [SP,#0xB0+var_B0]; int
34AEF4:  STRD.W          R8, R8, [SP,#0xB0+var_A8]; int
34AEF8:  STRD.W          R9, R8, [SP,#0xB0+var_A0]; int
34AEFC:  STR.W           R8, [SP,#0xB0+var_98]; int
34AF00:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34AF04:  VMOV.F32        S16, #2.0
34AF08:  VLDR            S0, [SP,#0xB0+var_7C]
34AF0C:  STR             R4, [SP,#0xB0+var_3C]
34AF0E:  MOVS            R4, #0
34AF10:  ADD             R0, SP, #0xB0+var_40; CVector *
34AF12:  MOVT            R4, #0xC47A
34AF16:  MOV             R1, R10; int
34AF18:  MOV             R2, R5; int
34AF1A:  MOV             R3, R11; int
34AF1C:  STR             R6, [SP,#0xB0+var_40]
34AF1E:  STR             R4, [SP,#0xB0+var_38]
34AF20:  VADD.F32        S0, S0, S16
34AF24:  VSTR            S0, [SP,#0xB0+var_2C]
34AF28:  STRD.W          R9, R8, [SP,#0xB0+var_B0]; int
34AF2C:  STRD.W          R8, R8, [SP,#0xB0+var_A8]; int
34AF30:  STRD.W          R9, R8, [SP,#0xB0+var_A0]; int
34AF34:  STR.W           R8, [SP,#0xB0+var_98]; int
34AF38:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34AF3C:  VLDR            S0, [SP,#0xB0+var_7C]
34AF40:  ADD             R0, SP, #0xB0+var_4C; CVector *
34AF42:  STR             R6, [SP,#0xB0+var_4C]
34AF44:  MOV             R1, R10; int
34AF46:  VADD.F32        S0, S0, S16
34AF4A:  LDR             R6, [SP,#0xB0+var_90]
34AF4C:  MOV             R2, R5; int
34AF4E:  MOV             R3, R11; int
34AF50:  VSTR            S0, [SP,#0xB0+var_38]
34AF54:  STRD.W          R6, R4, [SP,#0xB0+var_48]
34AF58:  STRD.W          R9, R8, [SP,#0xB0+var_B0]; int
34AF5C:  STRD.W          R8, R8, [SP,#0xB0+var_A8]; int
34AF60:  STRD.W          R9, R8, [SP,#0xB0+var_A0]; int
34AF64:  STR.W           R8, [SP,#0xB0+var_98]; int
34AF68:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34AF6C:  VLDR            S0, [SP,#0xB0+var_7C]
34AF70:  MOV             R1, R10; int
34AF72:  LDR             R0, [SP,#0xB0+var_8C]
34AF74:  MOV             R2, R5; int
34AF76:  VADD.F32        S0, S0, S16
34AF7A:  MOV             R3, R11; int
34AF7C:  VSTR            S0, [SP,#0xB0+var_44]
34AF80:  STRD.W          R0, R6, [SP,#0xB0+var_58]
34AF84:  ADD             R0, SP, #0xB0+var_58; CVector *
34AF86:  STR             R4, [SP,#0xB0+var_50]
34AF88:  STRD.W          R9, R8, [SP,#0xB0+var_B0]; int
34AF8C:  STRD.W          R8, R8, [SP,#0xB0+var_A8]; int
34AF90:  STRD.W          R9, R8, [SP,#0xB0+var_A0]; int
34AF94:  STR.W           R8, [SP,#0xB0+var_98]; int
34AF98:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34AF9C:  ADD             SP, SP, #0x88
34AF9E:  VPOP            {D8}
34AFA2:  ADD             SP, SP, #4
34AFA4:  POP.W           {R8-R11}
34AFA8:  POP             {R4-R7,PC}
