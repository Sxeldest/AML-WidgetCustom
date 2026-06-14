; =========================================================
; Game Engine Function: opus_packet_parse
; Address            : 0xC4F88 - 0xC4FAA
; =========================================================

C4F88:  PUSH            {R4,R6,R7,LR}
C4F8A:  ADD             R7, SP, #8
C4F8C:  SUB             SP, SP, #0x10
C4F8E:  MOV             R12, R2
C4F90:  LDRD.W          R2, LR, [R7,#arg_0]
C4F94:  MOVS            R4, #0
C4F96:  STRD.W          R3, R2, [SP,#0x18+var_18]
C4F9A:  MOVS            R2, #0
C4F9C:  MOV             R3, R12
C4F9E:  STRD.W          LR, R4, [SP,#0x18+var_10]
C4FA2:  BLX             j_opus_packet_parse_impl
C4FA6:  ADD             SP, SP, #0x10
C4FA8:  POP             {R4,R6,R7,PC}
