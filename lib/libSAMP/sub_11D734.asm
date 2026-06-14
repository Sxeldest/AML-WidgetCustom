; =========================================================
; Game Engine Function: sub_11D734
; Address            : 0x11D734 - 0x11D782
; =========================================================

11D734:  PUSH            {R4,R6,R7,LR}
11D736:  ADD             R7, SP, #8
11D738:  SUB             SP, SP, #0x28
11D73A:  LDR             R0, [R0,#0x10]
11D73C:  LDR.W           R12, [R7,#arg_10]
11D740:  STRD.W          R2, R1, [SP,#0x30+var_10]
11D744:  STR             R3, [SP,#0x30+var_14]
11D746:  STRB.W          R12, [R7,#var_15]
11D74A:  CBZ             R0, loc_11D77E
11D74C:  LDR             R1, [R0]
11D74E:  ADD.W           R2, R7, #0x14
11D752:  ADD.W           R3, R7, #0x10
11D756:  ADD.W           R4, R7, #8
11D75A:  SUB.W           LR, R7, #-var_15
11D75E:  LDR.W           R12, [R1,#0x18]
11D762:  ADD.W           R1, R7, #0xC
11D766:  STRD.W          R3, R2, [SP,#0x30+var_28]
11D76A:  ADD             R2, SP, #0x30+var_10
11D76C:  STRD.W          R4, R1, [SP,#0x30+var_30]
11D770:  ADD             R1, SP, #0x30+var_C
11D772:  ADD             R3, SP, #0x30+var_14
11D774:  STR.W           LR, [SP,#0x30+var_20]
11D778:  BLX             R12
11D77A:  ADD             SP, SP, #0x28 ; '('
11D77C:  POP             {R4,R6,R7,PC}
11D77E:  BL              sub_DC92C
