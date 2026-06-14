; =========================================================
; Game Engine Function: sub_16E490
; Address            : 0x16E490 - 0x16E4B4
; =========================================================

16E490:  SUB             SP, SP, #0xC
16E492:  PUSH            {R7,LR}
16E494:  MOV             R7, SP
16E496:  SUB             SP, SP, #4
16E498:  ADD.W           R12, R7, #8
16E49C:  STM.W           R12, {R1-R3}
16E4A0:  ADD.W           R1, R7, #8
16E4A4:  STR             R1, [SP,#0x18+var_18]
16E4A6:  BL              sub_170158
16E4AA:  ADD             SP, SP, #4
16E4AC:  POP.W           {R7,LR}
16E4B0:  ADD             SP, SP, #0xC
16E4B2:  BX              LR
