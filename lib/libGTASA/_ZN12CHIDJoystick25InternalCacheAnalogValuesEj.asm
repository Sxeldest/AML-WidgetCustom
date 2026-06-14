; =========================================================
; Game Engine Function: _ZN12CHIDJoystick25InternalCacheAnalogValuesEj
; Address            : 0x28CE6C - 0x28CF64
; =========================================================

28CE6C:  PUSH            {R4-R7,LR}
28CE6E:  ADD             R7, SP, #0xC
28CE70:  PUSH.W          {R8-R10}
28CE74:  VPUSH           {D8}
28CE78:  MOV             R5, R0
28CE7A:  MOV             R10, R1
28CE7C:  LDR             R0, [R5,#8]
28CE7E:  CMP             R0, #0
28CE80:  BEQ             loc_28CF5A
28CE82:  VMOV.F32        S16, #0.5
28CE86:  MOV.W           R9, #0
28CE8A:  MOV.W           R8, #1
28CE8E:  MOVS            R6, #0
28CE90:  MOVS            R4, #0
28CE92:  LDR             R0, [R5,#0xC]
28CE94:  LDR             R1, [R0,R6]; int
28CE96:  CMP             R1, #0xF
28CE98:  BGT             loc_28CEB6
28CE9A:  MOV             R0, R10; int
28CE9C:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28CEA0:  CBNZ            R0, loc_28CEB6
28CEA2:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
28CEA6:  VMOV            D16, R0, R1
28CEAA:  LDR             R0, [R5,#0xC]
28CEAC:  VCVT.F32.F64    S0, D16
28CEB0:  ADD             R0, R6
28CEB2:  VSTR            S0, [R0,#0x10]
28CEB6:  LDR             R0, [R5,#0xC]
28CEB8:  LDR             R1, [R0,R6]
28CEBA:  CMP             R1, #0x10
28CEBC:  BLT             loc_28CF50
28CEBE:  ADD             R0, R6
28CEC0:  STRB.W          R9, [R0,#8]
28CEC4:  LDR             R0, [R5,#0xC]
28CEC6:  ADD             R0, R6
28CEC8:  STRB.W          R9, [R0,#9]
28CECC:  LDR             R0, [R5,#0xC]
28CECE:  ADDS            R1, R0, R6
28CED0:  VLDR            S0, [R1,#0xC]
28CED4:  VCMPE.F32       S0, S16
28CED8:  VMRS            APSR_nzcv, FPSCR
28CEDC:  BLE             loc_28CF10
28CEDE:  LDR             R1, [R0,R6]; unsigned int
28CEE0:  MOV             R0, R10; unsigned int
28CEE2:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28CEE6:  VMOV            S0, R0
28CEEA:  VCMPE.F32       S0, S16
28CEEE:  VMRS            APSR_nzcv, FPSCR
28CEF2:  BGE             loc_28CF10
28CEF4:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
28CEF8:  VMOV            D16, R0, R1
28CEFC:  LDR             R0, [R5,#0xC]
28CEFE:  VCVT.F32.F64    S0, D16
28CF02:  ADD             R0, R6
28CF04:  VSTR            S0, [R0,#0x10]
28CF08:  LDR             R0, [R5,#0xC]
28CF0A:  ADD             R0, R6
28CF0C:  STRB.W          R8, [R0,#9]
28CF10:  LDR             R0, [R5,#0xC]
28CF12:  ADDS            R1, R0, R6
28CF14:  VLDR            S0, [R1,#0xC]
28CF18:  VCMPE.F32       S0, S16
28CF1C:  VMRS            APSR_nzcv, FPSCR
28CF20:  BGE             loc_28CF40
28CF22:  LDR             R1, [R0,R6]; unsigned int
28CF24:  MOV             R0, R10; unsigned int
28CF26:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28CF2A:  VMOV            S0, R0
28CF2E:  VCMPE.F32       S0, S16
28CF32:  VMRS            APSR_nzcv, FPSCR
28CF36:  ITTT GT
28CF38:  LDRGT           R0, [R5,#0xC]
28CF3A:  ADDGT           R0, R6
28CF3C:  STRBGT.W        R8, [R0,#8]
28CF40:  LDR             R0, [R5,#0xC]
28CF42:  LDR             R1, [R0,R6]; unsigned int
28CF44:  MOV             R0, R10; unsigned int
28CF46:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28CF4A:  LDR             R1, [R5,#0xC]
28CF4C:  ADD             R1, R6
28CF4E:  STR             R0, [R1,#0xC]
28CF50:  LDR             R0, [R5,#8]
28CF52:  ADDS            R4, #1
28CF54:  ADDS            R6, #0x14
28CF56:  CMP             R4, R0
28CF58:  BCC             loc_28CE92
28CF5A:  VPOP            {D8}
28CF5E:  POP.W           {R8-R10}
28CF62:  POP             {R4-R7,PC}
