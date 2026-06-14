; =========================================================
; Game Engine Function: sub_203B04
; Address            : 0x203B04 - 0x203B76
; =========================================================

203B04:  PUSH            {R4-R7,LR}
203B06:  ADD             R7, SP, #0xC
203B08:  PUSH.W          {R8,R9,R11}
203B0C:  MOV             R9, R0
203B0E:  LDR.W           R0, [R1,#0xFC]
203B12:  MOV             R4, R2
203B14:  CMP             R0, #1
203B16:  BLT             loc_203B70
203B18:  LDR.W           R6, [R1,#0xF8]
203B1C:  ADD.W           R0, R0, R0,LSL#2
203B20:  ADR.W           R8, aWritingZeroLen; "Writing zero-length unknown chunk"
203B24:  ADD.W           R5, R6, R0,LSL#2
203B28:  LDRB            R0, [R6,#0x10]
203B2A:  TST             R0, R4
203B2C:  BEQ             loc_203B6A
203B2E:  MOV             R0, R9
203B30:  MOV             R1, R6
203B32:  BLX             j_png_handle_as_unknown
203B36:  CMP             R0, #1
203B38:  BEQ             loc_203B6A
203B3A:  CMP             R0, #3
203B3C:  BEQ             loc_203B52
203B3E:  LDRB            R1, [R6,#3]
203B40:  ANDS.W          R1, R1, #0x20 ; ' '
203B44:  BNE             loc_203B52
203B46:  CMP             R0, #0
203B48:  ITT EQ
203B4A:  LDREQ.W         R0, [R9,#0x2F8]
203B4E:  CMPEQ           R0, #3
203B50:  BNE             loc_203B6A
203B52:  LDR             R3, [R6,#0xC]
203B54:  CBNZ            R3, loc_203B60
203B56:  MOV             R0, R9
203B58:  MOV             R1, R8
203B5A:  BLX             j_png_warning
203B5E:  LDR             R3, [R6,#0xC]
203B60:  LDR             R2, [R6,#8]
203B62:  MOV             R0, R9
203B64:  MOV             R1, R6
203B66:  BLX             j_png_write_chunk
203B6A:  ADDS            R6, #0x14
203B6C:  CMP             R6, R5
203B6E:  BCC             loc_203B28
203B70:  POP.W           {R8,R9,R11}
203B74:  POP             {R4-R7,PC}
