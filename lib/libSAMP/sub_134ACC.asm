; =========================================================
; Game Engine Function: sub_134ACC
; Address            : 0x134ACC - 0x134B00
; =========================================================

134ACC:  PUSH            {R4,R6,R7,LR}
134ACE:  ADD             R7, SP, #8
134AD0:  LDR             R4, [R0,#4]
134AD2:  LDRB.W          R0, [R4,#0x50]
134AD6:  CBZ             R0, loc_134AE2
134AD8:  LDR             R0, [R4]
134ADA:  MOVS            R1, #0
134ADC:  LDR             R2, [R0,#0x24]
134ADE:  MOV             R0, R4
134AE0:  BLX             R2
134AE2:  LDR             R0, =(off_23496C - 0x134AEE)
134AE4:  MOVS            R1, #0
134AE6:  STRB.W          R1, [R4,#0x50]
134AEA:  ADD             R0, PC; off_23496C
134AEC:  LDR             R0, [R0]; dword_23DEF4
134AEE:  LDR             R0, [R0]
134AF0:  CBZ             R0, locret_134AFE
134AF2:  LDR             R1, =(aDonate - 0x134AF8); "/donate" ...
134AF4:  ADD             R1, PC; "/donate"
134AF6:  POP.W           {R4,R6,R7,LR}
134AFA:  B.W             sub_144460
134AFE:  POP             {R4,R6,R7,PC}
