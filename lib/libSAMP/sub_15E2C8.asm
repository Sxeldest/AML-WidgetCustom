; =========================================================
; Game Engine Function: sub_15E2C8
; Address            : 0x15E2C8 - 0x15E2DE
; =========================================================

15E2C8:  PUSH            {R4,R6,R7,LR}
15E2CA:  ADD             R7, SP, #8
15E2CC:  MOV             R4, R0
15E2CE:  LDR             R0, [R0]
15E2D0:  BLX             j_opus_encoder_destroy
15E2D4:  LDR             R0, [R4,#4]
15E2D6:  BLX             j_opus_repacketizer_destroy
15E2DA:  MOV             R0, R4
15E2DC:  POP             {R4,R6,R7,PC}
