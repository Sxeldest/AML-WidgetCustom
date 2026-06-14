; =========================================================
; Game Engine Function: gzrewind
; Address            : 0x20D028 - 0x20D078
; =========================================================

20D028:  PUSH            {R4,R6,R7,LR}
20D02A:  ADD             R7, SP, #8
20D02C:  MOV             R4, R0
20D02E:  CBZ             R4, loc_20D068
20D030:  LDRB.W          R0, [R4,#0x5C]
20D034:  CMP             R0, #0x72 ; 'r'
20D036:  BNE             loc_20D068
20D038:  LDR             R0, [R4,#0x44]
20D03A:  MOVS            R1, #0
20D03C:  STRD.W          R1, R1, [R4,#0x38]
20D040:  MOVS            R2, #0
20D042:  STRD.W          R0, R1, [R4]
20D046:  MOVS            R0, #0
20D048:  MOVS            R1, #0
20D04A:  BLX             j_crc32
20D04E:  LDR             R1, [R4,#0x60]
20D050:  STR             R0, [R4,#0x4C]
20D052:  CBZ             R1, loc_20D06E
20D054:  MOV             R0, R4
20D056:  BLX             j_inflateReset
20D05A:  LDR             R0, [R4,#0x40]; stream
20D05C:  MOVS            R2, #0; whence
20D05E:  LDR             R1, [R4,#0x60]; off
20D060:  POP.W           {R4,R6,R7,LR}
20D064:  B.W             j_fseek
20D068:  MOV.W           R0, #0xFFFFFFFF
20D06C:  POP             {R4,R6,R7,PC}
20D06E:  LDR             R0, [R4,#0x40]; stream
20D070:  BLX             rewind
20D074:  MOVS            R0, #0
20D076:  POP             {R4,R6,R7,PC}
