; =========================================================
; Game Engine Function: sub_12DE18
; Address            : 0x12DE18 - 0x12DE86
; =========================================================

12DE18:  LDRB.W          R12, [R1]
12DE1C:  LDRD.W          R3, R2, [R1,#4]
12DE20:  ANDS.W          R0, R12, #1
12DE24:  ITT EQ
12DE26:  MOVEQ.W         R3, R12,LSR#1
12DE2A:  ADDEQ           R2, R1, #1
12DE2C:  MOVW            R12, #0xE995
12DE30:  MOV             R1, R3
12DE32:  MOVT            R12, #0x5BD1
12DE36:  CMP             R3, #4
12DE38:  BCC             loc_12DE58
12DE3A:  LDR.W           R0, [R2],#4
12DE3E:  MUL.W           R1, R1, R12
12DE42:  SUBS            R3, #4
12DE44:  CMP             R3, #3
12DE46:  MUL.W           R0, R0, R12
12DE4A:  EOR.W           R0, R0, R0,LSR#24
12DE4E:  MUL.W           R0, R0, R12
12DE52:  EOR.W           R1, R1, R0
12DE56:  BHI             loc_12DE3A
12DE58:  CMP             R3, #1
12DE5A:  BEQ             loc_12DE70
12DE5C:  CMP             R3, #2
12DE5E:  BEQ             loc_12DE6A
12DE60:  CMP             R3, #3
12DE62:  BNE             loc_12DE78
12DE64:  LDRB            R0, [R2,#2]
12DE66:  EOR.W           R1, R1, R0,LSL#16
12DE6A:  LDRB            R0, [R2,#1]
12DE6C:  EOR.W           R1, R1, R0,LSL#8
12DE70:  LDRB            R0, [R2]
12DE72:  EORS            R0, R1
12DE74:  MUL.W           R1, R0, R12
12DE78:  EOR.W           R0, R1, R1,LSR#13
12DE7C:  MUL.W           R0, R0, R12
12DE80:  EOR.W           R0, R0, R0,LSR#15
12DE84:  BX              LR
