; =========================================================
; Game Engine Function: alSourceRewind
; Address            : 0x25ACCC - 0x25ACE0
; =========================================================

25ACCC:  PUSH            {R7,LR}
25ACCE:  MOV             R7, SP
25ACD0:  SUB             SP, SP, #8
25ACD2:  ADD             R1, SP, #0x10+var_C
25ACD4:  STR             R0, [SP,#0x10+var_C]
25ACD6:  MOVS            R0, #1
25ACD8:  BLX             j_alSourceRewindv
25ACDC:  ADD             SP, SP, #8
25ACDE:  POP             {R7,PC}
