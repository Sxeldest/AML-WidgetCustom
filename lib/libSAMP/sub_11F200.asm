; =========================================================
; Game Engine Function: sub_11F200
; Address            : 0x11F200 - 0x11F22C
; =========================================================

11F200:  PUSH            {R4,R6,R7,LR}
11F202:  ADD             R7, SP, #8
11F204:  MOV             R4, R0
11F206:  LDR             R0, [R1,#0x10]
11F208:  CBZ             R0, loc_11F216
11F20A:  CMP             R1, R0
11F20C:  BEQ             loc_11F21C
11F20E:  LDR             R1, [R0]
11F210:  LDR             R1, [R1,#8]
11F212:  BLX             R1
11F214:  B               loc_11F218
11F216:  MOVS            R0, #0
11F218:  STR             R0, [R4,#0x10]
11F21A:  B               loc_11F228
11F21C:  STR             R4, [R4,#0x10]
11F21E:  LDR             R0, [R1,#0x10]
11F220:  LDR             R1, [R0]
11F222:  LDR             R2, [R1,#0xC]
11F224:  MOV             R1, R4
11F226:  BLX             R2
11F228:  MOV             R0, R4
11F22A:  POP             {R4,R6,R7,PC}
