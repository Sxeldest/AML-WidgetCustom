; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitHeadC2Ev
; Address            : 0x50ABDC - 0x50ABF6
; =========================================================

50ABDC:  PUSH            {R7,LR}
50ABDE:  MOV             R7, SP
50ABE0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50ABE4:  LDR             R1, =(_ZTV18CTaskSimpleHitHead_ptr - 0x50ABEE)
50ABE6:  MOVS            R2, #0
50ABE8:  STRB            R2, [R0,#8]
50ABEA:  ADD             R1, PC; _ZTV18CTaskSimpleHitHead_ptr
50ABEC:  STR             R2, [R0,#0xC]
50ABEE:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitHead ...
50ABF0:  ADDS            R1, #8
50ABF2:  STR             R1, [R0]
50ABF4:  POP             {R7,PC}
