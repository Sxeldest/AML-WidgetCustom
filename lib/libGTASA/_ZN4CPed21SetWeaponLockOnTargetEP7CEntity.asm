; =========================================================
; Game Engine Function: _ZN4CPed21SetWeaponLockOnTargetEP7CEntity
; Address            : 0x4A82D4 - 0x4A8378
; =========================================================

4A82D4:  PUSH            {R4-R7,LR}
4A82D6:  ADD             R7, SP, #0xC
4A82D8:  PUSH.W          {R8,R9,R11}
4A82DC:  MOV             R6, R0
4A82DE:  ADD.W           R9, R6, #0x720
4A82E2:  LDR.W           R0, [R6,#0x720]
4A82E6:  MOV             R8, R1
4A82E8:  CBZ             R0, loc_4A832A
4A82EA:  BLX             rand
4A82EE:  MOV             R1, R0
4A82F0:  MOV             R0, #0x66666667
4A82F8:  LDR             R3, =(_ZN10CPlayerPed17bSwipeTargetHeadsE_ptr - 0x4A8306)
4A82FA:  SMMUL.W         R2, R1, R0
4A82FE:  LDR.W           R0, [R9]; this
4A8302:  ADD             R3, PC; _ZN10CPlayerPed17bSwipeTargetHeadsE_ptr
4A8304:  MOVS            R5, #0
4A8306:  LDR             R3, [R3]; CPlayerPed::bSwipeTargetHeads ...
4A8308:  ASRS            R4, R2, #2
4A830A:  ADD.W           R2, R4, R2,LSR#31
4A830E:  ADD.W           R2, R2, R2,LSL#2
4A8312:  SUB.W           R1, R1, R2,LSL#1
4A8316:  CMP             R1, #0
4A8318:  IT EQ
4A831A:  MOVEQ           R5, #1
4A831C:  CMP             R0, #0
4A831E:  STRB            R5, [R3]; CPlayerPed::bSwipeTargetHeads
4A8320:  ITT NE
4A8322:  MOVNE           R1, R9; CEntity **
4A8324:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A8328:  B               loc_4A8334
4A832A:  LDR             R0, =(_ZN10CPlayerPed17bSwipeTargetHeadsE_ptr - 0x4A8332)
4A832C:  MOVS            R1, #0
4A832E:  ADD             R0, PC; _ZN10CPlayerPed17bSwipeTargetHeadsE_ptr
4A8330:  LDR             R0, [R0]; CPlayerPed::bSwipeTargetHeads ...
4A8332:  STRB            R1, [R0]; CPlayerPed::bSwipeTargetHeads
4A8334:  MOVS            R5, #0
4A8336:  ADDW            R4, R6, #0x724
4A833A:  STR.W           R5, [R6,#0x720]
4A833E:  LDR.W           R0, [R6,#0x724]; this
4A8342:  CMP             R0, #0
4A8344:  ITT NE
4A8346:  MOVNE           R1, R4; CEntity **
4A8348:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A834C:  CMP.W           R8, #0
4A8350:  STR             R5, [R4]
4A8352:  BEQ             loc_4A835E
4A8354:  LDR.W           R0, [R6,#0x440]; this
4A8358:  BLX             j__ZN16CPedIntelligence21IsInACarOrEnteringOneEv; CPedIntelligence::IsInACarOrEnteringOne(void)
4A835C:  CBZ             R0, loc_4A8364
4A835E:  POP.W           {R8,R9,R11}
4A8362:  POP             {R4-R7,PC}
4A8364:  STR.W           R8, [R9]
4A8368:  MOV             R0, R8; this
4A836A:  MOV             R1, R9; CEntity **
4A836C:  POP.W           {R8,R9,R11}
4A8370:  POP.W           {R4-R7,LR}
4A8374:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
