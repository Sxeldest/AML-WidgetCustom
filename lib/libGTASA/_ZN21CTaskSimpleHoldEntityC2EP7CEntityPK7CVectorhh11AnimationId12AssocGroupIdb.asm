; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhh11AnimationId12AssocGroupIdb
; Address            : 0x5412C8 - 0x54134A
; =========================================================

5412C8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *, CVector const*, unsigned char, unsigned char, AnimationId, AssocGroupId, bool)'
5412CA:  ADD             R7, SP, #0xC
5412CC:  PUSH.W          {R8}
5412D0:  MOV             R8, R3
5412D2:  MOV             R6, R2
5412D4:  MOV             R5, R1
5412D6:  MOV             R4, R0
5412D8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5412DC:  LDR.W           LR, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x5412EE)
5412E0:  MOVS            R1, #0
5412E2:  LDR             R0, [R7,#arg_8]
5412E4:  CMP             R6, #0
5412E6:  LDRD.W          R2, R3, [R7,#arg_0]
5412EA:  ADD             LR, PC; _ZTV21CTaskSimpleHoldEntity_ptr
5412EC:  STRD.W          R1, R1, [R4,#0x10]
5412F0:  STRB            R2, [R4,#0x19]
5412F2:  MOV.W           R2, #0x100
5412F6:  STRB.W          R8, [R4,#0x18]
5412FA:  STRD.W          R3, R0, [R4,#0x20]
5412FE:  LDR.W           R0, [LR]; `vtable for'CTaskSimpleHoldEntity ...
541302:  LDR.W           R12, [R7,#arg_C]
541306:  ADD.W           R0, R0, #8
54130A:  STRD.W          R1, R1, [R4,#0x2C]
54130E:  STR             R1, [R4,#0x38]
541310:  STRH            R2, [R4,#0x34]
541312:  STRB.W          R12, [R4,#0x36]
541316:  STR             R0, [R4]
541318:  MOV             R0, R4
54131A:  STR.W           R1, [R0,#0xC]!
54131E:  MOV             R1, R4
541320:  STR.W           R5, [R1,#8]!; CEntity **
541324:  ITTTT NE
541326:  VLDRNE          D16, [R6]
54132A:  LDRNE           R2, [R6,#8]
54132C:  STRNE           R2, [R0,#8]
54132E:  VSTRNE          D16, [R0]
541332:  CBZ             R5, loc_541342
541334:  LDR             R0, [R5,#0x1C]
541336:  ORR.W           R0, R0, #0x400
54133A:  STR             R0, [R5,#0x1C]
54133C:  LDR             R0, [R1]; this
54133E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
541342:  MOV             R0, R4
541344:  POP.W           {R8}
541348:  POP             {R4-R7,PC}
