; =========================================================
; Game Engine Function: _ZN21CTaskSimpleDuckToggleC2Ei
; Address            : 0x4EAA58 - 0x4EAA70
; =========================================================

4EAA58:  PUSH            {R4,R6,R7,LR}
4EAA5A:  ADD             R7, SP, #8
4EAA5C:  MOV             R4, R1
4EAA5E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EAA62:  LDR             R1, =(_ZTV21CTaskSimpleDuckToggle_ptr - 0x4EAA6A)
4EAA64:  STR             R4, [R0,#8]
4EAA66:  ADD             R1, PC; _ZTV21CTaskSimpleDuckToggle_ptr
4EAA68:  LDR             R1, [R1]; `vtable for'CTaskSimpleDuckToggle ...
4EAA6A:  ADDS            R1, #8
4EAA6C:  STR             R1, [R0]
4EAA6E:  POP             {R4,R6,R7,PC}
