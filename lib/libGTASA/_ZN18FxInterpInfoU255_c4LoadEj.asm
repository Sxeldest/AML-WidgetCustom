; =========================================================
; Game Engine Function: _ZN18FxInterpInfoU255_c4LoadEj
; Address            : 0x46EEDC - 0x46F0B2
; =========================================================

46EEDC:  PUSH            {R4-R7,LR}
46EEDE:  ADD             R7, SP, #0xC
46EEE0:  PUSH.W          {R8-R11}
46EEE4:  SUB             SP, SP, #4
46EEE6:  VPUSH           {D8}
46EEEA:  SUB             SP, SP, #0x1A0
46EEEC:  MOV             R11, R0
46EEEE:  LDR             R0, =(__stack_chk_guard_ptr - 0x46EEF6)
46EEF0:  MOV             R4, R1
46EEF2:  ADD             R0, PC; __stack_chk_guard_ptr
46EEF4:  LDR             R0, [R0]; __stack_chk_guard
46EEF6:  LDR             R0, [R0]
46EEF8:  STR             R0, [SP,#0x1C8+var_2C]
46EEFA:  LDRSB.W         R0, [R11,#6]
46EEFE:  CMP             R0, #1
46EF00:  BLT.W           loc_46F090
46EF04:  LDR             R0, =(g_fxMan_ptr - 0x46EF14)
46EF06:  ADD             R5, SP, #0x1C8+var_12C
46EF08:  ADR.W           R10, dword_46F0B8
46EF0C:  ADD.W           R9, SP, #0x1C8+var_1AC
46EF10:  ADD             R0, PC; g_fxMan_ptr
46EF12:  VLDR            S16, =256.0
46EF16:  MOV.W           R8, #0
46EF1A:  STR             R4, [SP,#0x1C8+var_1C0]
46EF1C:  LDR             R0, [R0]; g_fxMan
46EF1E:  STR.W           R11, [SP,#0x1C8+var_1B8]
46EF22:  ADDS            R0, #0xAC
46EF24:  STR             R0, [SP,#0x1C8+var_1C4]
46EF26:  LDR             R0, =(g_fxMan_ptr - 0x46EF2C)
46EF28:  ADD             R0, PC; g_fxMan_ptr
46EF2A:  LDR             R0, [R0]; g_fxMan
46EF2C:  ADDS            R0, #0xAC
46EF2E:  STR             R0, [SP,#0x1C8+var_1BC]
46EF30:  MOV             R0, R4; unsigned int
46EF32:  MOV             R1, R5; char *
46EF34:  MOV.W           R2, #0x100; int
46EF38:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EF3C:  MOV             R0, R5; s
46EF3E:  MOV             R1, R10; format
46EF40:  MOV             R2, R9
46EF42:  BLX             sscanf
46EF46:  MOV             R0, R4; unsigned int
46EF48:  MOV             R1, R5; char *
46EF4A:  MOV.W           R2, #0x100; int
46EF4E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EF52:  MOV             R0, R5; s
46EF54:  MOV             R1, R10; format
46EF56:  MOV             R2, R9
46EF58:  BLX             sscanf
46EF5C:  MOV             R0, R4; unsigned int
46EF5E:  MOV             R1, R5; char *
46EF60:  MOV.W           R2, #0x100; int
46EF64:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EF68:  LDR.W           R10, =(aDFFFDFFFFFFFDD+0x2A - 0x46EF78); "%s %d"
46EF6C:  MOV             R6, R11
46EF6E:  ADD.W           R11, SP, #0x1C8+var_1B0
46EF72:  MOV             R0, R5; s
46EF74:  ADD             R10, PC; "%s %d"
46EF76:  MOV             R2, R9
46EF78:  MOV             R3, R11
46EF7A:  MOV             R1, R10; format
46EF7C:  BLX             sscanf
46EF80:  LDR             R0, [SP,#0x1C8+var_1B0]
46EF82:  MOV             R1, R5; char *
46EF84:  STRB            R0, [R6,#4]
46EF86:  MOV             R0, R4; unsigned int
46EF88:  MOV.W           R2, #0x100; int
46EF8C:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EF90:  MOV             R0, R5; s
46EF92:  MOV             R1, R10; format
46EF94:  MOV             R2, R9
46EF96:  MOV             R3, R11
46EF98:  BLX             sscanf
46EF9C:  LDR             R1, [SP,#0x1C8+var_1B0]
46EF9E:  CMP.W           R8, #0
46EFA2:  STRB            R1, [R6,#5]
46EFA4:  BNE             loc_46EFB6
46EFA6:  LSLS            R0, R1, #0x18
46EFA8:  MOVS            R2, #2; int
46EFAA:  ASRS            R1, R0, #0x17; int
46EFAC:  LDR             R0, [SP,#0x1C8+var_1C4]; this
46EFAE:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46EFB2:  LDRB            R1, [R6,#5]
46EFB4:  STR             R0, [R6,#8]
46EFB6:  SXTB            R0, R1
46EFB8:  MOVS            R2, #2; int
46EFBA:  LSLS            R1, R0, #1; int
46EFBC:  LDR             R0, [SP,#0x1C8+var_1BC]; this
46EFBE:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46EFC2:  LDR             R1, [R6,#0xC]
46EFC4:  MOV             R9, R8
46EFC6:  ADD             R5, SP, #0x1C8+var_1AC
46EFC8:  ADD             R4, SP, #0x1C8+var_1B4
46EFCA:  MOV             R2, R6
46EFCC:  STR.W           R0, [R1,R8,LSL#2]
46EFD0:  ADD.W           R8, SP, #0x1C8+var_12C
46EFD4:  LDRSB.W         R0, [R6,#5]
46EFD8:  CMP             R0, #1
46EFDA:  LDR             R0, [SP,#0x1C8+var_1C0]; unsigned int
46EFDC:  BLT             loc_46F072
46EFDE:  MOV.W           R11, #0
46EFE2:  MOV             R1, R8; char *
46EFE4:  MOV.W           R2, #0x100; int
46EFE8:  MOV             R6, R0
46EFEA:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EFEE:  ADR             R1, dword_46F0B8; format
46EFF0:  MOV             R0, R8; s
46EFF2:  MOV             R2, R5
46EFF4:  BLX             sscanf
46EFF8:  MOV             R0, R6; unsigned int
46EFFA:  MOV             R1, R8; char *
46EFFC:  MOV.W           R2, #0x100; int
46F000:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F004:  LDR.W           R10, =(aSF_0 - 0x46F012); "%s %f"
46F008:  MOV             R0, R8; s
46F00A:  MOV             R2, R5
46F00C:  MOV             R3, R4
46F00E:  ADD             R10, PC; "%s %f"
46F010:  MOV             R1, R10; format
46F012:  BLX             sscanf
46F016:  VLDR            S0, [SP,#0x1C8+var_1B4]
46F01A:  MOV.W           R2, #0x100; int
46F01E:  LDR             R0, [SP,#0x1C8+var_1B8]
46F020:  VMUL.F32        S0, S0, S16
46F024:  LDR             R0, [R0,#8]
46F026:  VCVT.U32.F32    S0, S0
46F02A:  VMOV            R1, S0
46F02E:  STRH.W          R1, [R0,R11,LSL#1]
46F032:  MOV             R0, R6; unsigned int
46F034:  MOV             R1, R8; char *
46F036:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F03A:  MOV             R0, R8; s
46F03C:  MOV             R1, R10; format
46F03E:  MOV             R2, R5
46F040:  MOV             R3, R4
46F042:  BLX             sscanf
46F046:  VLDR            S0, [SP,#0x1C8+var_1B4]
46F04A:  LDR             R0, [SP,#0x1C8+var_1B8]
46F04C:  VMUL.F32        S0, S0, S16
46F050:  LDR             R0, [R0,#0xC]
46F052:  LDR.W           R0, [R0,R9,LSL#2]
46F056:  VCVT.U32.F32    S0, S0
46F05A:  VMOV            R1, S0
46F05E:  STRH.W          R1, [R0,R11,LSL#1]
46F062:  ADD.W           R11, R11, #1
46F066:  MOV             R0, R6
46F068:  LDR             R2, [SP,#0x1C8+var_1B8]
46F06A:  LDRSB.W         R1, [R2,#5]
46F06E:  CMP             R11, R1
46F070:  BLT             loc_46EFE2
46F072:  LDRSB.W         R1, [R2,#6]
46F076:  ADD.W           R9, R9, #1
46F07A:  ADR.W           R10, dword_46F0B8
46F07E:  MOV             R4, R0
46F080:  CMP             R9, R1
46F082:  MOV             R1, R9
46F084:  MOV             R9, R5
46F086:  MOV             R5, R8
46F088:  MOV             R11, R2
46F08A:  MOV             R8, R1
46F08C:  BLT.W           loc_46EF30
46F090:  LDR             R0, =(__stack_chk_guard_ptr - 0x46F098)
46F092:  LDR             R1, [SP,#0x1C8+var_2C]
46F094:  ADD             R0, PC; __stack_chk_guard_ptr
46F096:  LDR             R0, [R0]; __stack_chk_guard
46F098:  LDR             R0, [R0]
46F09A:  SUBS            R0, R0, R1
46F09C:  ITTTT EQ
46F09E:  ADDEQ           SP, SP, #0x1A0
46F0A0:  VPOPEQ          {D8}
46F0A4:  ADDEQ           SP, SP, #4
46F0A6:  POPEQ.W         {R8-R11}
46F0AA:  IT EQ
46F0AC:  POPEQ           {R4-R7,PC}
46F0AE:  BLX             __stack_chk_fail
