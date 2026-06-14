; =========================================================
; Game Engine Function: _ZN20CTaskSimpleShakeFistC2Ev
; Address            : 0x540B10 - 0x540B2A
; =========================================================

540B10:  PUSH            {R7,LR}; Alternative name is 'CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)'
540B12:  MOV             R7, SP
540B14:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540B18:  LDR             R1, =(_ZTV20CTaskSimpleShakeFist_ptr - 0x540B22)
540B1A:  MOVS            R2, #0
540B1C:  STRB            R2, [R0,#8]
540B1E:  ADD             R1, PC; _ZTV20CTaskSimpleShakeFist_ptr
540B20:  STR             R2, [R0,#0xC]
540B22:  LDR             R1, [R1]; `vtable for'CTaskSimpleShakeFist ...
540B24:  ADDS            R1, #8
540B26:  STR             R1, [R0]
540B28:  POP             {R7,PC}
