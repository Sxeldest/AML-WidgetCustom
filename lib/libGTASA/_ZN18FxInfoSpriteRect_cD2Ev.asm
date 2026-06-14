; =========================================================
; Game Engine Function: _ZN18FxInfoSpriteRect_cD2Ev
; Address            : 0x36C14C - 0x36C16A
; =========================================================

36C14C:  PUSH            {R4,R6,R7,LR}
36C14E:  ADD             R7, SP, #8
36C150:  MOV             R4, R0
36C152:  LDR             R0, =(_ZTV18FxInfoSpriteRect_c_ptr - 0x36C158)
36C154:  ADD             R0, PC; _ZTV18FxInfoSpriteRect_c_ptr
36C156:  LDR             R0, [R0]; `vtable for'FxInfoSpriteRect_c ...
36C158:  ADD.W           R1, R0, #8
36C15C:  MOV             R0, R4
36C15E:  STR.W           R1, [R0],#8; this
36C162:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C166:  MOV             R0, R4
36C168:  POP             {R4,R6,R7,PC}
