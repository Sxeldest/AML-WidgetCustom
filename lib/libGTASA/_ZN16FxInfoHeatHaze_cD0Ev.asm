; =========================================================
; Game Engine Function: _ZN16FxInfoHeatHaze_cD0Ev
; Address            : 0x36C1BC - 0x36C1E0
; =========================================================

36C1BC:  PUSH            {R4,R6,R7,LR}
36C1BE:  ADD             R7, SP, #8
36C1C0:  MOV             R4, R0
36C1C2:  LDR             R0, =(_ZTV16FxInfoHeatHaze_c_ptr - 0x36C1C8)
36C1C4:  ADD             R0, PC; _ZTV16FxInfoHeatHaze_c_ptr
36C1C6:  LDR             R0, [R0]; `vtable for'FxInfoHeatHaze_c ...
36C1C8:  ADD.W           R1, R0, #8
36C1CC:  MOV             R0, R4
36C1CE:  STR.W           R1, [R0],#8; this
36C1D2:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C1D6:  MOV             R0, R4; void *
36C1D8:  POP.W           {R4,R6,R7,LR}
36C1DC:  B.W             j__ZdlPv; operator delete(void *)
