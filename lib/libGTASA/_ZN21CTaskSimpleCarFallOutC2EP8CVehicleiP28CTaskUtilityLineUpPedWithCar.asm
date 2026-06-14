; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOutC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x505920 - 0x505964
; =========================================================

505920:  PUSH            {R4-R7,LR}
505922:  ADD             R7, SP, #0xC
505924:  PUSH.W          {R8}
505928:  MOV             R8, R3
50592A:  MOV             R6, R2
50592C:  MOV             R5, R1
50592E:  MOV             R4, R0
505930:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
505934:  LDR             R0, =(_ZTV21CTaskSimpleCarFallOut_ptr - 0x505940)
505936:  MOVS            R1, #0
505938:  STRB            R1, [R4,#8]
50593A:  CMP             R5, #0
50593C:  ADD             R0, PC; _ZTV21CTaskSimpleCarFallOut_ptr
50593E:  STR             R1, [R4,#0xC]
505940:  MOV             R1, R4
505942:  STR             R6, [R4,#0x14]
505944:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarFallOut ...
505946:  STR.W           R8, [R4,#0x18]
50594A:  ADD.W           R0, R0, #8
50594E:  STR             R0, [R4]
505950:  STR.W           R5, [R1,#0x10]!; CEntity **
505954:  ITT NE
505956:  MOVNE           R0, R5; this
505958:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50595C:  MOV             R0, R4
50595E:  POP.W           {R8}
505962:  POP             {R4-R7,PC}
