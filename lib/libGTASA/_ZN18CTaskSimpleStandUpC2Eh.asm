; =========================================================
; Game Engine Function: _ZN18CTaskSimpleStandUpC2Eh
; Address            : 0x4EC610 - 0x4EC62E
; =========================================================

4EC610:  PUSH            {R4,R6,R7,LR}
4EC612:  ADD             R7, SP, #8
4EC614:  MOV             R4, R1
4EC616:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC61A:  LDR             R1, =(_ZTV18CTaskSimpleStandUp_ptr - 0x4EC624)
4EC61C:  MOVS            R2, #0
4EC61E:  STRB            R4, [R0,#8]
4EC620:  ADD             R1, PC; _ZTV18CTaskSimpleStandUp_ptr
4EC622:  STRB            R2, [R0,#9]
4EC624:  STR             R2, [R0,#0xC]
4EC626:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandUp ...
4EC628:  ADDS            R1, #8
4EC62A:  STR             R1, [R0]
4EC62C:  POP             {R4,R6,R7,PC}
