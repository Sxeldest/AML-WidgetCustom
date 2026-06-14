; =========================================================
; Game Engine Function: celt_decoder_get_size
; Address            : 0x1973C6 - 0x1973F0
; =========================================================

1973C6:  PUSH            {R4,R6,R7,LR}
1973C8:  ADD             R7, SP, #8
1973CA:  MOV             R4, R0
1973CC:  MOVW            R0, #0xBB80
1973D0:  MOV.W           R1, #0x3C0
1973D4:  MOVS            R2, #0
1973D6:  BLX             j_opus_custom_mode_create
1973DA:  LDRD.W          R1, R0, [R0,#4]
1973DE:  MOVW            R2, #0x2030
1973E2:  ADD.W           R1, R2, R1,LSL#2
1973E6:  MULS            R1, R4
1973E8:  ADD.W           R0, R1, R0,LSL#4
1973EC:  ADDS            R0, #0x58 ; 'X'
1973EE:  POP             {R4,R6,R7,PC}
