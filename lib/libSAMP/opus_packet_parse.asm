; =========================================================
; Game Engine Function: opus_packet_parse
; Address            : 0x1A2D48 - 0x1A2D6A
; =========================================================

1A2D48:  PUSH            {R4,R6,R7,LR}
1A2D4A:  ADD             R7, SP, #8
1A2D4C:  SUB             SP, SP, #0x10
1A2D4E:  MOV             R12, R2
1A2D50:  LDRD.W          R2, LR, [R7,#arg_0]
1A2D54:  MOVS            R4, #0
1A2D56:  STRD.W          R3, R2, [SP,#0x18+var_18]
1A2D5A:  MOVS            R2, #0
1A2D5C:  MOV             R3, R12
1A2D5E:  STRD.W          LR, R4, [SP,#0x18+var_10]
1A2D62:  BLX             j_opus_packet_parse_impl
1A2D66:  ADD             SP, SP, #0x10
1A2D68:  POP             {R4,R6,R7,PC}
