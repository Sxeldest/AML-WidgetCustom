; =========================================================
; Game Engine Function: sub_21EC54
; Address            : 0x21EC54 - 0x21ED00
; =========================================================

21EC54:  PUSH            {R4-R7,LR}
21EC56:  ADD             R7, SP, #0xC
21EC58:  PUSH.W          {R11}
21EC5C:  SUB             SP, SP, #8
21EC5E:  MOV             R5, R0
21EC60:  LDR             R0, =(__stack_chk_guard_ptr - 0x21EC66)
21EC62:  ADD             R0, PC; __stack_chk_guard_ptr
21EC64:  LDR             R0, [R0]; __stack_chk_guard
21EC66:  LDR             R0, [R0]
21EC68:  STR             R0, [SP,#0x18+var_14]
21EC6A:  LDR             R4, =(unk_384120 - 0x21EC70)
21EC6C:  ADD             R4, PC; unk_384120
21EC6E:  STR             R4, [SP,#0x18+var_18]
21EC70:  MOV             R0, R4; mutex
21EC72:  BLX             EnterCriticalSection_0
21EC76:  ADDS            R0, R5, #3
21EC78:  MOVS            R1, #1
21EC7A:  ADD.W           R1, R1, R0,LSR#2
21EC7E:  LDR             R0, [R4,#(dword_384124 - 0x384120)]
21EC80:  LDR             R2, =(dword_383F20 - 0x21EC86)
21EC82:  ADD             R2, PC; dword_383F20
21EC84:  CBNZ            R0, loc_21EC90
21EC86:  MOV.W           R0, #0x800080
21EC8A:  STR             R2, [R4,#(dword_384124 - 0x384120)]
21EC8C:  STR             R0, [R2]
21EC8E:  MOV             R0, R2
21EC90:  ADD.W           R6, R2, #0x200
21EC94:  MOVS            R3, #0
21EC96:  MOVS            R5, #0
21EC98:  CBZ             R0, loc_21ECDE
21EC9A:  CMP             R0, R6
21EC9C:  BEQ             loc_21ECDE
21EC9E:  LDRH            R5, [R0,#2]
21ECA0:  CMP             R1, R5
21ECA2:  BCC             loc_21ECB2
21ECA4:  BEQ             loc_21ECC8
21ECA6:  LDRH            R3, [R0]
21ECA8:  ADD.W           R5, R2, R3,LSL#2
21ECAC:  MOV             R3, R0
21ECAE:  MOV             R0, R5
21ECB0:  B               loc_21EC96
21ECB2:  SUBS            R2, R5, R1
21ECB4:  MOVS            R4, #0
21ECB6:  UXTH            R3, R2
21ECB8:  STRH            R2, [R0,#2]
21ECBA:  STRH.W          R4, [R0,R3,LSL#2]
21ECBE:  ADD.W           R0, R0, R3,LSL#2
21ECC2:  ADDS            R5, R0, #4
21ECC4:  STRH            R1, [R0,#2]
21ECC6:  B               loc_21ECDE
21ECC8:  LDRH            R1, [R0]
21ECCA:  CBZ             R3, loc_21ECD0
21ECCC:  STRH            R1, [R3]
21ECCE:  B               loc_21ECD6
21ECD0:  ADD.W           R1, R2, R1,LSL#2
21ECD4:  STR             R1, [R4,#(dword_384124 - 0x384120)]
21ECD6:  MOVS            R1, #0
21ECD8:  STRH.W          R1, [R0],#4
21ECDC:  MOV             R5, R0
21ECDE:  MOV             R0, SP
21ECE0:  BL              sub_21EDF0
21ECE4:  LDR             R0, [SP,#0x18+var_14]
21ECE6:  LDR             R1, =(__stack_chk_guard_ptr - 0x21ECEC)
21ECE8:  ADD             R1, PC; __stack_chk_guard_ptr
21ECEA:  LDR             R1, [R1]; __stack_chk_guard
21ECEC:  LDR             R1, [R1]
21ECEE:  CMP             R1, R0
21ECF0:  ITTTT EQ
21ECF2:  MOVEQ           R0, R5
21ECF4:  ADDEQ           SP, SP, #8
21ECF6:  POPEQ.W         {R11}
21ECFA:  POPEQ           {R4-R7,PC}
21ECFC:  BLX             __stack_chk_fail
