; =========================================================
; Game Engine Function: sub_158D18
; Address            : 0x158D18 - 0x158D98
; =========================================================

158D18:  PUSH            {R4-R7,LR}
158D1A:  ADD             R7, SP, #0xC
158D1C:  PUSH.W          {R11}
158D20:  SUB             SP, SP, #8
158D22:  MOV             R4, R0
158D24:  LDR             R0, [R1]
158D26:  MOV             R5, R1
158D28:  LDR             R6, [R4,#8]
158D2A:  LDR             R1, [R0,#8]
158D2C:  MOV             R0, R5
158D2E:  BLX             R1
158D30:  LDR             R2, [R4,#4]
158D32:  MOV             R1, R0
158D34:  ADDS            R0, R2, #1
158D36:  STR             R0, [R4,#4]
158D38:  MOV             R0, R6
158D3A:  BL              sub_164CB4
158D3E:  STR             R0, [SP,#0x18+var_14]
158D40:  CBZ             R0, loc_158D72
158D42:  MOV             R6, R0
158D44:  LDR             R0, [R5]
158D46:  MOV             R1, R6
158D48:  LDR             R2, [R0,#0xC]
158D4A:  MOV             R0, R5
158D4C:  BLX             R2
158D4E:  CBZ             R0, loc_158D72
158D50:  LDRD.W          R0, R1, [R4,#0x10]
158D54:  CMP             R0, R1
158D56:  BEQ             loc_158D60
158D58:  STR.W           R6, [R0],#4
158D5C:  STR             R0, [R4,#0x10]
158D5E:  B               loc_158D6A
158D60:  ADD.W           R0, R4, #0xC
158D64:  ADD             R1, SP, #0x18+var_14
158D66:  BL              sub_158E8C
158D6A:  ADD             SP, SP, #8
158D6C:  POP.W           {R11}
158D70:  POP             {R4-R7,PC}
158D72:  MOVS            R0, #0x18; thrown_size
158D74:  BLX             j___cxa_allocate_exception
158D78:  MOV             R4, R0
158D7A:  BL              sub_1649EC
158D7E:  LDR             R1, =(aApplyeffect - 0x158D86); "ApplyEffect" ...
158D80:  MOV             R2, R0
158D82:  ADD             R1, PC; "ApplyEffect"
158D84:  MOV             R0, R4
158D86:  BL              sub_1545C8
158D8A:  LDR             R1, =(_ZTI13BassException - 0x158D94); `typeinfo for'BassException ...
158D8C:  MOV             R0, R4; void *
158D8E:  LDR             R2, =(sub_15466C+1 - 0x158D96)
158D90:  ADD             R1, PC; lptinfo
158D92:  ADD             R2, PC; sub_15466C ; void (*)(void *)
158D94:  BLX             j___cxa_throw
