; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJumpC2Eb
; Address            : 0x52D698 - 0x52D6BE
; =========================================================

52D698:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleJump::CTaskSimpleJump(bool)'
52D69A:  ADD             R7, SP, #8
52D69C:  MOV             R4, R1
52D69E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52D6A2:  LDR             R1, =(_ZTV15CTaskSimpleJump_ptr - 0x52D6AE)
52D6A4:  MOVS            R2, #0
52D6A6:  STRD.W          R2, R2, [R0,#0x1C]
52D6AA:  ADD             R1, PC; _ZTV15CTaskSimpleJump_ptr
52D6AC:  STRB.W          R4, [R0,#0x24]
52D6B0:  STRB.W          R2, [R0,#0x25]
52D6B4:  LDR             R1, [R1]; `vtable for'CTaskSimpleJump ...
52D6B6:  STR             R2, [R0,#0x28]
52D6B8:  ADDS            R1, #8
52D6BA:  STR             R1, [R0]
52D6BC:  POP             {R4,R6,R7,PC}
