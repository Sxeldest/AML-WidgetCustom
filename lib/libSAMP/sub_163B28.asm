; =========================================================
; Game Engine Function: sub_163B28
; Address            : 0x163B28 - 0x163B6E
; =========================================================

163B28:  PUSH            {R4,R5,R7,LR}
163B2A:  ADD             R7, SP, #8
163B2C:  MOV             R4, R0
163B2E:  LDR             R0, =(byte_381AB0 - 0x163B34)
163B30:  ADD             R0, PC; byte_381AB0
163B32:  LDRB            R0, [R0]
163B34:  DMB.W           ISH
163B38:  LDR             R5, =(dword_381AAC - 0x163B3E)
163B3A:  ADD             R5, PC; dword_381AAC
163B3C:  LSLS            R0, R0, #0x1F
163B3E:  BEQ             loc_163B48
163B40:  LDR             R0, [R5]
163B42:  LDR.W           R0, [R0,R4,LSL#2]
163B46:  POP             {R4,R5,R7,PC}
163B48:  LDR             R0, =(byte_381AB0 - 0x163B4E)
163B4A:  ADD             R0, PC; byte_381AB0 ; __guard *
163B4C:  BLX             j___cxa_guard_acquire
163B50:  CMP             R0, #0
163B52:  BEQ             loc_163B40
163B54:  LDR             R0, =(off_23494C - 0x163B5A)
163B56:  ADD             R0, PC; off_23494C
163B58:  LDR             R1, [R0]; dword_23DF24
163B5A:  LDR             R0, =(byte_381AB0 - 0x163B62)
163B5C:  LDR             R1, [R1]
163B5E:  ADD             R0, PC; byte_381AB0 ; __guard *
163B60:  ADD.W           R1, R1, #0x6E0000
163B64:  ADDS            R1, #4
163B66:  STR             R1, [R5]
163B68:  BLX             j___cxa_guard_release
163B6C:  B               loc_163B40
