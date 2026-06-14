; =========================================================
; Game Engine Function: sub_15E0E8
; Address            : 0x15E0E8 - 0x15E0F8
; =========================================================

15E0E8:  PUSH            {R4,R6,R7,LR}
15E0EA:  ADD             R7, SP, #8
15E0EC:  MOV             R4, R0
15E0EE:  LDR             R0, [R0]
15E0F0:  BLX             j_opus_decoder_destroy
15E0F4:  MOV             R0, R4
15E0F6:  POP             {R4,R6,R7,PC}
