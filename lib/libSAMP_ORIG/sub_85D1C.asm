; =========================================================
; Game Engine Function: sub_85D1C
; Address            : 0x85D1C - 0x85D80
; =========================================================

85D1C:  PUSH            {R4-R7,LR}
85D1E:  ADD             R7, SP, #0xC
85D20:  PUSH.W          {R11}
85D24:  MOV             R4, R0
85D26:  LDR             R0, =(byte_1ABE4C - 0x85D2E)
85D28:  MOV             R5, R1
85D2A:  ADD             R0, PC; byte_1ABE4C
85D2C:  LDRB            R0, [R0]
85D2E:  DMB.W           ISH
85D32:  LSLS            R0, R0, #0x1F
85D34:  BEQ             loc_85D5E
85D36:  MOV             R0, R4
85D38:  MOV             R1, R5
85D3A:  BL              sub_7E314
85D3E:  LDR             R0, =(off_114D50 - 0x85D44)
85D40:  ADD             R0, PC; off_114D50
85D42:  LDR             R0, [R0]; off_1ABF60
85D44:  LDR             R6, [R0]
85D46:  MOV             R0, R5
85D48:  BL              sub_7DB44
85D4C:  LDR             R2, =(dword_1ABE40 - 0x85D52)
85D4E:  ADD             R2, PC; dword_1ABE40
85D50:  ADD.W           R1, R4, #0x5C ; '\'
85D54:  MOV             R3, R2
85D56:  BLX             R6
85D58:  POP.W           {R11}
85D5C:  POP             {R4-R7,PC}
85D5E:  LDR             R0, =(byte_1ABE4C - 0x85D64)
85D60:  ADD             R0, PC; byte_1ABE4C ; __guard *
85D62:  BLX             j___cxa_guard_acquire
85D66:  CMP             R0, #0
85D68:  BEQ             loc_85D36
85D6A:  LDR             R1, =(dword_1ABE40 - 0x85D74)
85D6C:  MOVS            R2, #0
85D6E:  LDR             R0, =(byte_1ABE4C - 0x85D76)
85D70:  ADD             R1, PC; dword_1ABE40
85D72:  ADD             R0, PC; byte_1ABE4C ; __guard *
85D74:  STRD.W          R2, R2, [R1]
85D78:  STR             R2, [R1,#(dword_1ABE48 - 0x1ABE40)]
85D7A:  BLX             j___cxa_guard_release
85D7E:  B               loc_85D36
