; =========================================================
; Game Engine Function: _ZN13CEventHandler26ComputeVehicleDiedResponseEP6CEventP5CTaskS3_
; Address            : 0x38199A - 0x381A0C
; =========================================================

38199A:  PUSH            {R4,R5,R7,LR}
38199C:  ADD             R7, SP, #8
38199E:  SUB             SP, SP, #0x18
3819A0:  MOV             R4, R0
3819A2:  LDR             R0, [R1,#0xC]
3819A4:  CBZ             R0, loc_381A08
3819A6:  LDR             R0, [R4]
3819A8:  MOVS            R5, #0
3819AA:  LDR             R2, [R0,#0x44]
3819AC:  ORR.W           R2, R2, #0x20000000
3819B0:  STR             R2, [R0,#0x44]
3819B2:  LDR             R0, [R4]
3819B4:  STR.W           R5, [R0,#0x544]
3819B8:  LDR             R0, [R4]
3819BA:  LDRB.W          R2, [R0,#0x485]
3819BE:  LSLS            R2, R2, #0x1F
3819C0:  ITT NE
3819C2:  LDRNE.W         R0, [R0,#0x590]
3819C6:  CMPNE           R0, #0
3819C8:  BEQ             loc_3819E6
3819CA:  LDR.W           R2, [R0,#0x5A0]; CTask *
3819CE:  CMP             R2, #9
3819D0:  ITT NE
3819D2:  LDRNE.W         R0, [R0,#0x5A4]
3819D6:  CMPNE           R0, #2
3819D8:  BNE             loc_3819E6
3819DA:  MOV             R0, R4; this
3819DC:  ADD             SP, SP, #0x18
3819DE:  POP.W           {R4,R5,R7,LR}
3819E2:  B.W             _ZN13CEventHandler27ComputeKnockOffBikeResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeKnockOffBikeResponse(CEvent *,CTask *,CTask *)
3819E6:  MOVS            R0, #word_28; this
3819E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3819EC:  MOV.W           R1, #0x40800000
3819F0:  MOVS            R2, #0; int
3819F2:  STRD.W          R1, R5, [SP,#0x20+var_20]; float
3819F6:  MOVS            R1, #0x33 ; '3'; int
3819F8:  MOVS            R3, #0xF; int
3819FA:  STRD.W          R5, R5, [SP,#0x20+var_18]; int
3819FE:  STRD.W          R5, R5, [SP,#0x20+var_10]; int
381A02:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
381A06:  STR             R0, [R4,#0x24]
381A08:  ADD             SP, SP, #0x18
381A0A:  POP             {R4,R5,R7,PC}
