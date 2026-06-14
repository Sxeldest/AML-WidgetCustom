; =========================================================
; Game Engine Function: sub_103EFC
; Address            : 0x103EFC - 0x103F7C
; =========================================================

103EFC:  PUSH            {R0-R5,R7,LR}
103EFE:  ADD             R7, SP, #0x18
103F00:  MOV             R4, R0
103F02:  LDR             R0, =(__stack_chk_guard_ptr - 0x103F08)
103F04:  ADD             R0, PC; __stack_chk_guard_ptr
103F06:  LDR             R0, [R0]; __stack_chk_guard
103F08:  LDR             R0, [R0]
103F0A:  STR             R0, [SP,#0x18+var_C]
103F0C:  LDRD.W          R0, R1, [R4]
103F10:  CMP             R1, R0
103F12:  BEQ             loc_103F32
103F14:  LDRB            R0, [R0]
103F16:  CMP             R0, #0x44 ; 'D'
103F18:  BEQ             loc_103F4E
103F1A:  CMP             R0, #0x54 ; 'T'
103F1C:  BNE             loc_103F32
103F1E:  MOV             R0, R4
103F20:  BL              sub_100070
103F24:  MOV             R5, R0
103F26:  STR             R0, [SP,#0x18+var_10]
103F28:  CBZ             R0, loc_103F64
103F2A:  ADD.W           R0, R4, #0x94
103F2E:  ADD             R1, SP, #0x18+var_10
103F30:  B               loc_103F60
103F32:  LDR             R0, [SP,#0x18+var_C]
103F34:  LDR             R1, =(__stack_chk_guard_ptr - 0x103F3A)
103F36:  ADD             R1, PC; __stack_chk_guard_ptr
103F38:  LDR             R1, [R1]; __stack_chk_guard
103F3A:  LDR             R1, [R1]
103F3C:  CMP             R1, R0
103F3E:  ITTTT EQ
103F40:  MOVEQ           R0, R4
103F42:  ADDEQ           SP, SP, #0x10
103F44:  POPEQ.W         {R4,R5,R7,LR}
103F48:  BEQ.W           sub_FFBB4
103F4C:  B               loc_103F78
103F4E:  MOV             R0, R4
103F50:  BL              sub_100224
103F54:  MOV             R5, R0
103F56:  STR             R0, [SP,#0x18+var_14]
103F58:  CBZ             R0, loc_103F64
103F5A:  ADD.W           R0, R4, #0x94
103F5E:  ADD             R1, SP, #0x18+var_14
103F60:  BL              sub_FF894
103F64:  LDR             R0, [SP,#0x18+var_C]
103F66:  LDR             R1, =(__stack_chk_guard_ptr - 0x103F6C)
103F68:  ADD             R1, PC; __stack_chk_guard_ptr
103F6A:  LDR             R1, [R1]; __stack_chk_guard
103F6C:  LDR             R1, [R1]
103F6E:  CMP             R1, R0
103F70:  ITTT EQ
103F72:  MOVEQ           R0, R5
103F74:  ADDEQ           SP, SP, #0x10
103F76:  POPEQ           {R4,R5,R7,PC}
103F78:  BLX             __stack_chk_fail
