; =========================================================
; Game Engine Function: opus_repacketizer_out
; Address            : 0xDBA44 - 0xDBA64
; =========================================================

DBA44:  PUSH            {R7,LR}
DBA46:  MOV             R7, SP
DBA48:  SUB             SP, SP, #0x10
DBA4A:  LDR             R3, [R0,#4]
DBA4C:  MOV             R12, R1
DBA4E:  MOVS            R1, #0
DBA50:  STRD.W          R2, R1, [SP,#0x18+var_18]
DBA54:  STR             R1, [SP,#0x18+var_10]
DBA56:  MOV             R2, R3
DBA58:  MOVS            R1, #0
DBA5A:  MOV             R3, R12
DBA5C:  BLX             j_opus_repacketizer_out_range_impl
DBA60:  ADD             SP, SP, #0x10
DBA62:  POP             {R7,PC}
