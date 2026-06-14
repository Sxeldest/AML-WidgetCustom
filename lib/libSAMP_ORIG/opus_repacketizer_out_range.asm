; =========================================================
; Game Engine Function: opus_repacketizer_out_range
; Address            : 0xDBA26 - 0xDBA44
; =========================================================

DBA26:  PUSH            {R7,LR}
DBA28:  MOV             R7, SP
DBA2A:  SUB             SP, SP, #0x10
DBA2C:  LDR.W           R12, [R7,#8]
DBA30:  MOV.W           LR, #0
DBA34:  STRD.W          R12, LR, [SP,#0x18+var_18]
DBA38:  STR.W           LR, [SP,#0x18+var_10]
DBA3C:  BLX             j_opus_repacketizer_out_range_impl
DBA40:  ADD             SP, SP, #0x10
DBA42:  POP             {R7,PC}
