; =========================================================
; Game Engine Function: sub_1341B8
; Address            : 0x1341B8 - 0x1341EC
; =========================================================

1341B8:  PUSH            {R4,R6,R7,LR}
1341BA:  ADD             R7, SP, #8
1341BC:  MOV             R4, R0
1341BE:  LDR             R0, =(off_234C0C - 0x1341C4)
1341C0:  ADD             R0, PC; off_234C0C
1341C2:  LDR             R1, [R0]; `vtable for'Button ...
1341C4:  LDR             R0, [R4,#0x68]
1341C6:  ADDS            R1, #8
1341C8:  STR             R1, [R4]
1341CA:  ADD.W           R1, R4, #0x58 ; 'X'
1341CE:  CMP             R1, R0
1341D0:  BEQ             loc_1341D8
1341D2:  CBZ             R0, loc_1341E2
1341D4:  MOVS            R1, #5
1341D6:  B               loc_1341DA
1341D8:  MOVS            R1, #4
1341DA:  LDR             R2, [R0]
1341DC:  LDR.W           R1, [R2,R1,LSL#2]
1341E0:  BLX             R1
1341E2:  MOV             R0, R4
1341E4:  POP.W           {R4,R6,R7,LR}
1341E8:  B.W             sub_12BCE4
