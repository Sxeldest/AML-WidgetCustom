; =========================================================
; Game Engine Function: sub_11D048
; Address            : 0x11D048 - 0x11D074
; =========================================================

11D048:  PUSH            {R4,R6,R7,LR}
11D04A:  ADD             R7, SP, #8
11D04C:  MOV             R4, R0
11D04E:  LDR             R0, [R1,#0x10]
11D050:  CBZ             R0, loc_11D05E
11D052:  CMP             R1, R0
11D054:  BEQ             loc_11D064
11D056:  LDR             R1, [R0]
11D058:  LDR             R1, [R1,#8]
11D05A:  BLX             R1
11D05C:  B               loc_11D060
11D05E:  MOVS            R0, #0
11D060:  STR             R0, [R4,#0x10]
11D062:  B               loc_11D070
11D064:  STR             R4, [R4,#0x10]
11D066:  LDR             R0, [R1,#0x10]
11D068:  LDR             R1, [R0]
11D06A:  LDR             R2, [R1,#0xC]
11D06C:  MOV             R1, R4
11D06E:  BLX             R2
11D070:  MOV             R0, R4
11D072:  POP             {R4,R6,R7,PC}
