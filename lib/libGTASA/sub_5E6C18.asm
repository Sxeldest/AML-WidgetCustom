; =========================================================
; Game Engine Function: sub_5E6C18
; Address            : 0x5E6C18 - 0x5E6C8C
; =========================================================

5E6C18:  PUSH            {R4-R7,LR}
5E6C1A:  ADD             R7, SP, #0xC
5E6C1C:  PUSH.W          {R11}
5E6C20:  SUB             SP, SP, #0xA0
5E6C22:  MOV             R6, R0
5E6C24:  LDR             R0, =(__stack_chk_guard_ptr - 0x5E6C2E)
5E6C26:  ADD             R5, SP, #0xB0+var_40
5E6C28:  MOV             R4, R1
5E6C2A:  ADD             R0, PC; __stack_chk_guard_ptr
5E6C2C:  MOVS            R1, #0x28 ; '('
5E6C2E:  LDR             R0, [R0]; __stack_chk_guard
5E6C30:  LDR             R0, [R0]
5E6C32:  STR             R0, [SP,#0xB0+var_14]
5E6C34:  MOV             R0, R5
5E6C36:  STR             R2, [SP,#0xB0+var_A4]
5E6C38:  BLX.W           j___aeabi_memclr8
5E6C3C:  ADD             R0, SP, #0xB0+var_A0
5E6C3E:  MOV             R1, R6
5E6C40:  BL              sub_5E8050
5E6C44:  LDR             R0, [SP,#0xB0+var_A4]
5E6C46:  ADD             R2, SP, #0xB0+var_A8; int
5E6C48:  ADD             R3, SP, #0xB0+var_90; int
5E6C4A:  STR             R0, [SP,#0xB0+var_A8]
5E6C4C:  MOVS            R0, #0; int
5E6C4E:  MOV             R1, R4; ptr
5E6C50:  STR             R5, [SP,#0xB0+var_B0]; int
5E6C52:  BL              sub_5E6C98
5E6C56:  CMP             R0, #0
5E6C58:  BLT             loc_5E6C6E
5E6C5A:  LDR             R0, [SP,#0xB0+var_A4]
5E6C5C:  ADD             R2, SP, #0xB0+var_A8; int
5E6C5E:  STR             R0, [SP,#0xB0+var_A8]
5E6C60:  ADD             R0, SP, #0xB0+var_A0; int
5E6C62:  ADD             R3, SP, #0xB0+var_90; int
5E6C64:  MOV             R1, R4; ptr
5E6C66:  STR             R5, [SP,#0xB0+var_B0]; int
5E6C68:  BL              sub_5E6C98
5E6C6C:  B               loc_5E6C72
5E6C6E:  MOV.W           R0, #0xFFFFFFFF
5E6C72:  LDR             R1, =(__stack_chk_guard_ptr - 0x5E6C7A)
5E6C74:  LDR             R2, [SP,#0xB0+var_14]
5E6C76:  ADD             R1, PC; __stack_chk_guard_ptr
5E6C78:  LDR             R1, [R1]; __stack_chk_guard
5E6C7A:  LDR             R1, [R1]
5E6C7C:  SUBS            R1, R1, R2
5E6C7E:  ITTT EQ
5E6C80:  ADDEQ           SP, SP, #0xA0
5E6C82:  POPEQ.W         {R11}
5E6C86:  POPEQ           {R4-R7,PC}
5E6C88:  BLX.W           __stack_chk_fail
