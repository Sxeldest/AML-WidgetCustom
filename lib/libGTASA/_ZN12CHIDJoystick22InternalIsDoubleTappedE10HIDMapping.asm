; =========================================================
; Game Engine Function: _ZN12CHIDJoystick22InternalIsDoubleTappedE10HIDMapping
; Address            : 0x28CF68 - 0x28D042
; =========================================================

28CF68:  PUSH            {R4-R7,LR}
28CF6A:  ADD             R7, SP, #0xC
28CF6C:  PUSH.W          {R8-R10}
28CF70:  VPUSH           {D8-D9}
28CF74:  MOV             R5, R0
28CF76:  MOV             R10, R1
28CF78:  LDR             R0, [R5,#8]
28CF7A:  CMP             R0, #0
28CF7C:  BEQ             loc_28D032
28CF7E:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28CF8E)
28CF80:  VMOV.F32        S18, #0.5
28CF84:  VLDR            D8, =0.330000013
28CF88:  MOVS            R6, #0
28CF8A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28CF8C:  MOVS            R4, #0
28CF8E:  LDR.W           R8, [R0]; CHID::currentInstanceIndex ...
28CF92:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28CF98)
28CF94:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28CF96:  LDR.W           R9, [R0]; CHID::currentInstanceIndex ...
28CF9A:  LDR             R2, [R5,#0xC]
28CF9C:  ADDS            R0, R2, R6
28CF9E:  LDR             R0, [R0,#4]
28CFA0:  CMP             R0, R10
28CFA2:  BNE             loc_28D028
28CFA4:  LDR             R1, [R2,R6]; int
28CFA6:  CMP             R1, #0xF
28CFA8:  BGT             loc_28CFDA
28CFAA:  LDR.W           R0, [R8]; int
28CFAE:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28CFB2:  CBZ             R0, loc_28CFB8
28CFB4:  LDR             R2, [R5,#0xC]
28CFB6:  B               loc_28CFDA
28CFB8:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
28CFBC:  LDR             R2, [R5,#0xC]
28CFBE:  VMOV            D17, R0, R1
28CFC2:  ADDS            R3, R2, R6
28CFC4:  VLDR            S0, [R3,#0x10]
28CFC8:  VCVT.F64.F32    D16, S0
28CFCC:  VSUB.F64        D16, D17, D16
28CFD0:  VCMPE.F64       D16, D8
28CFD4:  VMRS            APSR_nzcv, FPSCR
28CFD8:  BLT             loc_28D03E
28CFDA:  LDR             R1, [R2,R6]; unsigned int
28CFDC:  CMP             R1, #0x10
28CFDE:  BLT             loc_28D028
28CFE0:  ADDS            R0, R2, R6
28CFE2:  VLDR            S0, [R0,#0xC]
28CFE6:  VCMPE.F32       S0, S18
28CFEA:  VMRS            APSR_nzcv, FPSCR
28CFEE:  BLE             loc_28D028
28CFF0:  LDR.W           R0, [R9]; unsigned int
28CFF4:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28CFF8:  VMOV            S0, R0
28CFFC:  VCMPE.F32       S0, S18
28D000:  VMRS            APSR_nzcv, FPSCR
28D004:  BGE             loc_28D028
28D006:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
28D00A:  LDR             R2, [R5,#0xC]
28D00C:  VMOV            D17, R0, R1
28D010:  ADD             R2, R6
28D012:  VLDR            S0, [R2,#0x10]
28D016:  VCVT.F64.F32    D16, S0
28D01A:  VSUB.F64        D16, D17, D16
28D01E:  VCMPE.F64       D16, D8
28D022:  VMRS            APSR_nzcv, FPSCR
28D026:  BLT             loc_28D03E
28D028:  LDR             R0, [R5,#8]
28D02A:  ADDS            R4, #1
28D02C:  ADDS            R6, #0x14
28D02E:  CMP             R4, R0
28D030:  BCC             loc_28CF9A
28D032:  MOVS            R0, #0
28D034:  VPOP            {D8-D9}
28D038:  POP.W           {R8-R10}
28D03C:  POP             {R4-R7,PC}
28D03E:  MOVS            R0, #1
28D040:  B               loc_28D034
