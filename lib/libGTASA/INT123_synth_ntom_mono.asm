; =========================================================
; Game Engine Function: INT123_synth_ntom_mono
; Address            : 0x235D38 - 0x235D9E
; =========================================================

235D38:  PUSH            {R4-R7,LR}
235D3A:  ADD             R7, SP, #0xC
235D3C:  PUSH.W          {R8-R10}
235D40:  SUB.W           SP, SP, #0x400
235D44:  MOV             R4, R1
235D46:  MOVW            R9, #0xB2A0
235D4A:  MOVW            R5, #0xB2A8
235D4E:  MOV             R6, SP
235D50:  MOVS            R1, #0
235D52:  LDR.W           R10, [R4,R9]
235D56:  LDR.W           R8, [R4,R5]
235D5A:  STR.W           R6, [R4,R9]
235D5E:  MOV             R2, R4
235D60:  STR             R1, [R4,R5]
235D62:  MOVS            R1, #0
235D64:  MOVS            R3, #1
235D66:  BLX             j_INT123_synth_ntom
235D6A:  STR.W           R10, [R4,R9]
235D6E:  ADDS            R1, R4, R5
235D70:  LDR             R2, [R4,R5]
235D72:  CMP             R2, #4
235D74:  BCC             loc_235D8E
235D76:  ADD.W           R3, R10, R8
235D7A:  MOVS            R5, #0
235D7C:  LDRH.W          R2, [R6,R5,LSL#2]
235D80:  STRH.W          R2, [R3,R5,LSL#1]
235D84:  ADDS            R5, #1
235D86:  LDR             R2, [R1]
235D88:  CMP.W           R5, R2,LSR#2
235D8C:  BCC             loc_235D7C
235D8E:  ADD.W           R2, R8, R2,LSR#1
235D92:  STR             R2, [R1]
235D94:  ADD.W           SP, SP, #0x400
235D98:  POP.W           {R8-R10}
235D9C:  POP             {R4-R7,PC}
