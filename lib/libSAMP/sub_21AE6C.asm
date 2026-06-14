; =========================================================
; Game Engine Function: sub_21AE6C
; Address            : 0x21AE6C - 0x21AF42
; =========================================================

21AE6C:  PUSH            {R0-R5,R7,LR}
21AE6E:  ADD             R7, SP, #0x18
21AE70:  MOV             R5, R0
21AE72:  LDR             R0, =(__stack_chk_guard_ptr - 0x21AE7A)
21AE74:  MOV             R4, R1
21AE76:  ADD             R0, PC; __stack_chk_guard_ptr
21AE78:  LDR             R0, [R0]; __stack_chk_guard
21AE7A:  LDR             R0, [R0]
21AE7C:  STR             R0, [SP,#0x18+var_C]
21AE7E:  MOV             R0, R1
21AE80:  STRD.W          R1, R5, [SP,#0x18+var_14]
21AE84:  MOVS            R1, #0x28 ; '('
21AE86:  BL              sub_2154F2
21AE8A:  LDRB            R0, [R5,#0x18]
21AE8C:  CBZ             R0, loc_21AED8
21AE8E:  LDR             R0, [R5,#0xC]
21AE90:  CBZ             R0, loc_21AEB2
21AE92:  MOV             R1, R4
21AE94:  BL              sub_2154CC
21AE98:  MOV             R0, R4
21AE9A:  MOVS            R1, #0x20 ; ' '
21AE9C:  BL              sub_2154F2
21AEA0:  LDRD.W          R1, R2, [R5,#0x10]
21AEA4:  MOV             R0, R4
21AEA6:  BL              sub_216F98
21AEAA:  MOV             R0, R4
21AEAC:  MOVS            R1, #0x20 ; ' '
21AEAE:  BL              sub_2154F2
21AEB2:  LDR             R1, =(asc_8FFB3 - 0x21AEBA); "... " ...
21AEB4:  MOV             R0, R4
21AEB6:  ADD             R1, PC; "... "
21AEB8:  ADDS            R2, R1, #4
21AEBA:  BL              sub_216F98
21AEBE:  LDRD.W          R1, R2, [R5,#0x10]
21AEC2:  MOV             R0, R4
21AEC4:  BL              sub_216F98
21AEC8:  MOV             R0, R4
21AECA:  MOVS            R1, #0x20 ; ' '
21AECC:  BL              sub_2154F2
21AED0:  ADD             R0, SP, #0x18+var_14
21AED2:  BL              sub_21AF58
21AED6:  B               loc_21AF22
21AED8:  ADD             R0, SP, #0x18+var_14
21AEDA:  BL              sub_21AF58
21AEDE:  MOV             R0, R4
21AEE0:  MOVS            R1, #0x20 ; ' '
21AEE2:  BL              sub_2154F2
21AEE6:  LDRD.W          R1, R2, [R5,#0x10]
21AEEA:  MOV             R0, R4
21AEEC:  BL              sub_216F98
21AEF0:  LDR             R1, =(asc_8A8F7 - 0x21AEF8); " ..." ...
21AEF2:  MOV             R0, R4
21AEF4:  ADD             R1, PC; " ..."
21AEF6:  ADDS            R2, R1, #4
21AEF8:  BL              sub_216F98
21AEFC:  LDR             R0, [R5,#0xC]
21AEFE:  CBZ             R0, loc_21AF22
21AF00:  MOV             R0, R4
21AF02:  MOVS            R1, #0x20 ; ' '
21AF04:  BL              sub_2154F2
21AF08:  LDRD.W          R1, R2, [R5,#0x10]
21AF0C:  MOV             R0, R4
21AF0E:  BL              sub_216F98
21AF12:  MOV             R0, R4
21AF14:  MOVS            R1, #0x20 ; ' '
21AF16:  BL              sub_2154F2
21AF1A:  LDR             R0, [R5,#0xC]
21AF1C:  MOV             R1, R4
21AF1E:  BL              sub_2154CC
21AF22:  LDR             R0, [SP,#0x18+var_C]
21AF24:  LDR             R1, =(__stack_chk_guard_ptr - 0x21AF2A)
21AF26:  ADD             R1, PC; __stack_chk_guard_ptr
21AF28:  LDR             R1, [R1]; __stack_chk_guard
21AF2A:  LDR             R1, [R1]
21AF2C:  CMP             R1, R0
21AF2E:  IT NE
21AF30:  BLXNE           __stack_chk_fail
21AF34:  MOV             R0, R4
21AF36:  MOVS            R1, #0x29 ; ')'
21AF38:  ADD             SP, SP, #0x10
21AF3A:  POP.W           {R4,R5,R7,LR}
21AF3E:  B.W             sub_2154F2
