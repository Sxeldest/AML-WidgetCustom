; =========================================================
; Game Engine Function: sub_10679C
; Address            : 0x10679C - 0x1067F4
; =========================================================

10679C:  PUSH            {R4,R5,R7,LR}
10679E:  ADD             R7, SP, #8
1067A0:  SUB             SP, SP, #0x70
1067A2:  LDR             R2, [R0,#0x3C]
1067A4:  MOV             R4, R0
1067A6:  CBZ             R2, loc_1067D6
1067A8:  LDR             R0, =(aIifffiissi - 0x1067B8); "\n\aiifffiissi" ...
1067AA:  MOVS            R5, #0
1067AC:  LDR             R1, [R4,#8]
1067AE:  MOV.W           R12, #0x10
1067B2:  LDR             R3, =(aNull - 0x1067BC); "NULL" ...
1067B4:  ADD             R0, PC; "\n\aiifffiissi"
1067B6:  STR             R5, [SP,#0x78+var_50]
1067B8:  ADD             R3, PC; "NULL"
1067BA:  STRD.W          R5, R5, [SP,#0x78+var_78]
1067BE:  STRD.W          R5, R5, [SP,#0x78+var_70]
1067C2:  STRD.W          R3, R3, [SP,#0x78+var_58]
1067C6:  MOVS            R3, #6
1067C8:  STRD.W          R5, R5, [SP,#0x78+var_68]
1067CC:  STRD.W          R3, R12, [SP,#0x78+var_60]
1067D0:  BL              sub_107188
1067D4:  STR             R5, [R4,#0x3C]
1067D6:  ADD             R1, SP, #0x78+var_48
1067D8:  MOV             R0, R4
1067DA:  BL              sub_F8910
1067DE:  LDR             R0, [R4]
1067E0:  ADD             R3, SP, #0x78+var_18
1067E2:  LDM             R3, {R1-R3}
1067E4:  LDR             R5, [R0,#0x10]
1067E6:  MOV             R0, R4
1067E8:  BLX             R5
1067EA:  MOVS            R0, #0
1067EC:  STRB.W          R0, [R4,#0x3B]
1067F0:  ADD             SP, SP, #0x70 ; 'p'
1067F2:  POP             {R4,R5,R7,PC}
