; =========================================================
; Game Engine Function: celt_encoder_get_size
; Address            : 0xD6E58 - 0xD6E80
; =========================================================

D6E58:  PUSH            {R4,R6,R7,LR}
D6E5A:  ADD             R7, SP, #8
D6E5C:  MOV             R4, R0
D6E5E:  MOVW            R0, #0xBB80
D6E62:  MOV.W           R1, #0x3C0
D6E66:  MOVS            R2, #0
D6E68:  BLX             j_opus_custom_mode_create
D6E6C:  LDRD.W          R1, R0, [R0,#4]
D6E70:  LSLS            R1, R1, #2
D6E72:  ADD.W           R0, R1, R0,LSL#3
D6E76:  ADD.W           R0, R0, #0x1000
D6E7A:  MULS            R0, R4
D6E7C:  ADDS            R0, #0xF4
D6E7E:  POP             {R4,R6,R7,PC}
