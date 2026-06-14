; =========================================================
; Game Engine Function: _ZN19FxInterpInfoFloat_c4LoadEj
; Address            : 0x46ED0C - 0x46EEBC
; =========================================================

46ED0C:  PUSH            {R4-R7,LR}
46ED0E:  ADD             R7, SP, #0xC
46ED10:  PUSH.W          {R8-R11}
46ED14:  SUB             SP, SP, #4
46ED16:  VPUSH           {D8}
46ED1A:  SUB             SP, SP, #0x198
46ED1C:  MOV             R5, R0
46ED1E:  LDR             R0, =(__stack_chk_guard_ptr - 0x46ED26)
46ED20:  MOV             R4, R1
46ED22:  ADD             R0, PC; __stack_chk_guard_ptr
46ED24:  LDR             R0, [R0]; __stack_chk_guard
46ED26:  LDR             R0, [R0]
46ED28:  STR             R0, [SP,#0x1C0+var_2C]
46ED2A:  LDRSB.W         R0, [R5,#6]
46ED2E:  CMP             R0, #1
46ED30:  BLT.W           loc_46EE9A
46ED34:  LDR             R0, =(g_fxMan_ptr - 0x46ED44)
46ED36:  ADD             R6, SP, #0x1C0+var_12C
46ED38:  ADR.W           R8, dword_46EEC0
46ED3C:  ADD.W           R9, SP, #0x1C0+var_1AC
46ED40:  ADD             R0, PC; g_fxMan_ptr
46ED42:  VLDR            S16, =256.0
46ED46:  MOV.W           R11, #0
46ED4A:  LDR             R0, [R0]; g_fxMan
46ED4C:  ADDS            R0, #0xAC
46ED4E:  STR             R0, [SP,#0x1C0+var_1C0]
46ED50:  LDR             R0, =(g_fxMan_ptr - 0x46ED56)
46ED52:  ADD             R0, PC; g_fxMan_ptr
46ED54:  LDR             R0, [R0]; g_fxMan
46ED56:  ADDS            R0, #0xAC
46ED58:  STR             R0, [SP,#0x1C0+var_1BC]
46ED5A:  MOV             R0, R4; unsigned int
46ED5C:  MOV             R1, R6; char *
46ED5E:  MOV.W           R2, #0x100; int
46ED62:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46ED66:  MOV             R0, R6; s
46ED68:  MOV             R1, R8; format
46ED6A:  MOV             R2, R9
46ED6C:  BLX             sscanf
46ED70:  MOV             R0, R4; unsigned int
46ED72:  MOV             R1, R6; char *
46ED74:  MOV.W           R2, #0x100; int
46ED78:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46ED7C:  MOV             R0, R6; s
46ED7E:  MOV             R1, R8; format
46ED80:  MOV             R2, R9
46ED82:  BLX             sscanf
46ED86:  MOV             R0, R4; unsigned int
46ED88:  MOV             R1, R6; char *
46ED8A:  MOV.W           R2, #0x100; int
46ED8E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46ED92:  LDR.W           R8, =(aDFFFDFFFFFFFDD+0x2A - 0x46EDA2); "%s %d"
46ED96:  ADD.W           R10, SP, #0x1C0+var_1B0
46ED9A:  MOV             R0, R6; s
46ED9C:  MOV             R2, R9
46ED9E:  ADD             R8, PC; "%s %d"
46EDA0:  MOV             R3, R10
46EDA2:  MOV             R1, R8; format
46EDA4:  BLX             sscanf
46EDA8:  LDR             R0, [SP,#0x1C0+var_1B0]
46EDAA:  MOV             R1, R6; char *
46EDAC:  STRB            R0, [R5,#4]
46EDAE:  MOV             R0, R4; unsigned int
46EDB0:  MOV.W           R2, #0x100; int
46EDB4:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EDB8:  MOV             R1, R8; format
46EDBA:  MOV             R0, R6; s
46EDBC:  MOV             R2, R9
46EDBE:  MOV             R3, R10
46EDC0:  MOV             R8, R9
46EDC2:  BLX             sscanf
46EDC6:  LDR             R1, [SP,#0x1C0+var_1B0]
46EDC8:  CMP.W           R11, #0
46EDCC:  STRB            R1, [R5,#5]
46EDCE:  BNE             loc_46EDE0
46EDD0:  LSLS            R0, R1, #0x18
46EDD2:  MOVS            R2, #2; int
46EDD4:  ASRS            R1, R0, #0x17; int
46EDD6:  LDR             R0, [SP,#0x1C0+var_1C0]; this
46EDD8:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46EDDC:  LDRB            R1, [R5,#5]
46EDDE:  STR             R0, [R5,#8]
46EDE0:  SXTB            R0, R1
46EDE2:  MOVS            R2, #4; int
46EDE4:  LSLS            R1, R0, #2; int
46EDE6:  LDR             R0, [SP,#0x1C0+var_1BC]; this
46EDE8:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46EDEC:  LDR             R1, [R5,#0xC]
46EDEE:  MOV             R10, R8
46EDF0:  STR.W           R0, [R1,R11,LSL#2]
46EDF4:  LDRSB.W         R0, [R5,#5]
46EDF8:  STR.W           R11, [SP,#0x1C0+var_1B8]
46EDFC:  CMP             R0, #1
46EDFE:  BLT             loc_46EE84
46EE00:  MOV.W           R8, #0
46EE04:  MOV.W           R11, #0
46EE08:  MOV             R0, R4; unsigned int
46EE0A:  MOV             R1, R6; char *
46EE0C:  MOV.W           R2, #0x100; int
46EE10:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EE14:  ADR             R1, dword_46EEC0; format
46EE16:  MOV             R0, R6; s
46EE18:  MOV             R2, R10
46EE1A:  BLX             sscanf
46EE1E:  MOV             R0, R4; unsigned int
46EE20:  MOV             R1, R6; char *
46EE22:  MOV.W           R2, #0x100; int
46EE26:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EE2A:  LDR.W           R9, =(aSF_0 - 0x46EE38); "%s %f"
46EE2E:  ADD             R3, SP, #0x1C0+var_1B4
46EE30:  MOV             R0, R6; s
46EE32:  MOV             R2, R10
46EE34:  ADD             R9, PC; "%s %f"
46EE36:  MOV             R1, R9; format
46EE38:  BLX             sscanf
46EE3C:  VLDR            S0, [SP,#0x1C0+var_1B4]
46EE40:  MOV.W           R2, #0x100; int
46EE44:  LDR             R0, [R5,#8]
46EE46:  VMUL.F32        S0, S0, S16
46EE4A:  VCVT.U32.F32    S0, S0
46EE4E:  VMOV            R1, S0
46EE52:  STRH.W          R1, [R0,R11,LSL#1]
46EE56:  MOV             R0, R4; unsigned int
46EE58:  MOV             R1, R6; char *
46EE5A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EE5E:  LDR             R0, [R5,#0xC]
46EE60:  MOV             R2, R10
46EE62:  LDR             R1, [SP,#0x1C0+var_1B8]
46EE64:  LDR.W           R0, [R0,R1,LSL#2]
46EE68:  MOV             R1, R9; format
46EE6A:  ADD.W           R3, R0, R8
46EE6E:  MOV             R0, R6; s
46EE70:  BLX             sscanf
46EE74:  LDRSB.W         R0, [R5,#5]
46EE78:  ADD.W           R11, R11, #1
46EE7C:  ADD.W           R8, R8, #4
46EE80:  CMP             R11, R0
46EE82:  BLT             loc_46EE08
46EE84:  LDR             R1, [SP,#0x1C0+var_1B8]
46EE86:  ADR.W           R8, dword_46EEC0
46EE8A:  LDRSB.W         R0, [R5,#6]
46EE8E:  MOV             R9, R10
46EE90:  ADDS            R1, #1
46EE92:  CMP             R1, R0
46EE94:  MOV             R11, R1
46EE96:  BLT.W           loc_46ED5A
46EE9A:  LDR             R0, =(__stack_chk_guard_ptr - 0x46EEA2)
46EE9C:  LDR             R1, [SP,#0x1C0+var_2C]
46EE9E:  ADD             R0, PC; __stack_chk_guard_ptr
46EEA0:  LDR             R0, [R0]; __stack_chk_guard
46EEA2:  LDR             R0, [R0]
46EEA4:  SUBS            R0, R0, R1
46EEA6:  ITTTT EQ
46EEA8:  ADDEQ           SP, SP, #0x198
46EEAA:  VPOPEQ          {D8}
46EEAE:  ADDEQ           SP, SP, #4
46EEB0:  POPEQ.W         {R8-R11}
46EEB4:  IT EQ
46EEB6:  POPEQ           {R4-R7,PC}
46EEB8:  BLX             __stack_chk_fail
