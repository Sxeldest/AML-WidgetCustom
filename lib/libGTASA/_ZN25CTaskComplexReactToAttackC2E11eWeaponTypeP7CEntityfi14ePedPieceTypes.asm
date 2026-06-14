; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttackC2E11eWeaponTypeP7CEntityfi14ePedPieceTypes
; Address            : 0x4DFE10 - 0x4DFE58
; =========================================================

4DFE10:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexReactToAttack::CTaskComplexReactToAttack(eWeaponType, CEntity *, float, int, ePedPieceTypes)'
4DFE12:  ADD             R7, SP, #0xC
4DFE14:  PUSH.W          {R8}
4DFE18:  MOV             R8, R3
4DFE1A:  MOV             R5, R2
4DFE1C:  MOV             R6, R1
4DFE1E:  MOV             R4, R0
4DFE20:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4DFE24:  LDR             R0, =(_ZTV25CTaskComplexReactToAttack_ptr - 0x4DFE32)
4DFE26:  MOVS            R3, #0
4DFE28:  LDRD.W          R2, R1, [R7,#arg_0]
4DFE2C:  CMP             R5, #0
4DFE2E:  ADD             R0, PC; _ZTV25CTaskComplexReactToAttack_ptr
4DFE30:  STRH            R3, [R4,#0xC]
4DFE32:  STR             R6, [R4,#0x10]
4DFE34:  LDR             R0, [R0]; `vtable for'CTaskComplexReactToAttack ...
4DFE36:  STRD.W          R8, R2, [R4,#0x18]
4DFE3A:  STR             R1, [R4,#0x20]
4DFE3C:  MOV             R1, R4
4DFE3E:  ADD.W           R0, R0, #8
4DFE42:  STR             R0, [R4]
4DFE44:  STR.W           R5, [R1,#0x14]!; CEntity **
4DFE48:  ITT NE
4DFE4A:  MOVNE           R0, R5; this
4DFE4C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DFE50:  MOV             R0, R4
4DFE52:  POP.W           {R8}
4DFE56:  POP             {R4-R7,PC}
