; =========================================================
; Game Engine Function: sub_123AD0
; Address            : 0x123AD0 - 0x123AF0
; =========================================================

123AD0:  PUSH            {R4,R6,R7,LR}
123AD2:  ADD             R7, SP, #8
123AD4:  MOV             R4, R0
123AD6:  LDR             R0, [R0,#0x10]
123AD8:  CMP             R4, R0
123ADA:  BEQ             loc_123AE2
123ADC:  CBZ             R0, loc_123AEC
123ADE:  MOVS            R1, #5
123AE0:  B               loc_123AE4
123AE2:  MOVS            R1, #4
123AE4:  LDR             R2, [R0]
123AE6:  LDR.W           R1, [R2,R1,LSL#2]
123AEA:  BLX             R1
123AEC:  MOV             R0, R4
123AEE:  POP             {R4,R6,R7,PC}
