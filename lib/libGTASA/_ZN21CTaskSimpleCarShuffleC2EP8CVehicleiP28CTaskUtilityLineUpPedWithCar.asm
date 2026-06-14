; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffleC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x501F44 - 0x501F88
; =========================================================

501F44:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarShuffle::CTaskSimpleCarShuffle(CVehicle *, int, CTaskUtilityLineUpPedWithCar *)'
501F46:  ADD             R7, SP, #0xC
501F48:  PUSH.W          {R8}
501F4C:  MOV             R8, R3
501F4E:  MOV             R6, R2
501F50:  MOV             R5, R1
501F52:  MOV             R4, R0
501F54:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
501F58:  LDR             R0, =(_ZTV21CTaskSimpleCarShuffle_ptr - 0x501F64)
501F5A:  MOVS            R1, #0
501F5C:  STRB            R1, [R4,#8]
501F5E:  CMP             R5, #0
501F60:  ADD             R0, PC; _ZTV21CTaskSimpleCarShuffle_ptr
501F62:  STR             R1, [R4,#0xC]
501F64:  MOV             R1, R4
501F66:  STR             R6, [R4,#0x14]
501F68:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarShuffle ...
501F6A:  STR.W           R8, [R4,#0x18]
501F6E:  ADD.W           R0, R0, #8
501F72:  STR             R0, [R4]
501F74:  STR.W           R5, [R1,#0x10]!; CEntity **
501F78:  ITT NE
501F7A:  MOVNE           R0, R5; this
501F7C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
501F80:  MOV             R0, R4
501F82:  POP.W           {R8}
501F86:  POP             {R4-R7,PC}
