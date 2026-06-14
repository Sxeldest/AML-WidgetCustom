; =========================================================
; Game Engine Function: _ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib
; Address            : 0x4EB570 - 0x4EB5D0
; =========================================================

4EB570:  PUSH            {R4-R7,LR}
4EB572:  ADD             R7, SP, #0xC
4EB574:  PUSH.W          {R11}
4EB578:  MOV             R4, R3
4EB57A:  MOV             R5, R2
4EB57C:  MOV             R6, R1
4EB57E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EB582:  VLDR            S0, [R7,#arg_4]
4EB586:  VLDR            S2, [R7,#arg_0]
4EB58A:  LDR.W           R12, =(_ZTV15CTaskComplexDie_ptr - 0x4EB59A)
4EB58E:  LDRD.W          R1, R3, [R7,#arg_10]
4EB592:  LDR.W           LR, [R7,#arg_C]
4EB596:  ADD             R12, PC; _ZTV15CTaskComplexDie_ptr
4EB598:  LDR             R2, [R7,#arg_8]
4EB59A:  STRD.W          R6, R5, [R0,#0xC]
4EB59E:  STR             R4, [R0,#0x14]
4EB5A0:  ORR.W           R2, R2, LR,LSL#1
4EB5A4:  VSTR            S2, [R0,#0x18]
4EB5A8:  ORR.W           R2, R2, R3,LSL#2
4EB5AC:  VSTR            S0, [R0,#0x1C]
4EB5B0:  STR             R1, [R0,#0x24]
4EB5B2:  LDRB.W          R1, [R0,#0x20]
4EB5B6:  LDR.W           R3, [R12]; `vtable for'CTaskComplexDie ...
4EB5BA:  AND.W           R1, R1, #0xF8
4EB5BE:  ORRS            R1, R2
4EB5C0:  STRB.W          R1, [R0,#0x20]
4EB5C4:  ADD.W           R1, R3, #8
4EB5C8:  STR             R1, [R0]
4EB5CA:  POP.W           {R11}
4EB5CE:  POP             {R4-R7,PC}
