; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif
; Address            : 0x513C0C - 0x513C6A
; =========================================================

513C0C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *, bool, float, int, int, float)'
513C0E:  ADD             R7, SP, #0xC
513C10:  PUSH.W          {R8}
513C14:  MOV             R6, R3
513C16:  MOV             R8, R2
513C18:  MOV             R5, R1
513C1A:  MOV             R4, R0
513C1C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
513C20:  LDR             R1, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x513C2A)
513C22:  CMP             R5, #0
513C24:  LDR             R0, [R7,#arg_0]
513C26:  ADD             R1, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
513C28:  VLDR            S0, [R7,#arg_8]
513C2C:  STRD.W          R0, R6, [R4,#0x1C]
513C30:  MOV.W           R0, #7
513C34:  LDR             R2, [R7,#arg_4]
513C36:  STRB.W          R8, [R4,#0x24]
513C3A:  STR             R2, [R4,#0x28]
513C3C:  VSTR            S0, [R4,#0x2C]
513C40:  STR             R0, [R4,#0x30]
513C42:  LDR             R0, [R1]; `vtable for'CTaskComplexSmartFleeEntity ...
513C44:  MOV.W           R1, #0
513C48:  STRH            R1, [R4,#0x3C]
513C4A:  STRD.W          R1, R1, [R4,#0x34]
513C4E:  MOV             R1, R4
513C50:  ADD.W           R0, R0, #8
513C54:  STR             R0, [R4]
513C56:  STR.W           R5, [R1,#0xC]!; CEntity **
513C5A:  ITT NE
513C5C:  MOVNE           R0, R5; this
513C5E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
513C62:  MOV             R0, R4
513C64:  POP.W           {R8}
513C68:  POP             {R4-R7,PC}
