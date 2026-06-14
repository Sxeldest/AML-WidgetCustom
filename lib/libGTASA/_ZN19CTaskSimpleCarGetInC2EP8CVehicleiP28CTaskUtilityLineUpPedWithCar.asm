; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetInC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x501C38 - 0x501C7C
; =========================================================

501C38:  PUSH            {R4-R7,LR}
501C3A:  ADD             R7, SP, #0xC
501C3C:  PUSH.W          {R8}
501C40:  MOV             R8, R3
501C42:  MOV             R6, R2
501C44:  MOV             R5, R1
501C46:  MOV             R4, R0
501C48:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
501C4C:  LDR             R0, =(_ZTV19CTaskSimpleCarGetIn_ptr - 0x501C58)
501C4E:  MOVS            R1, #0
501C50:  STRB            R1, [R4,#8]
501C52:  CMP             R5, #0
501C54:  ADD             R0, PC; _ZTV19CTaskSimpleCarGetIn_ptr
501C56:  STR             R1, [R4,#0xC]
501C58:  MOV             R1, R4
501C5A:  STR             R6, [R4,#0x1C]
501C5C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarGetIn ...
501C5E:  STR.W           R8, [R4,#0x20]
501C62:  ADD.W           R0, R0, #8
501C66:  STR             R0, [R4]
501C68:  STR.W           R5, [R1,#0x18]!; CEntity **
501C6C:  ITT NE
501C6E:  MOVNE           R0, R5; this
501C70:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
501C74:  MOV             R0, R4
501C76:  POP.W           {R8}
501C7A:  POP             {R4-R7,PC}
