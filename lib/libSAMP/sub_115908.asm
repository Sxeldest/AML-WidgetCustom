; =========================================================
; Game Engine Function: sub_115908
; Address            : 0x115908 - 0x11592E
; =========================================================

115908:  PUSH            {R7,LR}
11590A:  MOV             R7, SP
11590C:  SUB             SP, SP, #0x10
11590E:  LDR             R0, [R0,#0x10]
115910:  STRD.W          R2, R1, [SP,#0x18+var_10]
115914:  STR             R3, [SP,#0x18+var_14]
115916:  CBZ             R0, loc_11592A
115918:  LDR             R1, [R0]
11591A:  ADD             R2, SP, #0x18+var_10
11591C:  ADD             R3, SP, #0x18+var_14
11591E:  LDR.W           R12, [R1,#0x18]
115922:  ADD             R1, SP, #0x18+var_C
115924:  BLX             R12
115926:  ADD             SP, SP, #0x10
115928:  POP             {R7,PC}
11592A:  BL              sub_DC92C
