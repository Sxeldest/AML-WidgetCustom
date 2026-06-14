; =========================================================
; Game Engine Function: sub_15E330
; Address            : 0x15E330 - 0x15E348
; =========================================================

15E330:  PUSH            {R4,R5,R7,LR}
15E332:  ADD             R7, SP, #8
15E334:  MOV             R4, R0
15E336:  LDR             R0, [R0,#4]
15E338:  BLX             j_opus_repacketizer_out
15E33C:  MOV             R5, R0
15E33E:  LDR             R0, [R4,#4]
15E340:  BLX             j_opus_repacketizer_init
15E344:  MOV             R0, R5
15E346:  POP             {R4,R5,R7,PC}
