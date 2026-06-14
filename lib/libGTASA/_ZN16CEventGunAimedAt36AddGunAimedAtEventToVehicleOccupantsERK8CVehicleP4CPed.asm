; =========================================================
; Game Engine Function: _ZN16CEventGunAimedAt36AddGunAimedAtEventToVehicleOccupantsERK8CVehicleP4CPed
; Address            : 0x3762C8 - 0x3763CA
; =========================================================

3762C8:  PUSH            {R4-R7,LR}
3762CA:  ADD             R7, SP, #0xC
3762CC:  PUSH.W          {R8-R11}
3762D0:  SUB             SP, SP, #0x14
3762D2:  MOV             R10, R0
3762D4:  MOV             R5, R1
3762D6:  LDRB.W          R0, [R10,#0x48C]
3762DA:  CMP             R0, #0
3762DC:  BEQ             loc_37635E
3762DE:  MOV             R1, SP
3762E0:  ADD.W           R6, R1, #0x10
3762E4:  LDR             R1, =(_ZTV16CEventGunAimedAt_ptr - 0x3762F2)
3762E6:  ADD.W           R4, R10, #0x468
3762EA:  MOV.W           R9, #0
3762EE:  ADD             R1, PC; _ZTV16CEventGunAimedAt_ptr
3762F0:  LDR             R1, [R1]; `vtable for'CEventGunAimedAt ...
3762F2:  ADD.W           R11, R1, #8
3762F6:  LDR             R1, =(_ZTV16CEventGunAimedAt_ptr - 0x3762FC)
3762F8:  ADD             R1, PC; _ZTV16CEventGunAimedAt_ptr
3762FA:  LDR             R1, [R1]; `vtable for'CEventGunAimedAt ...
3762FC:  ADD.W           R8, R1, #8
376300:  LDR.W           R1, [R4,R9,LSL#2]
376304:  CBZ             R1, loc_376354
376306:  MOVS            R0, #0
376308:  CMP             R5, #0
37630A:  STR             R0, [SP,#0x30+var_2C]
37630C:  MOV             R0, #0xC80100
376314:  STR             R0, [SP,#0x30+var_28]
376316:  MOVW            R0, #0xFFFF
37631A:  STRH.W          R0, [SP,#0x30+var_24]
37631E:  STR             R5, [SP,#0x30+var_20]
376320:  STR.W           R11, [SP,#0x30+var_30]
376324:  BEQ             loc_376332
376326:  MOV             R0, R5; this
376328:  MOV             R1, R6; CEntity **
37632A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37632E:  LDR.W           R1, [R4,R9,LSL#2]
376332:  LDR.W           R0, [R1,#0x440]
376336:  MOV             R1, SP; CEvent *
376338:  MOVS            R2, #0; bool
37633A:  ADDS            R0, #0x68 ; 'h'; this
37633C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
376340:  LDR             R0, [SP,#0x30+var_20]; this
376342:  STR.W           R8, [SP,#0x30+var_30]
376346:  CMP             R0, #0
376348:  ITT NE
37634A:  MOVNE           R1, R6; CEntity **
37634C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376350:  LDRB.W          R0, [R10,#0x48C]
376354:  ADD.W           R9, R9, #1
376358:  UXTB            R1, R0
37635A:  CMP             R9, R1
37635C:  BLT             loc_376300
37635E:  LDR.W           R0, [R10,#0x464]
376362:  CBZ             R0, loc_3763C2
376364:  LDR             R1, =(_ZTV16CEventGunAimedAt_ptr - 0x376372)
376366:  MOVS            R2, #0
376368:  STR             R2, [SP,#0x30+var_2C]
37636A:  MOVW            R2, #0x100
37636E:  ADD             R1, PC; _ZTV16CEventGunAimedAt_ptr
376370:  MOVT            R2, #0xC8
376374:  STR             R2, [SP,#0x30+var_28]
376376:  MOVW            R2, #0xFFFF
37637A:  LDR             R1, [R1]; `vtable for'CEventGunAimedAt ...
37637C:  CMP             R5, #0
37637E:  STRH.W          R2, [SP,#0x30+var_24]
376382:  ADD.W           R1, R1, #8
376386:  STR             R5, [SP,#0x30+var_20]
376388:  STR             R1, [SP,#0x30+var_30]
37638A:  MOV             R1, SP
37638C:  ADD.W           R6, R1, #0x10
376390:  BEQ             loc_37639E
376392:  MOV             R0, R5; this
376394:  MOV             R1, R6; CEntity **
376396:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37639A:  LDR.W           R0, [R10,#0x464]
37639E:  LDR.W           R0, [R0,#0x440]
3763A2:  MOV             R1, SP; CEvent *
3763A4:  MOVS            R2, #0; bool
3763A6:  ADDS            R0, #0x68 ; 'h'; this
3763A8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
3763AC:  LDR             R0, =(_ZTV16CEventGunAimedAt_ptr - 0x3763B2)
3763AE:  ADD             R0, PC; _ZTV16CEventGunAimedAt_ptr
3763B0:  LDR             R1, [R0]; `vtable for'CEventGunAimedAt ...
3763B2:  LDR             R0, [SP,#0x30+var_20]; this
3763B4:  ADDS            R1, #8
3763B6:  STR             R1, [SP,#0x30+var_30]
3763B8:  CMP             R0, #0
3763BA:  ITT NE
3763BC:  MOVNE           R1, R6; CEntity **
3763BE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3763C2:  ADD             SP, SP, #0x14
3763C4:  POP.W           {R8-R11}
3763C8:  POP             {R4-R7,PC}
