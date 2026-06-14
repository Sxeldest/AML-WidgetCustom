; =========================================================
; Game Engine Function: _Z22jpeg_resync_to_restartP22jpeg_decompress_structi
; Address            : 0x47E008 - 0x47E110
; =========================================================

47E008:  PUSH            {R4-R7,LR}
47E00A:  ADD             R7, SP, #0xC
47E00C:  PUSH.W          {R8-R11}
47E010:  SUB             SP, SP, #0xC
47E012:  MOV             R4, R0
47E014:  MOV             R5, R1
47E016:  LDR             R0, [R4]
47E018:  MOVS            R1, #0x79 ; 'y'
47E01A:  LDR.W           R6, [R4,#0x17C]
47E01E:  STR             R1, [R0,#0x14]
47E020:  MOV.W           R1, #0xFFFFFFFF
47E024:  LDR             R0, [R4]
47E026:  STR             R6, [R0,#0x18]
47E028:  LDR             R0, [R4]
47E02A:  STR             R5, [R0,#0x1C]
47E02C:  LDR             R0, [R4]
47E02E:  LDR             R2, [R0,#4]
47E030:  MOV             R0, R4
47E032:  BLX             R2
47E034:  ADD.W           R12, R5, #6
47E038:  MOVS            R0, #0x1A
47E03A:  ADDS            R3, R5, #7
47E03C:  ADD.W           R10, R5, #2
47E040:  ADD.W           R9, R5, #1
47E044:  BFI.W           R12, R0, #3, #0x1D
47E048:  BFI.W           R3, R0, #3, #0x1D
47E04C:  BFI.W           R10, R0, #3, #0x1D
47E050:  BFI.W           R9, R0, #3, #0x1D
47E054:  MOVS            R5, #3
47E056:  MOV.W           R11, #0x61 ; 'a'
47E05A:  STRD.W          R3, R12, [SP,#0x28+var_24]
47E05E:  B               loc_47E06C
47E060:  LDR.W           R6, [R4,#0x17C]
47E064:  MOVS            R5, #3
47E066:  LDR.W           R12, [SP,#0x28+var_20]
47E06A:  LDR             R3, [SP,#0x28+var_24]
47E06C:  CMP             R6, R9
47E06E:  MOV.W           R0, #0
47E072:  IT EQ
47E074:  MOVEQ           R0, #1
47E076:  CMP             R6, #0xC0
47E078:  MOV.W           R1, #0
47E07C:  BIC.W           R2, R6, #7
47E080:  IT LT
47E082:  MOVLT           R1, #1
47E084:  CMP             R2, #0xD0
47E086:  MOV.W           R2, #0
47E08A:  MOV.W           R8, #1
47E08E:  IT NE
47E090:  MOVNE           R2, #1
47E092:  CMP             R6, #0xC0
47E094:  ORR.W           R1, R1, R2
47E098:  ORR.W           R0, R0, R1
47E09C:  MOV.W           R1, #3
47E0A0:  IT LT
47E0A2:  MOVLT           R1, #2
47E0A4:  CMP             R0, #0
47E0A6:  IT EQ
47E0A8:  MOVEQ           R1, R5
47E0AA:  CMP             R6, R12
47E0AC:  IT EQ
47E0AE:  MOVEQ.W         R8, #2
47E0B2:  CMP             R6, R3
47E0B4:  IT EQ
47E0B6:  MOVEQ.W         R8, #2
47E0BA:  CMP             R6, R10
47E0BC:  IT EQ
47E0BE:  MOVEQ           R8, R1
47E0C0:  CMP             R0, #0
47E0C2:  IT NE
47E0C4:  MOVNE           R8, R1
47E0C6:  LDR             R0, [R4]
47E0C8:  MOVS            R1, #4
47E0CA:  STR.W           R11, [R0,#0x14]
47E0CE:  LDR             R0, [R4]
47E0D0:  STR             R6, [R0,#0x18]
47E0D2:  LDR             R0, [R4]
47E0D4:  STR.W           R8, [R0,#0x1C]
47E0D8:  LDR             R0, [R4]
47E0DA:  LDR             R2, [R0,#4]
47E0DC:  MOV             R0, R4
47E0DE:  BLX             R2
47E0E0:  AND.W           R0, R8, #3
47E0E4:  CMP             R0, #3
47E0E6:  BEQ             loc_47E106
47E0E8:  CMP             R0, #2
47E0EA:  BEQ             loc_47E0F2
47E0EC:  CMP             R0, #1
47E0EE:  BNE             loc_47E0C6
47E0F0:  B               loc_47E100
47E0F2:  MOV             R0, R4
47E0F4:  BL              sub_47E110
47E0F8:  CMP             R0, #0
47E0FA:  BNE             loc_47E060
47E0FC:  MOVS            R0, #0
47E0FE:  B               loc_47E108
47E100:  MOVS            R0, #0
47E102:  STR.W           R0, [R4,#0x17C]
47E106:  MOVS            R0, #1
47E108:  ADD             SP, SP, #0xC
47E10A:  POP.W           {R8-R11}
47E10E:  POP             {R4-R7,PC}
