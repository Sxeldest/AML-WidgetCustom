; =========================================================
; Game Engine Function: opus_ifft_c
; Address            : 0xC4B1E - 0xC4B90
; =========================================================

C4B1E:  PUSH            {R4-R7,LR}
C4B20:  ADD             R7, SP, #0xC
C4B22:  PUSH.W          {R11}
C4B26:  MOV             R5, R0
C4B28:  MOV             R6, R2
C4B2A:  LDR             R0, [R5]
C4B2C:  CMP             R0, #1
C4B2E:  BLT             loc_C4B68
C4B30:  MOVS            R2, #0
C4B32:  LDR             R0, [R5,#0x30]
C4B34:  LDRSH.W         R0, [R0,R2,LSL#1]
C4B38:  ADDS            R2, #1
C4B3A:  LDRD.W          R3, R4, [R1]
C4B3E:  ADDS            R1, #8
C4B40:  STR.W           R3, [R6,R0,LSL#3]
C4B44:  ADD.W           R0, R6, R0,LSL#3
C4B48:  STR             R4, [R0,#4]
C4B4A:  LDR             R0, [R5]
C4B4C:  CMP             R2, R0
C4B4E:  BLT             loc_C4B32
C4B50:  CMP             R0, #1
C4B52:  BLT             loc_C4B68
C4B54:  ADDS            R1, R6, #4
C4B56:  MOVS            R2, #0
C4B58:  LDR.W           R3, [R1,R2,LSL#3]
C4B5C:  NEGS            R3, R3
C4B5E:  STR.W           R3, [R1,R2,LSL#3]
C4B62:  ADDS            R2, #1
C4B64:  CMP             R2, R0
C4B66:  BLT             loc_C4B58
C4B68:  MOV             R0, R5
C4B6A:  MOV             R1, R6
C4B6C:  BLX             j_opus_fft_impl
C4B70:  LDR             R0, [R5]
C4B72:  CMP             R0, #1
C4B74:  BLT             loc_C4B8A
C4B76:  ADDS            R1, R6, #4
C4B78:  MOVS            R2, #0
C4B7A:  LDR.W           R3, [R1,R2,LSL#3]
C4B7E:  NEGS            R3, R3
C4B80:  STR.W           R3, [R1,R2,LSL#3]
C4B84:  ADDS            R2, #1
C4B86:  CMP             R2, R0
C4B88:  BLT             loc_C4B7A
C4B8A:  POP.W           {R11}
C4B8E:  POP             {R4-R7,PC}
