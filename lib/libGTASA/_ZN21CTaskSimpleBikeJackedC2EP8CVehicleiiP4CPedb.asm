; =========================================================
; Game Engine Function: _ZN21CTaskSimpleBikeJackedC2EP8CVehicleiiP4CPedb
; Address            : 0x50554C - 0x5055B4
; =========================================================

50554C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleBikeJacked::CTaskSimpleBikeJacked(CVehicle *, int, int, CPed *, bool)'
50554E:  ADD             R7, SP, #0xC
505550:  PUSH.W          {R8}
505554:  MOV             R8, R3
505556:  MOV             R6, R2
505558:  MOV             R5, R1
50555A:  MOV             R4, R0
50555C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
505560:  LDR.W           R12, =(_ZTV21CTaskSimpleBikeJacked_ptr - 0x505570)
505564:  MOVS            R3, #0
505566:  MOVS            R1, #0xBF
505568:  LDRD.W          R0, R2, [R7,#arg_0]
50556C:  ADD             R12, PC; _ZTV21CTaskSimpleBikeJacked_ptr
50556E:  STRB            R3, [R4,#8]
505570:  STRD.W          R3, R1, [R4,#0xC]
505574:  CMP             R5, #0
505576:  LDR.W           R1, [R12]; `vtable for'CTaskSimpleBikeJacked ...
50557A:  STR             R6, [R4,#0x18]
50557C:  MOV             R6, R4
50557E:  ADD.W           R1, R1, #8
505582:  STR.W           R8, [R4,#0x1C]
505586:  STRB.W          R2, [R4,#0x24]
50558A:  STR             R3, [R4,#0x28]
50558C:  STR             R1, [R4]
50558E:  MOV             R1, R4
505590:  STR.W           R0, [R6,#0x20]!
505594:  STR.W           R5, [R1,#0x14]!; CEntity **
505598:  BEQ             loc_5055A2
50559A:  MOV             R0, R5; this
50559C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5055A0:  LDR             R0, [R6]; this
5055A2:  CMP             R0, #0
5055A4:  ITT NE
5055A6:  MOVNE           R1, R6; CEntity **
5055A8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5055AC:  MOV             R0, R4
5055AE:  POP.W           {R8}
5055B2:  POP             {R4-R7,PC}
