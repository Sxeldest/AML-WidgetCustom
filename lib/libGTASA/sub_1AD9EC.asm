; =========================================================
; Game Engine Function: sub_1AD9EC
; Address            : 0x1AD9EC - 0x1ADA22
; =========================================================

1AD9EC:  PUSH            {R7,LR}
1AD9EE:  MOV             R7, SP
1AD9F0:  SUB             SP, SP, #0x10
1AD9F2:  MOV             R12, R1
1AD9F4:  MOV             R1, R0
1AD9F6:  LDR             R0, =(dword_6B31D0 - 0x1ADA00)
1AD9F8:  LDR.W           LR, [R7,#8]
1AD9FC:  ADD             R0, PC; dword_6B31D0
1AD9FE:  STRH.W          R3, [R7,#-4]
1ADA02:  STRH.W          R2, [R7,#-6]
1ADA06:  SUBS            R3, R7, #6
1ADA08:  LDR             R0, [R0]
1ADA0A:  MOV             R2, R12
1ADA0C:  STRH.W          LR, [R7,#-2]
1ADA10:  LDR.W           LR, [R0,#0x24]
1ADA14:  MOVS            R0, #3
1ADA16:  STR             R0, [SP,#0x18+var_18]
1ADA18:  MOVS            R0, #3
1ADA1A:  BLX             LR
1ADA1C:  MOVS            R0, #1
1ADA1E:  ADD             SP, SP, #0x10
1ADA20:  POP             {R7,PC}
