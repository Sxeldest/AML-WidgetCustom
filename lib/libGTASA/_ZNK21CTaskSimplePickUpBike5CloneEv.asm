; =========================================================
; Game Engine Function: _ZNK21CTaskSimplePickUpBike5CloneEv
; Address            : 0x506BD0 - 0x506C1A
; =========================================================

506BD0:  PUSH            {R4-R7,LR}
506BD2:  ADD             R7, SP, #0xC
506BD4:  PUSH.W          {R8}
506BD8:  MOV             R6, R0
506BDA:  MOVS            R0, #dword_1C; this
506BDC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506BE0:  LDRD.W          R5, R8, [R6,#0x10]
506BE4:  MOV             R4, R0
506BE6:  LDR             R6, [R6,#0x18]
506BE8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506BEC:  LDR             R0, =(_ZTV21CTaskSimplePickUpBike_ptr - 0x506BF8)
506BEE:  MOVS            R1, #0
506BF0:  STRB            R1, [R4,#8]
506BF2:  CMP             R5, #0
506BF4:  ADD             R0, PC; _ZTV21CTaskSimplePickUpBike_ptr
506BF6:  STR             R1, [R4,#0xC]
506BF8:  MOV             R1, R4
506BFA:  STRD.W          R8, R6, [R4,#0x14]
506BFE:  LDR             R0, [R0]; `vtable for'CTaskSimplePickUpBike ...
506C00:  ADD.W           R0, R0, #8
506C04:  STR             R0, [R4]
506C06:  STR.W           R5, [R1,#0x10]!; CEntity **
506C0A:  ITT NE
506C0C:  MOVNE           R0, R5; this
506C0E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506C12:  MOV             R0, R4
506C14:  POP.W           {R8}
506C18:  POP             {R4-R7,PC}
