; =========================================================
; Game Engine Function: sub_163B84
; Address            : 0x163B84 - 0x163BC4
; =========================================================

163B84:  PUSH            {R4,R6,R7,LR}
163B86:  ADD             R7, SP, #8
163B88:  LDR             R0, =(byte_381AB8 - 0x163B8E)
163B8A:  ADD             R0, PC; byte_381AB8
163B8C:  LDRB            R0, [R0]
163B8E:  DMB.W           ISH
163B92:  LDR             R4, =(dword_381AB4 - 0x163B98)
163B94:  ADD             R4, PC; dword_381AB4
163B96:  LSLS            R0, R0, #0x1F
163B98:  BEQ             loc_163B9E
163B9A:  LDR             R0, [R4]
163B9C:  POP             {R4,R6,R7,PC}
163B9E:  LDR             R0, =(byte_381AB8 - 0x163BA4)
163BA0:  ADD             R0, PC; byte_381AB8 ; __guard *
163BA2:  BLX             j___cxa_guard_acquire
163BA6:  CMP             R0, #0
163BA8:  BEQ             loc_163B9A
163BAA:  LDR             R0, =(off_23494C - 0x163BB0)
163BAC:  ADD             R0, PC; off_23494C
163BAE:  LDR             R1, [R0]; dword_23DF24
163BB0:  LDR             R0, =(byte_381AB8 - 0x163BB8)
163BB2:  LDR             R1, [R1]
163BB4:  ADD             R0, PC; byte_381AB8 ; __guard *
163BB6:  ADD.W           R1, R1, #0x6E0000
163BBA:  ADDS            R1, #0x24 ; '$'
163BBC:  STR             R1, [R4]
163BBE:  BLX             j___cxa_guard_release
163BC2:  B               loc_163B9A
