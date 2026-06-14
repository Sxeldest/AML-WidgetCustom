; =========================================================
; Game Engine Function: _ZN18FxInfoUnderwater_cD2Ev
; Address            : 0x36C068 - 0x36C086
; =========================================================

36C068:  PUSH            {R4,R6,R7,LR}
36C06A:  ADD             R7, SP, #8
36C06C:  MOV             R4, R0
36C06E:  LDR             R0, =(_ZTV18FxInfoUnderwater_c_ptr - 0x36C074)
36C070:  ADD             R0, PC; _ZTV18FxInfoUnderwater_c_ptr
36C072:  LDR             R0, [R0]; `vtable for'FxInfoUnderwater_c ...
36C074:  ADD.W           R1, R0, #8
36C078:  MOV             R0, R4
36C07A:  STR.W           R1, [R0],#8; this
36C07E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C082:  MOV             R0, R4
36C084:  POP             {R4,R6,R7,PC}
