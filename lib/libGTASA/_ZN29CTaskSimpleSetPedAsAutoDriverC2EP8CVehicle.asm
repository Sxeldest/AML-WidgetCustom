; =========================================================
; Game Engine Function: _ZN29CTaskSimpleSetPedAsAutoDriverC2EP8CVehicle
; Address            : 0x505C60 - 0x505C8C
; =========================================================

505C60:  PUSH            {R4,R5,R7,LR}
505C62:  ADD             R7, SP, #8
505C64:  MOV             R5, R1
505C66:  MOV             R4, R0
505C68:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
505C6C:  LDR             R0, =(_ZTV29CTaskSimpleSetPedAsAutoDriver_ptr - 0x505C76)
505C6E:  MOV             R1, R4
505C70:  CMP             R5, #0
505C72:  ADD             R0, PC; _ZTV29CTaskSimpleSetPedAsAutoDriver_ptr
505C74:  LDR             R0, [R0]; `vtable for'CTaskSimpleSetPedAsAutoDriver ...
505C76:  ADD.W           R0, R0, #8
505C7A:  STR.W           R0, [R1],#8; CEntity **
505C7E:  STR             R5, [R1]
505C80:  ITT NE
505C82:  MOVNE           R0, R5; this
505C84:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
505C88:  MOV             R0, R4
505C8A:  POP             {R4,R5,R7,PC}
