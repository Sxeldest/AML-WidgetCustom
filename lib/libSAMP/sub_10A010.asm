; =========================================================
; Game Engine Function: sub_10A010
; Address            : 0x10A010 - 0x10A05E
; =========================================================

10A010:  PUSH            {R4-R7,LR}
10A012:  ADD             R7, SP, #0xC
10A014:  PUSH.W          {R8}
10A018:  SUB             SP, SP, #8
10A01A:  MOV             R6, R0
10A01C:  LDR             R0, [R0,#0xC]
10A01E:  CBZ             R0, loc_10A056
10A020:  MOV             R4, R3
10A022:  MOV             R5, R2
10A024:  MOV             R8, R1
10A026:  BL              sub_10837C
10A02A:  CMP             R0, #1
10A02C:  BNE             loc_10A056
10A02E:  LDR             R0, =(off_23494C - 0x10A03C)
10A030:  MOVS            R2, #1
10A032:  VMOV            S0, R4
10A036:  MOV             R3, R8
10A038:  ADD             R0, PC; off_23494C
10A03A:  LDR             R1, [R0]; dword_23DF24
10A03C:  LDR             R0, [R6,#0xC]
10A03E:  STR             R2, [SP,#0x18+var_14]
10A040:  MOVW            R2, #0x785
10A044:  LDR             R1, [R1]
10A046:  MOVT            R2, #0x55 ; 'U'
10A04A:  VSTR            S0, [SP,#0x18+var_18]
10A04E:  ADDS            R6, R1, R2
10A050:  MOVS            R1, #0
10A052:  MOV             R2, R5
10A054:  BLX             R6
10A056:  ADD             SP, SP, #8
10A058:  POP.W           {R8}
10A05C:  POP             {R4-R7,PC}
