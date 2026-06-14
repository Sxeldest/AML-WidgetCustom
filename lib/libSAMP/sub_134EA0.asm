; =========================================================
; Game Engine Function: sub_134EA0
; Address            : 0x134EA0 - 0x134ECC
; =========================================================

134EA0:  PUSH            {R4,R6,R7,LR}
134EA2:  ADD             R7, SP, #8
134EA4:  MOV             R4, R0
134EA6:  LDRB.W          R0, [R0,#0x50]
134EAA:  CBZ             R0, loc_134EB6
134EAC:  LDR             R0, [R4]
134EAE:  MOVS            R1, #0
134EB0:  LDR             R2, [R0,#0x24]
134EB2:  MOV             R0, R4
134EB4:  BLX             R2
134EB6:  LDR             R0, =(off_234A20 - 0x134EC2)
134EB8:  MOVS            R1, #0
134EBA:  STRB.W          R1, [R4,#0x50]
134EBE:  ADD             R0, PC; off_234A20
134EC0:  LDR             R0, [R0]; dword_23DF0C
134EC2:  LDR             R0, [R0]
134EC4:  POP.W           {R4,R6,R7,LR}
134EC8:  B.W             sub_147ED4
