; =========================================================
; Game Engine Function: sub_129898
; Address            : 0x129898 - 0x1298BC
; =========================================================

129898:  PUSH            {R7,LR}
12989A:  MOV             R7, SP
12989C:  LDR             R1, =(off_23494C - 0x1298A2)
12989E:  ADD             R1, PC; off_23494C
1298A0:  LDR             R1, [R1]; dword_23DF24
1298A2:  LDR             R1, [R1]
1298A4:  CBZ             R1, locret_1298BA
1298A6:  MOV             R2, #0x66FD50
1298AE:  ADDS            R1, R1, R2
1298B0:  ITT NE
1298B2:  LDRNE           R1, [R1]
1298B4:  CMPNE           R1, #0
1298B6:  BEQ             locret_1298BA
1298B8:  BLX             R1
1298BA:  POP             {R7,PC}
