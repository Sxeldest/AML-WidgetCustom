; =========================================================
; Game Engine Function: INT123_synth_ntom_8bit_m2s
; Address            : 0x237D3C - 0x237D8A
; =========================================================

237D3C:  PUSH            {R4-R7,LR}
237D3E:  ADD             R7, SP, #0xC
237D40:  PUSH.W          {R8}
237D44:  MOV             R4, R1
237D46:  MOVW            R1, #0xB2A0
237D4A:  LDR.W           R8, [R4,R1]
237D4E:  MOVW            R6, #0xB2A8
237D52:  MOVS            R1, #0
237D54:  MOV             R2, R4
237D56:  MOVS            R3, #1
237D58:  LDR             R5, [R4,R6]
237D5A:  BLX             j_INT123_synth_ntom_8bit
237D5E:  LDR             R1, [R4,R6]
237D60:  SUBS            R1, R1, R5
237D62:  CMP             R1, #2
237D64:  BCC             loc_237D84
237D66:  ADDS            R1, R4, R6
237D68:  ADD.W           R2, R8, R5
237D6C:  MOVS            R3, #0
237D6E:  LDRB.W          R6, [R2,R3,LSL#1]
237D72:  ADD.W           R4, R2, R3,LSL#1
237D76:  ADDS            R3, #1
237D78:  STRB            R6, [R4,#1]
237D7A:  LDR             R6, [R1]
237D7C:  SUBS            R6, R6, R5
237D7E:  CMP.W           R3, R6,LSR#1
237D82:  BCC             loc_237D6E
237D84:  POP.W           {R8}
237D88:  POP             {R4-R7,PC}
