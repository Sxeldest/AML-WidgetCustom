; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDeadC2Eib
; Address            : 0x4EB89C - 0x4EB8C6
; =========================================================

4EB89C:  PUSH            {R4,R5,R7,LR}
4EB89E:  ADD             R7, SP, #8
4EB8A0:  MOV             R4, R2
4EB8A2:  MOV             R5, R1
4EB8A4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EB8A8:  LDR             R1, =(_ZTV15CTaskSimpleDead_ptr - 0x4EB8B0)
4EB8AA:  LDRB            R2, [R0,#0xC]
4EB8AC:  ADD             R1, PC; _ZTV15CTaskSimpleDead_ptr
4EB8AE:  STR             R5, [R0,#8]
4EB8B0:  LDR             R1, [R1]; `vtable for'CTaskSimpleDead ...
4EB8B2:  ADDS            R1, #8
4EB8B4:  STR             R1, [R0]
4EB8B6:  AND.W           R1, R2, #0xF8
4EB8BA:  ORR.W           R1, R1, R4,LSL#1
4EB8BE:  ORR.W           R1, R1, #1
4EB8C2:  STRB            R1, [R0,#0xC]
4EB8C4:  POP             {R4,R5,R7,PC}
