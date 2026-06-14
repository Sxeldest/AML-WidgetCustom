; =========================================================
; Game Engine Function: _ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib
; Address            : 0x503C74 - 0x503CBA
; =========================================================

503C74:  PUSH            {R4-R7,LR}
503C76:  ADD             R7, SP, #0xC
503C78:  PUSH.W          {R8}
503C7C:  MOV             R8, R3
503C7E:  MOV             R6, R2
503C80:  MOV             R5, R1
503C82:  MOV             R4, R0
503C84:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
503C88:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x503C94)
503C8A:  MOVS            R1, #0
503C8C:  STR             R6, [R4,#0xC]
503C8E:  CMP             R5, #0
503C90:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
503C92:  STRB.W          R8, [R4,#0x10]
503C96:  STRB            R1, [R4,#0x15]
503C98:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
503C9A:  STR.W           R1, [R4,#0x11]
503C9E:  MOV             R1, R4
503CA0:  ADD.W           R0, R0, #8
503CA4:  STR             R0, [R4]
503CA6:  STR.W           R5, [R1,#8]!; CEntity **
503CAA:  ITT NE
503CAC:  MOVNE           R0, R5; this
503CAE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
503CB2:  MOV             R0, R4
503CB4:  POP.W           {R8}
503CB8:  POP             {R4-R7,PC}
