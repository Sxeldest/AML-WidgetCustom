; =========================================================
; Game Engine Function: sub_120AC0
; Address            : 0x120AC0 - 0x120AE0
; =========================================================

120AC0:  PUSH            {R4,R6,R7,LR}
120AC2:  ADD             R7, SP, #8
120AC4:  MOV             R4, R0
120AC6:  LDR             R0, [R0,#0x10]
120AC8:  CMP             R4, R0
120ACA:  BEQ             loc_120AD2
120ACC:  CBZ             R0, loc_120ADC
120ACE:  MOVS            R1, #5
120AD0:  B               loc_120AD4
120AD2:  MOVS            R1, #4
120AD4:  LDR             R2, [R0]
120AD6:  LDR.W           R1, [R2,R1,LSL#2]
120ADA:  BLX             R1
120ADC:  MOV             R0, R4
120ADE:  POP             {R4,R6,R7,PC}
