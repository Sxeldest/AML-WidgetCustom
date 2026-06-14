; =========================================================
; Game Engine Function: sub_EA246
; Address            : 0xEA246 - 0xEA270
; =========================================================

EA246:  PUSH            {R4,R6,R7,LR}
EA248:  ADD             R7, SP, #8
EA24A:  MOV             R4, R0
EA24C:  MOVS            R0, #0
EA24E:  STRD.W          R0, R0, [R3]
EA252:  STR             R1, [R3,#8]
EA254:  STR             R3, [R2]
EA256:  LDR             R0, [R4]
EA258:  LDR             R0, [R0]
EA25A:  CBZ             R0, loc_EA260
EA25C:  STR             R0, [R4]
EA25E:  LDR             R3, [R2]
EA260:  LDR             R0, [R4,#4]
EA262:  MOV             R1, R3
EA264:  BL              sub_EA2D2
EA268:  LDR             R0, [R4,#8]
EA26A:  ADDS            R0, #1
EA26C:  STR             R0, [R4,#8]
EA26E:  POP             {R4,R6,R7,PC}
