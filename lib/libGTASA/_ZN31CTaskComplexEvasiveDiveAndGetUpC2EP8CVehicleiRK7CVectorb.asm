; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb
; Address            : 0x50B288 - 0x50B2D6
; =========================================================

50B288:  PUSH            {R4-R7,LR}
50B28A:  ADD             R7, SP, #0xC
50B28C:  PUSH.W          {R8}
50B290:  MOV             R6, R3
50B292:  MOV             R8, R2
50B294:  MOV             R5, R1
50B296:  MOV             R4, R0
50B298:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50B29C:  LDR             R0, =(_ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr - 0x50B2AA)
50B29E:  MOV             R1, R4
50B2A0:  STR.W           R8, [R4,#0x10]
50B2A4:  CMP             R5, #0
50B2A6:  ADD             R0, PC; _ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr
50B2A8:  LDR             R2, [R7,#arg_0]
50B2AA:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveDiveAndGetUp ...
50B2AC:  ADD.W           R0, R0, #8
50B2B0:  STR             R0, [R4]
50B2B2:  STR.W           R5, [R1,#0xC]!; CEntity **
50B2B6:  VLDR            D16, [R6]
50B2BA:  LDR             R0, [R6,#8]
50B2BC:  STR             R0, [R4,#0x1C]
50B2BE:  STRB.W          R2, [R4,#0x20]
50B2C2:  VSTR            D16, [R4,#0x14]
50B2C6:  ITT NE
50B2C8:  MOVNE           R0, R5; this
50B2CA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B2CE:  MOV             R0, R4
50B2D0:  POP.W           {R8}
50B2D4:  POP             {R4-R7,PC}
