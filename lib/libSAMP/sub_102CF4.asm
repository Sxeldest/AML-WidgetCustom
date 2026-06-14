; =========================================================
; Game Engine Function: sub_102CF4
; Address            : 0x102CF4 - 0x102D88
; =========================================================

102CF4:  PUSH            {R4-R7,LR}
102CF6:  ADD             R7, SP, #0xC
102CF8:  PUSH.W          {R11}
102CFC:  LDR             R2, =(off_234A74 - 0x102D02)
102CFE:  ADD             R2, PC; off_234A74
102D00:  LDR             R2, [R2]; dword_2402E4
102D02:  LDR             R2, [R2]
102D04:  LDR             R4, [R2]
102D06:  CBZ             R4, loc_102D46
102D08:  LDR             R0, =(byte_25C95C - 0x102D0E)
102D0A:  ADD             R0, PC; byte_25C95C
102D0C:  LDRB            R0, [R0]
102D0E:  DMB.W           ISH
102D12:  LSLS            R0, R0, #0x1F
102D14:  BEQ             loc_102D66
102D16:  LDR             R0, =(unk_25B22C - 0x102D20)
102D18:  RSB.W           R1, R4, R4,LSL#3
102D1C:  ADD             R0, PC; unk_25B22C
102D1E:  ADD.W           R5, R0, R1,LSL#2
102D22:  LDRB.W          R0, [R5,#5]!
102D26:  CBZ             R0, loc_102D5C
102D28:  BL              sub_F0B30
102D2C:  LDR             R6, =(dword_25C958 - 0x102D34)
102D2E:  MOVS            R4, #0
102D30:  ADD             R6, PC; dword_25C958
102D32:  LDR             R1, [R6]
102D34:  SUBS            R0, R0, R1
102D36:  CMP             R0, #0xFB
102D38:  BCC             loc_102D5E
102D3A:  BL              sub_F0B30
102D3E:  STRB            R4, [R5]
102D40:  MOVS            R4, #1
102D42:  STR             R0, [R6]
102D44:  B               loc_102D5E
102D46:  LDR             R2, =(off_25C954 - 0x102D4C)
102D48:  ADD             R2, PC; off_25C954
102D4A:  LDR             R2, [R2]
102D4C:  BLX             R2
102D4E:  CBZ             R0, loc_102D5C
102D50:  MOV             R4, R0
102D52:  LDR             R0, =(word_25B210 - 0x102D5A)
102D54:  MOVS            R1, #1
102D56:  ADD             R0, PC; word_25B210
102D58:  STRB            R1, [R0,#(byte_25B215 - 0x25B210)]
102D5A:  B               loc_102D5E
102D5C:  MOVS            R4, #0
102D5E:  MOV             R0, R4
102D60:  POP.W           {R11}
102D64:  POP             {R4-R7,PC}
102D66:  LDR             R0, =(byte_25C95C - 0x102D6C)
102D68:  ADD             R0, PC; byte_25C95C ; __guard *
102D6A:  BLX             j___cxa_guard_acquire
102D6E:  CMP             R0, #0
102D70:  BEQ             loc_102D16
102D72:  BL              sub_F0B30
102D76:  LDR             R2, =(dword_25C958 - 0x102D7E)
102D78:  LDR             R1, =(byte_25C95C - 0x102D80)
102D7A:  ADD             R2, PC; dword_25C958
102D7C:  ADD             R1, PC; byte_25C95C
102D7E:  STR             R0, [R2]
102D80:  MOV             R0, R1; __guard *
102D82:  BLX             j___cxa_guard_release
102D86:  B               loc_102D16
