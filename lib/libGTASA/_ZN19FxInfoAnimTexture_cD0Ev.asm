; =========================================================
; Game Engine Function: _ZN19FxInfoAnimTexture_cD0Ev
; Address            : 0x36C2EC - 0x36C310
; =========================================================

36C2EC:  PUSH            {R4,R6,R7,LR}
36C2EE:  ADD             R7, SP, #8
36C2F0:  MOV             R4, R0
36C2F2:  LDR             R0, =(_ZTV19FxInfoAnimTexture_c_ptr - 0x36C2F8)
36C2F4:  ADD             R0, PC; _ZTV19FxInfoAnimTexture_c_ptr
36C2F6:  LDR             R0, [R0]; `vtable for'FxInfoAnimTexture_c ...
36C2F8:  ADD.W           R1, R0, #8
36C2FC:  MOV             R0, R4
36C2FE:  STR.W           R1, [R0],#8; this
36C302:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C306:  MOV             R0, R4; void *
36C308:  POP.W           {R4,R6,R7,LR}
36C30C:  B.W             j__ZdlPv; operator delete(void *)
