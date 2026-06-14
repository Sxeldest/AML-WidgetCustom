; =========================================================
; Game Engine Function: sub_F7252
; Address            : 0xF7252 - 0xF726A
; =========================================================

F7252:  CMP             R0, R1
F7254:  BEQ             locret_F7268
F7256:  SUBS            R1, #4
F7258:  CMP             R0, R1
F725A:  BCS             locret_F7268
F725C:  LDR             R3, [R1]
F725E:  LDR             R2, [R0]
F7260:  STM             R0!, {R3}
F7262:  STR.W           R2, [R1],#-4
F7266:  B               loc_F7258
F7268:  BX              LR
