; =========================================================
; Game Engine Function: sub_182A56
; Address            : 0x182A56 - 0x182A98
; =========================================================

182A56:  LDR.W           R2, [R0,#0x340]
182A5A:  CBZ             R2, loc_182A60
182A5C:  LDRB            R1, [R0,#4]
182A5E:  CBZ             R1, loc_182A66
182A60:  MOVS            R0, #0
182A62:  UXTH            R0, R0
182A64:  BX              LR
182A66:  LDRH            R1, [R0,#8]
182A68:  CMP             R1, #0
182A6A:  BEQ             loc_182A60
182A6C:  MOVW            R12, #0xF938
182A70:  ADD.W           R2, R2, #0x6C8
182A74:  MOVS            R0, #0
182A76:  MOVT            R12, #0xFFFF
182A7A:  LDRB.W          R3, [R2,R12]
182A7E:  CBZ             R3, loc_182A8E
182A80:  LDRB            R3, [R2]
182A82:  CBNZ            R3, loc_182A8E
182A84:  LDR.W           R3, [R2,#0x174]
182A88:  CMP             R3, #8
182A8A:  IT EQ
182A8C:  ADDEQ           R0, #1
182A8E:  SUBS            R1, #1
182A90:  ADD.W           R2, R2, #0x840
182A94:  BNE             loc_182A7A
182A96:  B               loc_182A62
