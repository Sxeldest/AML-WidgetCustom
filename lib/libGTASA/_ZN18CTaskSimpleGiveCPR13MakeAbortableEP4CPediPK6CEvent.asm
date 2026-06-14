; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPR13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5103EC - 0x5104C2
; =========================================================

5103EC:  PUSH            {R4-R7,LR}
5103EE:  ADD             R7, SP, #0xC
5103F0:  PUSH.W          {R11}
5103F4:  MOV             R6, R3
5103F6:  MOV             R5, R1
5103F8:  MOV             R4, R0
5103FA:  CMP             R2, #2
5103FC:  BEQ             loc_51049C
5103FE:  LDR             R0, [R6]
510400:  LDR             R1, [R0,#8]
510402:  MOV             R0, R6
510404:  BLX             R1
510406:  CMP             R0, #0xA
510408:  BEQ             loc_51049C
51040A:  LDR             R0, [R6]
51040C:  LDR             R1, [R0,#8]
51040E:  MOV             R0, R6
510410:  BLX             R1
510412:  CMP             R0, #0x34 ; '4'
510414:  BEQ             loc_51049C
510416:  LDR             R0, [R6]
510418:  LDR             R1, [R0,#8]
51041A:  MOV             R0, R6
51041C:  BLX             R1
51041E:  CMP             R0, #0x3A ; ':'
510420:  BEQ             loc_51049C
510422:  LDR             R0, [R6]
510424:  LDR             R1, [R0,#8]
510426:  MOV             R0, R6
510428:  BLX             R1
51042A:  CMP             R0, #0x42 ; 'B'
51042C:  BEQ             loc_51049C
51042E:  LDR             R0, [R6]
510430:  LDR             R1, [R0,#8]
510432:  MOV             R0, R6
510434:  BLX             R1
510436:  CMP             R0, #0x40 ; '@'
510438:  BEQ             loc_51049C
51043A:  LDR             R0, [R6]
51043C:  LDR             R1, [R0,#8]
51043E:  MOV             R0, R6
510440:  BLX             R1
510442:  CMP             R0, #0x29 ; ')'
510444:  BEQ             loc_51049C
510446:  LDR             R0, [R6]
510448:  LDR             R1, [R0,#8]
51044A:  MOV             R0, R6
51044C:  BLX             R1
51044E:  CMP             R0, #0x49 ; 'I'
510450:  BEQ             loc_51049C
510452:  LDR             R0, [R6]
510454:  LDR             R1, [R0,#8]
510456:  MOV             R0, R6
510458:  BLX             R1
51045A:  ADDW            R1, R5, #0x544
51045E:  CMP             R0, #9
510460:  VLDR            S0, [R1]
510464:  BNE             loc_51048A
510466:  VMOV.F32        S2, #10.0
51046A:  VCMPE.F32       S0, S2
51046E:  VMRS            APSR_nzcv, FPSCR
510472:  BLE             loc_51049C
510474:  VLDR            S2, [R4,#0x14]
510478:  VLDR            S4, =40.0
51047C:  VSUB.F32        S2, S2, S0
510480:  VCMPE.F32       S2, S4
510484:  VMRS            APSR_nzcv, FPSCR
510488:  BGE             loc_51049C
51048A:  VCMPE.F32       S0, #0.0
51048E:  VMRS            APSR_nzcv, FPSCR
510492:  BLE             loc_51049C
510494:  MOVS            R0, #0
510496:  POP.W           {R11}
51049A:  POP             {R4-R7,PC}
51049C:  LDR             R0, [R4,#0x10]; this
51049E:  CBZ             R0, loc_5104BA
5104A0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5104AA)
5104A2:  MOVS            R2, #0; void *
5104A4:  MOVS            R5, #0
5104A6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5104A8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5104AA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5104AE:  LDR             R0, [R4,#0x10]
5104B0:  MOVS            R1, #0xC47A0000
5104B6:  STR             R1, [R0,#0x1C]
5104B8:  STR             R5, [R4,#0x10]
5104BA:  MOVS            R0, #1
5104BC:  POP.W           {R11}
5104C0:  POP             {R4-R7,PC}
