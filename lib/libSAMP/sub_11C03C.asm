; =========================================================
; Game Engine Function: sub_11C03C
; Address            : 0x11C03C - 0x11C084
; =========================================================

11C03C:  PUSH            {R4,R5,R7,LR}
11C03E:  ADD             R7, SP, #8
11C040:  MOV             R4, R0
11C042:  LDR             R0, [R0,#0x10]
11C044:  MOV             R5, R1
11C046:  MOVS            R1, #0
11C048:  CMP             R4, R0
11C04A:  STR             R1, [R4,#0x10]
11C04C:  BEQ             loc_11C054
11C04E:  CBZ             R0, loc_11C05E
11C050:  MOVS            R1, #5
11C052:  B               loc_11C056
11C054:  MOVS            R1, #4
11C056:  LDR             R2, [R0]
11C058:  LDR.W           R1, [R2,R1,LSL#2]
11C05C:  BLX             R1
11C05E:  LDR             R0, [R5,#0x10]
11C060:  CBZ             R0, loc_11C06E
11C062:  CMP             R5, R0
11C064:  BEQ             loc_11C074
11C066:  STR             R0, [R4,#0x10]
11C068:  MOVS            R0, #0
11C06A:  STR             R0, [R5,#0x10]
11C06C:  B               loc_11C080
11C06E:  MOVS            R0, #0
11C070:  STR             R0, [R4,#0x10]
11C072:  B               loc_11C080
11C074:  STR             R4, [R4,#0x10]
11C076:  LDR             R0, [R5,#0x10]
11C078:  LDR             R1, [R0]
11C07A:  LDR             R2, [R1,#0xC]
11C07C:  MOV             R1, R4
11C07E:  BLX             R2
11C080:  MOV             R0, R4
11C082:  POP             {R4,R5,R7,PC}
