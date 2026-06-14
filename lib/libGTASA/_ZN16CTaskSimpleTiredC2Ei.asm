; =========================================================
; Game Engine Function: _ZN16CTaskSimpleTiredC2Ei
; Address            : 0x4EBDE0 - 0x4EBE02
; =========================================================

4EBDE0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleTired::CTaskSimpleTired(int)'
4EBDE2:  ADD             R7, SP, #8
4EBDE4:  MOV             R4, R1
4EBDE6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EBDEA:  LDR             R1, =(_ZTV16CTaskSimpleTired_ptr - 0x4EBDF4)
4EBDEC:  MOVS            R2, #0
4EBDEE:  STR             R4, [R0,#8]
4EBDF0:  ADD             R1, PC; _ZTV16CTaskSimpleTired_ptr
4EBDF2:  STRH            R2, [R0,#0x14]
4EBDF4:  STR             R2, [R0,#0x18]
4EBDF6:  LDR             R1, [R1]; `vtable for'CTaskSimpleTired ...
4EBDF8:  STRD.W          R2, R2, [R0,#0xC]
4EBDFC:  ADDS            R1, #8
4EBDFE:  STR             R1, [R0]
4EBE00:  POP             {R4,R6,R7,PC}
