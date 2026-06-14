; =========================================================
; Game Engine Function: _ZN21CTaskSimpleStandStillC2Eibbf
; Address            : 0x4EA7C0 - 0x4EA7F8
; =========================================================

4EA7C0:  PUSH            {R4-R7,LR}
4EA7C2:  ADD             R7, SP, #0xC
4EA7C4:  PUSH.W          {R11}
4EA7C8:  MOV             R4, R3
4EA7CA:  MOV             R5, R2
4EA7CC:  MOV             R6, R1
4EA7CE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EA7D2:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EA7DE)
4EA7D4:  MOVS            R2, #0
4EA7D6:  VLDR            S0, [R7,#arg_0]
4EA7DA:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4EA7DC:  STR             R6, [R0,#8]
4EA7DE:  STRH            R2, [R0,#0x14]
4EA7E0:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4EA7E2:  VSTR            S0, [R0,#0x1C]
4EA7E6:  STRB            R5, [R0,#0x18]
4EA7E8:  ADDS            R1, #8
4EA7EA:  STRB            R4, [R0,#0x19]
4EA7EC:  STRD.W          R2, R2, [R0,#0xC]
4EA7F0:  STR             R1, [R0]
4EA7F2:  POP.W           {R11}
4EA7F6:  POP             {R4-R7,PC}
