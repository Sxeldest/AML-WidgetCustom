; =========================================================
; Game Engine Function: _ZN18FxInfoSpriteRect_cD0Ev
; Address            : 0x36C170 - 0x36C194
; =========================================================

36C170:  PUSH            {R4,R6,R7,LR}
36C172:  ADD             R7, SP, #8
36C174:  MOV             R4, R0
36C176:  LDR             R0, =(_ZTV18FxInfoSpriteRect_c_ptr - 0x36C17C)
36C178:  ADD             R0, PC; _ZTV18FxInfoSpriteRect_c_ptr
36C17A:  LDR             R0, [R0]; `vtable for'FxInfoSpriteRect_c ...
36C17C:  ADD.W           R1, R0, #8
36C180:  MOV             R0, R4
36C182:  STR.W           R1, [R0],#8; this
36C186:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C18A:  MOV             R0, R4; void *
36C18C:  POP.W           {R4,R6,R7,LR}
36C190:  B.W             j__ZdlPv; operator delete(void *)
