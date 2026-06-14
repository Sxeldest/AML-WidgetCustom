; =========================================================
; Game Engine Function: celt_encoder_get_size
; Address            : 0x1B4C18 - 0x1B4C40
; =========================================================

1B4C18:  PUSH            {R4,R6,R7,LR}
1B4C1A:  ADD             R7, SP, #8
1B4C1C:  MOV             R4, R0
1B4C1E:  MOVW            R0, #0xBB80
1B4C22:  MOV.W           R1, #0x3C0
1B4C26:  MOVS            R2, #0
1B4C28:  BLX             j_opus_custom_mode_create
1B4C2C:  LDRD.W          R1, R0, [R0,#4]
1B4C30:  LSLS            R1, R1, #2
1B4C32:  ADD.W           R0, R1, R0,LSL#3
1B4C36:  ADD.W           R0, R0, #0x1000
1B4C3A:  MULS            R0, R4
1B4C3C:  ADDS            R0, #0xF4
1B4C3E:  POP             {R4,R6,R7,PC}
