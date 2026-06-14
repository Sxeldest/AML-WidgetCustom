; =========================================================
; Game Engine Function: _ZN23CTaskSimpleThrowControlC2EP7CEntityPK7CVector
; Address            : 0x4DEE24 - 0x4DEE7C
; =========================================================

4DEE24:  PUSH            {R4-R7,LR}
4DEE26:  ADD             R7, SP, #0xC
4DEE28:  PUSH.W          {R8}
4DEE2C:  MOV             R8, R2
4DEE2E:  MOV             R6, R1
4DEE30:  MOV             R4, R0
4DEE32:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DEE36:  LDR             R0, =(_ZTV23CTaskSimpleThrowControl_ptr - 0x4DEE42)
4DEE38:  MOVS            R1, #0
4DEE3A:  MOV             R5, R4
4DEE3C:  STRH            R1, [R4,#8]
4DEE3E:  ADD             R0, PC; _ZTV23CTaskSimpleThrowControl_ptr
4DEE40:  STRD.W          R1, R1, [R4,#0x14]
4DEE44:  CMP             R6, #0
4DEE46:  LDR             R0, [R0]; `vtable for'CTaskSimpleThrowControl ...
4DEE48:  ADD.W           R0, R0, #8
4DEE4C:  STR             R0, [R4]
4DEE4E:  STR.W           R1, [R5,#0x10]!
4DEE52:  MOV             R1, R4
4DEE54:  STR.W           R6, [R1,#0xC]!; CEntity **
4DEE58:  ITT NE
4DEE5A:  MOVNE           R0, R6; this
4DEE5C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DEE60:  CMP.W           R8, #0
4DEE64:  ITTTT NE
4DEE66:  VLDRNE          D16, [R8]
4DEE6A:  LDRNE.W         R0, [R8,#8]
4DEE6E:  STRNE           R0, [R5,#8]
4DEE70:  VSTRNE          D16, [R5]
4DEE74:  MOV             R0, R4
4DEE76:  POP.W           {R8}
4DEE7A:  POP             {R4-R7,PC}
