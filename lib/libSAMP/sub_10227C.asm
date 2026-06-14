; =========================================================
; Game Engine Function: sub_10227C
; Address            : 0x10227C - 0x1022A6
; =========================================================

10227C:  LDR             R0, [R0,#4]
10227E:  CBZ             R0, loc_10229E
102280:  LDR             R1, =(off_23494C - 0x102290)
102282:  MOVW            R3, #0x7D24
102286:  LDR             R2, [R0]
102288:  MOVT            R3, #0x66 ; 'f'
10228C:  ADD             R1, PC; off_23494C
10228E:  LDR             R1, [R1]; dword_23DF24
102290:  LDR             R1, [R1]
102292:  ADD             R1, R3
102294:  CMP             R2, R1
102296:  ITT NE
102298:  LDRNE           R0, [R0,#0x18]
10229A:  CMPNE           R0, #0
10229C:  BNE             loc_1022A2
10229E:  MOVS            R0, #0
1022A0:  BX              LR
1022A2:  MOVS            R0, #1
1022A4:  BX              LR
