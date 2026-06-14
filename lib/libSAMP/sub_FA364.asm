; =========================================================
; Game Engine Function: sub_FA364
; Address            : 0xFA364 - 0xFA38E
; =========================================================

FA364:  LDR             R0, =(off_23494C - 0xFA372)
FA366:  MOV             R1, #0x7A1E18
FA36E:  ADD             R0, PC; off_23494C
FA370:  LDR             R0, [R0]; dword_23DF24
FA372:  LDR             R0, [R0]
FA374:  LDR             R1, [R0,R1]
FA376:  LDR             R0, [R1,#8]
FA378:  CMP             R0, #1
FA37A:  IT LT
FA37C:  BXLT            LR
FA37E:  LDR             R1, [R1]
FA380:  MOVS            R2, #0
FA382:  ADDS            R1, #0x30 ; '0'
FA384:  STRH.W          R2, [R1],#0x3C
FA388:  SUBS            R0, #1
FA38A:  BNE             loc_FA384
FA38C:  BX              LR
