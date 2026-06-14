; =========================================================
; Game Engine Function: sub_10F6F4
; Address            : 0x10F6F4 - 0x10F71A
; =========================================================

10F6F4:  PUSH            {R4,R6,R7,LR}
10F6F6:  ADD             R7, SP, #8
10F6F8:  SUB             SP, SP, #8
10F6FA:  MOV             R4, R0
10F6FC:  BL              sub_10F720
10F700:  LDR             R0, =(unk_2632A8 - 0x10F708)
10F702:  STR             R4, [SP,#0x10+var_C]
10F704:  ADD             R0, PC; unk_2632A8
10F706:  LDR             R0, [R0,#(dword_2632B8 - 0x2632A8)]
10F708:  CBZ             R0, loc_10F716
10F70A:  LDR             R1, [R0]
10F70C:  LDR             R2, [R1,#0x18]
10F70E:  ADD             R1, SP, #0x10+var_C
10F710:  BLX             R2
10F712:  ADD             SP, SP, #8
10F714:  POP             {R4,R6,R7,PC}
10F716:  BL              sub_DC92C
