; =========================================================
; Game Engine Function: sub_F7238
; Address            : 0xF7238 - 0xF7252
; =========================================================

F7238:  CMP             R0, R1
F723A:  BEQ             locret_F7250
F723C:  SUBS            R1, #1
F723E:  CMP             R0, R1
F7240:  BCS             locret_F7250
F7242:  LDRB            R2, [R0]
F7244:  LDRB            R3, [R1]
F7246:  STRB.W          R3, [R0],#1
F724A:  STRB.W          R2, [R1],#-1
F724E:  B               loc_F723E
F7250:  BX              LR
