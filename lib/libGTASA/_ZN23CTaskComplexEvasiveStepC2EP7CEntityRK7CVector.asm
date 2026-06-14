; =========================================================
; Game Engine Function: _ZN23CTaskComplexEvasiveStepC2EP7CEntityRK7CVector
; Address            : 0x50AEF0 - 0x50AF34
; =========================================================

50AEF0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexEvasiveStep::CTaskComplexEvasiveStep(CEntity *, CVector const&)'
50AEF2:  ADD             R7, SP, #0xC
50AEF4:  PUSH.W          {R11}
50AEF8:  MOV             R6, R2
50AEFA:  MOV             R5, R1
50AEFC:  MOV             R4, R0
50AEFE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50AF02:  LDR             R0, =(_ZTV23CTaskComplexEvasiveStep_ptr - 0x50AF0C)
50AF04:  MOV             R1, R4
50AF06:  CMP             R5, #0
50AF08:  ADD             R0, PC; _ZTV23CTaskComplexEvasiveStep_ptr
50AF0A:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveStep ...
50AF0C:  ADD.W           R0, R0, #8
50AF10:  STR             R0, [R4]
50AF12:  VLDR            D16, [R6]
50AF16:  LDR             R0, [R6,#8]
50AF18:  STR.W           R5, [R1,#0x18]!; CEntity **
50AF1C:  STR.W           R0, [R1,#-4]
50AF20:  VSTR            D16, [R1,#-0xC]
50AF24:  ITT NE
50AF26:  MOVNE           R0, R5; this
50AF28:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50AF2C:  MOV             R0, R4
50AF2E:  POP.W           {R11}
50AF32:  POP             {R4-R7,PC}
