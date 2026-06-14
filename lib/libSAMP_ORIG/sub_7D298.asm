; =========================================================
; Game Engine Function: sub_7D298
; Address            : 0x7D298 - 0x7D2CA
; =========================================================

7D298:  PUSH            {R4,R6,R7,LR}
7D29A:  ADD             R7, SP, #8
7D29C:  LDR             R1, =(_ZTV7CButton - 0x7D2A6); `vtable for'CButton ...
7D29E:  MOV             R4, R0
7D2A0:  LDR             R0, [R0,#0x68]
7D2A2:  ADD             R1, PC; `vtable for'CButton
7D2A4:  ADDS            R1, #8
7D2A6:  STR             R1, [R4]
7D2A8:  ADD.W           R1, R4, #0x58 ; 'X'
7D2AC:  CMP             R1, R0
7D2AE:  BEQ             loc_7D2B6
7D2B0:  CBZ             R0, loc_7D2C0
7D2B2:  MOVS            R1, #5
7D2B4:  B               loc_7D2B8
7D2B6:  MOVS            R1, #4
7D2B8:  LDR             R2, [R0]
7D2BA:  LDR.W           R1, [R2,R1,LSL#2]
7D2BE:  BLX             R1
7D2C0:  MOV             R0, R4
7D2C2:  POP.W           {R4,R6,R7,LR}
7D2C6:  B.W             sub_7C3B4
