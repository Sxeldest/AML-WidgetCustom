; =========================================================
; Game Engine Function: _ZN19FxInfoAnimTexture_cD2Ev
; Address            : 0x36C2C8 - 0x36C2E6
; =========================================================

36C2C8:  PUSH            {R4,R6,R7,LR}
36C2CA:  ADD             R7, SP, #8
36C2CC:  MOV             R4, R0
36C2CE:  LDR             R0, =(_ZTV19FxInfoAnimTexture_c_ptr - 0x36C2D4)
36C2D0:  ADD             R0, PC; _ZTV19FxInfoAnimTexture_c_ptr
36C2D2:  LDR             R0, [R0]; `vtable for'FxInfoAnimTexture_c ...
36C2D4:  ADD.W           R1, R0, #8
36C2D8:  MOV             R0, R4
36C2DA:  STR.W           R1, [R0],#8; this
36C2DE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C2E2:  MOV             R0, R4
36C2E4:  POP             {R4,R6,R7,PC}
