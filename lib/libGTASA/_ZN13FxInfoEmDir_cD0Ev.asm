; =========================================================
; Game Engine Function: _ZN13FxInfoEmDir_cD0Ev
; Address            : 0x36BBCC - 0x36BBF0
; =========================================================

36BBCC:  PUSH            {R4,R6,R7,LR}
36BBCE:  ADD             R7, SP, #8
36BBD0:  MOV             R4, R0
36BBD2:  LDR             R0, =(_ZTV13FxInfoEmDir_c_ptr - 0x36BBD8)
36BBD4:  ADD             R0, PC; _ZTV13FxInfoEmDir_c_ptr
36BBD6:  LDR             R0, [R0]; `vtable for'FxInfoEmDir_c ...
36BBD8:  ADD.W           R1, R0, #8
36BBDC:  MOV             R0, R4
36BBDE:  STR.W           R1, [R0],#8; this
36BBE2:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BBE6:  MOV             R0, R4; void *
36BBE8:  POP.W           {R4,R6,R7,LR}
36BBEC:  B.W             j__ZdlPv; operator delete(void *)
