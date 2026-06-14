; =========================================================
; Game Engine Function: celt_decoder_get_size
; Address            : 0xB91A2 - 0xB91CC
; =========================================================

B91A2:  PUSH            {R4,R6,R7,LR}
B91A4:  ADD             R7, SP, #8
B91A6:  MOV             R4, R0
B91A8:  MOVW            R0, #0xBB80
B91AC:  MOV.W           R1, #0x3C0
B91B0:  MOVS            R2, #0
B91B2:  BLX             j_opus_custom_mode_create
B91B6:  LDRD.W          R1, R0, [R0,#4]
B91BA:  MOVW            R2, #0x2030
B91BE:  ADD.W           R1, R2, R1,LSL#2
B91C2:  MULS            R1, R4
B91C4:  ADD.W           R0, R1, R0,LSL#4
B91C8:  ADDS            R0, #0x58 ; 'X'
B91CA:  POP             {R4,R6,R7,PC}
