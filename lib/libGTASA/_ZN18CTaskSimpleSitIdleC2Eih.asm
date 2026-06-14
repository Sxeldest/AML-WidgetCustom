; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitIdleC2Eih
; Address            : 0x4EC0D0 - 0x4EC0FA
; =========================================================

4EC0D0:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleSitIdle::CTaskSimpleSitIdle(int, unsigned char)'
4EC0D2:  ADD             R7, SP, #8
4EC0D4:  MOV             R4, R2
4EC0D6:  MOV             R5, R1
4EC0D8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC0DC:  LDR             R1, =(_ZTV18CTaskSimpleSitIdle_ptr - 0x4EC0E6)
4EC0DE:  MOVS            R2, #0
4EC0E0:  STRB            R4, [R0,#8]
4EC0E2:  ADD             R1, PC; _ZTV18CTaskSimpleSitIdle_ptr
4EC0E4:  STR             R5, [R0,#0xC]
4EC0E6:  STR.W           R2, [R0,#0x1A]
4EC0EA:  LDR             R1, [R1]; `vtable for'CTaskSimpleSitIdle ...
4EC0EC:  STR.W           R2, [R0,#0x16]
4EC0F0:  STRD.W          R2, R2, [R0,#0x10]
4EC0F4:  ADDS            R1, #8
4EC0F6:  STR             R1, [R0]
4EC0F8:  POP             {R4,R5,R7,PC}
