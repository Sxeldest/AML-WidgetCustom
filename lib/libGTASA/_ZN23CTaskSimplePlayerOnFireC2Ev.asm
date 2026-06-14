; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFireC2Ev
; Address            : 0x4EF8A0 - 0x4EF8BE
; =========================================================

4EF8A0:  PUSH            {R7,LR}; Alternative name is 'CTaskSimplePlayerOnFire::CTaskSimplePlayerOnFire(void)'
4EF8A2:  MOV             R7, SP
4EF8A4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EF8A8:  LDR             R1, =(_ZTV23CTaskSimplePlayerOnFire_ptr - 0x4EF8B2)
4EF8AA:  MOVS            R2, #0
4EF8AC:  STRH            R2, [R0,#0x10]
4EF8AE:  ADD             R1, PC; _ZTV23CTaskSimplePlayerOnFire_ptr
4EF8B0:  STRB            R2, [R0,#0x14]
4EF8B2:  STRD.W          R2, R2, [R0,#8]
4EF8B6:  LDR             R1, [R1]; `vtable for'CTaskSimplePlayerOnFire ...
4EF8B8:  ADDS            R1, #8
4EF8BA:  STR             R1, [R0]
4EF8BC:  POP             {R7,PC}
