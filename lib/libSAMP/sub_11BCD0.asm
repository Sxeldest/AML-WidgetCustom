; =========================================================
; Game Engine Function: sub_11BCD0
; Address            : 0x11BCD0 - 0x11BD1C
; =========================================================

11BCD0:  PUSH            {R4,R6,R7,LR}
11BCD2:  ADD             R7, SP, #8
11BCD4:  SUB             SP, SP, #8
11BCD6:  LDR             R4, =(off_23494C - 0x11BCE0)
11BCD8:  MOV.W           R12, #0
11BCDC:  ADD             R4, PC; off_23494C
11BCDE:  LDR             R4, [R4]; dword_23DF24
11BCE0:  LDR.W           LR, [R4]
11BCE4:  CMP.W           LR, #0
11BCE8:  ITTT NE
11BCEA:  MOVWNE          R4, #0x5B74
11BCEE:  MOVTNE          R4, #0x67 ; 'g'
11BCF2:  ADDSNE.W        LR, LR, R4
11BCF6:  BNE             loc_11BCFE
11BCF8:  MOV             R0, R12
11BCFA:  ADD             SP, SP, #8
11BCFC:  POP             {R4,R6,R7,PC}
11BCFE:  LDR.W           R12, [LR]
11BD02:  CMP.W           R12, #0
11BD06:  BEQ             loc_11BD16
11BD08:  LDRD.W          R4, LR, [R7,#arg_0]
11BD0C:  STRD.W          R4, LR, [SP,#0x10+var_10]
11BD10:  BLX             R12
11BD12:  MOV             R12, R0
11BD14:  B               loc_11BCF8
11BD16:  MOV.W           R12, #0
11BD1A:  B               loc_11BCF8
