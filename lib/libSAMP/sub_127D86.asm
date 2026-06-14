; =========================================================
; Game Engine Function: sub_127D86
; Address            : 0x127D86 - 0x127D9E
; =========================================================

127D86:  LDR             R2, [R0,#0xC]
127D88:  LDRD.W          R3, R12, [R0,#4]
127D8C:  LDR             R1, [R1]
127D8E:  ADD.W           R0, R3, R2,ASR#1
127D92:  LSLS            R2, R2, #0x1F
127D94:  ITT NE
127D96:  LDRNE           R2, [R0]
127D98:  LDRNE.W         R12, [R2,R12]
127D9C:  BX              R12
