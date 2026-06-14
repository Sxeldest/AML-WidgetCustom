; =========================================================
; Game Engine Function: sub_15E31E
; Address            : 0x15E31E - 0x15E330
; =========================================================

15E31E:  PUSH            {R7,LR}
15E320:  MOV             R7, SP
15E322:  LDR             R0, [R0,#4]
15E324:  BLX             j_opus_repacketizer_cat
15E328:  CLZ.W           R0, R0
15E32C:  LSRS            R0, R0, #5
15E32E:  POP             {R7,PC}
