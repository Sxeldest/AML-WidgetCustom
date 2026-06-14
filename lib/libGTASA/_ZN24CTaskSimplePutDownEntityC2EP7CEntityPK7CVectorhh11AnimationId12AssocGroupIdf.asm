; =========================================================
; Game Engine Function: _ZN24CTaskSimplePutDownEntityC2EP7CEntityPK7CVectorhh11AnimationId12AssocGroupIdf
; Address            : 0x542324 - 0x5423BC
; =========================================================

542324:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimplePutDownEntity::CTaskSimplePutDownEntity(CEntity *, CVector const*, unsigned char, unsigned char, AnimationId, AssocGroupId, float)'
542326:  ADD             R7, SP, #0xC
542328:  PUSH.W          {R8}
54232C:  VPUSH           {D8}
542330:  MOV             R8, R3
542332:  MOV             R6, R2
542334:  MOV             R5, R1
542336:  MOV             R4, R0
542338:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54233C:  LDR.W           R12, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x54234E)
542340:  MOVS            R1, #0
542342:  LDR             R0, [R7,#arg_8]
542344:  CMP             R6, #0
542346:  LDRD.W          R3, R2, [R7,#arg_0]
54234A:  ADD             R12, PC; _ZTV21CTaskSimpleHoldEntity_ptr
54234C:  STRD.W          R1, R1, [R4,#0x10]
542350:  STRB            R3, [R4,#0x19]
542352:  STRB.W          R8, [R4,#0x18]
542356:  STRD.W          R2, R0, [R4,#0x20]
54235A:  MOV.W           R2, #0x100
54235E:  LDR.W           R0, [R12]; `vtable for'CTaskSimpleHoldEntity ...
542362:  STRD.W          R1, R1, [R4,#0x2C]
542366:  ADD.W           R0, R0, #8
54236A:  STR             R1, [R4,#0x38]
54236C:  STRH            R2, [R4,#0x34]
54236E:  STRB.W          R1, [R4,#0x36]
542372:  STR             R0, [R4]
542374:  MOV             R0, R4
542376:  STR.W           R1, [R0,#0xC]!
54237A:  MOV             R1, R4
54237C:  STR.W           R5, [R1,#8]!; CEntity **
542380:  VLDR            S16, [R7,#arg_C]
542384:  ITTTT NE
542386:  VLDRNE          D16, [R6]
54238A:  LDRNE           R2, [R6,#8]
54238C:  STRNE           R2, [R0,#8]
54238E:  VSTRNE          D16, [R0]
542392:  CBZ             R5, loc_5423A2
542394:  LDR             R0, [R5,#0x1C]
542396:  ORR.W           R0, R0, #0x400
54239A:  STR             R0, [R5,#0x1C]
54239C:  LDR             R0, [R1]; this
54239E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5423A2:  LDR             R0, =(_ZTV24CTaskSimplePutDownEntity_ptr - 0x5423AC)
5423A4:  VSTR            S16, [R4,#0x3C]
5423A8:  ADD             R0, PC; _ZTV24CTaskSimplePutDownEntity_ptr
5423AA:  LDR             R0, [R0]; `vtable for'CTaskSimplePutDownEntity ...
5423AC:  ADDS            R0, #8
5423AE:  STR             R0, [R4]
5423B0:  MOV             R0, R4
5423B2:  VPOP            {D8}
5423B6:  POP.W           {R8}
5423BA:  POP             {R4-R7,PC}
