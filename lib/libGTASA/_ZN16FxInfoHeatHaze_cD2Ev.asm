; =========================================================
; Game Engine Function: _ZN16FxInfoHeatHaze_cD2Ev
; Address            : 0x36C198 - 0x36C1B6
; =========================================================

36C198:  PUSH            {R4,R6,R7,LR}
36C19A:  ADD             R7, SP, #8
36C19C:  MOV             R4, R0
36C19E:  LDR             R0, =(_ZTV16FxInfoHeatHaze_c_ptr - 0x36C1A4)
36C1A0:  ADD             R0, PC; _ZTV16FxInfoHeatHaze_c_ptr
36C1A2:  LDR             R0, [R0]; `vtable for'FxInfoHeatHaze_c ...
36C1A4:  ADD.W           R1, R0, #8
36C1A8:  MOV             R0, R4
36C1AA:  STR.W           R1, [R0],#8; this
36C1AE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C1B2:  MOV             R0, R4
36C1B4:  POP             {R4,R6,R7,PC}
