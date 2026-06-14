; =========================================================
; Game Engine Function: _ZN11CMenuSystem22FillGridWithCarColoursEh
; Address            : 0x43BFEC - 0x43C116
; =========================================================

43BFEC:  PUSH            {R4-R7,LR}
43BFEE:  ADD             R7, SP, #0xC
43BFF0:  PUSH.W          {R8-R11}
43BFF4:  SUB             SP, SP, #0x11C
43BFF6:  STR             R0, [SP,#0x138+var_130]
43BFF8:  ADD             R0, SP, #0x138+var_120; this
43BFFA:  ADD.W           R10, SP, #0x138+var_11C
43BFFE:  MOVS            R4, #0
43C000:  MOVS            R5, #0xFF
43C002:  MOVS            R1, #0; unsigned __int8
43C004:  MOVS            R2, #0; unsigned __int8
43C006:  MOVS            R3, #0; unsigned __int8
43C008:  STR             R5, [SP,#0x138+var_138]; unsigned __int8
43C00A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43C00E:  LDRB.W          R1, [SP,#0x138+var_120]
43C012:  ADD.W           R2, R10, R4,LSL#2
43C016:  STRB.W          R1, [R10,R4,LSL#2]
43C01A:  ADDS            R4, #1
43C01C:  CMP             R4, #0x40 ; '@'
43C01E:  LDRB.W          R1, [SP,#0x138+var_11F]
43C022:  STRB            R1, [R2,#1]
43C024:  LDRB.W          R1, [SP,#0x138+var_11E]
43C028:  STRB            R1, [R2,#2]
43C02A:  LDRB.W          R1, [SP,#0x138+var_11D]
43C02E:  STRB            R1, [R2,#3]
43C030:  BNE             loc_43C002
43C032:  LDR             R0, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x43C03E)
43C034:  MOVS            R2, #0
43C036:  LDR             R1, =(MenuNumber_ptr - 0x43C040)
43C038:  MOVS            R4, #0
43C03A:  ADD             R0, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
43C03C:  ADD             R1, PC; MenuNumber_ptr
43C03E:  LDR             R0, [R0]; CVehicleModelInfo::ms_vehicleColourTable ...
43C040:  STR             R0, [SP,#0x138+var_12C]
43C042:  ADD             R0, SP, #0x138+var_120; this
43C044:  LDR             R1, [R1]; MenuNumber
43C046:  STR             R1, [SP,#0x138+var_134]
43C048:  MOVS            R1, #0
43C04A:  STRD.W          R2, R1, [SP,#0x138+var_128]
43C04E:  UXTB            R2, R1
43C050:  LDR             R3, [SP,#0x138+var_12C]
43C052:  MOVS            R6, #0xFF
43C054:  STR             R6, [SP,#0x138+var_138]; unsigned __int8
43C056:  LDRB.W          R1, [R3,R2,LSL#2]; unsigned __int8
43C05A:  ADD.W           R3, R3, R2,LSL#2
43C05E:  LDRB            R2, [R3,#1]; unsigned __int8
43C060:  LDRB            R3, [R3,#2]; unsigned __int8
43C062:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43C066:  LDRB.W          R8, [SP,#0x138+var_120]
43C06A:  MOVS            R2, #0
43C06C:  LDRB.W          LR, [SP,#0x138+var_11F]
43C070:  MOVS            R5, #0
43C072:  LDRB.W          R12, [SP,#0x138+var_11E]
43C076:  MOV.W           R9, #0
43C07A:  LSLS            R1, R4, #0x18
43C07C:  BEQ             loc_43C0C6
43C07E:  LDRB.W          R1, [R10,R2,LSL#2]
43C082:  SUB.W           R3, R1, #0xF
43C086:  CMP             R3, R8
43C088:  BGE             loc_43C0C6
43C08A:  ADD.W           R11, R10, R2,LSL#2
43C08E:  LDRB.W          R2, [R11,#1]
43C092:  SUB.W           R3, R2, #0xF
43C096:  CMP             R3, LR
43C098:  BGE             loc_43C0C6
43C09A:  LDRB.W          R3, [R11,#2]
43C09E:  ADDS            R1, #0xF
43C0A0:  SUB.W           R6, R3, #0xF
43C0A4:  CMP             R6, R12
43C0A6:  MOV             R6, R9
43C0A8:  IT LT
43C0AA:  MOVLT           R6, #1
43C0AC:  CMP             R1, R8
43C0AE:  ADD.W           R1, R2, #0xF
43C0B2:  IT LS
43C0B4:  MOVLS           R6, R9
43C0B6:  CMP             R1, LR
43C0B8:  ADD.W           R1, R3, #0xF
43C0BC:  IT LS
43C0BE:  MOVLS           R6, R9
43C0C0:  CMP             R1, R12
43C0C2:  IT HI
43C0C4:  MOVHI           R9, R6
43C0C6:  ADDS            R5, #1
43C0C8:  UXTB            R1, R4
43C0CA:  UXTB            R2, R5
43C0CC:  CMP             R2, R1
43C0CE:  BLS             loc_43C07A
43C0D0:  LDR             R5, [SP,#0x138+var_124]
43C0D2:  MOVS.W          R1, R9,LSL#24
43C0D6:  BEQ             loc_43C0E2
43C0D8:  ADDS            R1, R5, #1
43C0DA:  SXTB            R1, R1
43C0DC:  CMP.W           R1, #0xFFFFFFFF
43C0E0:  BGT             loc_43C108
43C0E2:  LDR             R3, [SP,#0x138+var_128]
43C0E4:  ADDS            R4, #1
43C0E6:  LDRB.W          R2, [SP,#0x138+var_11D]
43C0EA:  ADD.W           R1, R10, R3,LSL#2
43C0EE:  STRB.W          R8, [R10,R3,LSL#2]
43C0F2:  STRB.W          LR, [R1,#1]
43C0F6:  STRB.W          R12, [R1,#2]
43C0FA:  STRB            R2, [R1,#3]
43C0FC:  LDRD.W          R2, R1, [SP,#0x138+var_134]
43C100:  LDR.W           R1, [R2,R1,LSL#2]
43C104:  STRB            R5, [R1,R3]
43C106:  MOVS            R1, #0
43C108:  UXTB            R2, R4
43C10A:  CMP             R2, #0x40 ; '@'
43C10C:  BCC             loc_43C04A
43C10E:  ADD             SP, SP, #0x11C
43C110:  POP.W           {R8-R11}
43C114:  POP             {R4-R7,PC}
