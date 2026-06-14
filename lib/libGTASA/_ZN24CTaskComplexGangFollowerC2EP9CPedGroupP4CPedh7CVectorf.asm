; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollowerC2EP9CPedGroupP4CPedh7CVectorf
; Address            : 0x5163E8 - 0x51649C
; =========================================================

5163E8:  PUSH            {R4-R7,LR}
5163EA:  ADD             R7, SP, #0xC
5163EC:  PUSH.W          {R8,R9,R11}
5163F0:  MOV             R8, R3
5163F2:  MOV             R5, R2
5163F4:  MOV             R9, R1
5163F6:  MOV             R4, R0
5163F8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5163FC:  LDR.W           R12, =(_ZTV24CTaskComplexGangFollower_ptr - 0x51640C)
516400:  MOVS            R6, #0
516402:  LDR             R0, [R7,#arg_4]
516404:  CMP             R5, #0
516406:  LDR             R2, [R7,#arg_8]
516408:  ADD             R12, PC; _ZTV24CTaskComplexGangFollower_ptr
51640A:  LDR             R3, [R7,#arg_0]
51640C:  STRH.W          R6, [R4,#0x48]
516410:  STR.W           R9, [R4,#0xC]
516414:  LDRB.W          R1, [R4,#0x3D]
516418:  STRB.W          R8, [R4,#0x3C]
51641C:  STRD.W          R6, R6, [R4,#0x40]
516420:  STRD.W          R3, R0, [R4,#0x20]
516424:  STRD.W          R2, R3, [R4,#0x28]
516428:  STRD.W          R0, R2, [R4,#0x30]
51642C:  ORR.W           R0, R1, #0x14
516430:  LDR.W           R2, [R12]; `vtable for'CTaskComplexGangFollower ...
516434:  VLDR            S0, [R7,#arg_C]
516438:  ADD.W           R1, R2, #8
51643C:  VSTR            S0, [R4,#0x38]
516440:  STRB.W          R0, [R4,#0x3D]
516444:  STR             R1, [R4]
516446:  MOV             R1, R4
516448:  STR.W           R5, [R1,#0x10]!; CEntity **
51644C:  BEQ             loc_516472
51644E:  MOV             R0, R5; this
516450:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
516454:  LDR             R6, [R4,#0x10]
516456:  LDR             R0, [R6,#0x14]
516458:  ADD.W           R1, R0, #0x30 ; '0'
51645C:  CMP             R0, #0
51645E:  IT EQ
516460:  ADDEQ           R1, R6, #4
516462:  LDRB.W          R0, [R4,#0x3D]
516466:  VLDR            D16, [R1]
51646A:  LDR             R1, [R1,#8]
51646C:  STR             R1, [R4,#0x1C]
51646E:  VSTR            D16, [R4,#0x14]
516472:  AND.W           R0, R0, #0xFC
516476:  STRB.W          R0, [R4,#0x3D]
51647A:  MOVS            R0, #0; int
51647C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
516480:  LDRB.W          R1, [R4,#0x3D]
516484:  CMP             R6, R0
516486:  MOV             R0, R4
516488:  AND.W           R2, R1, #0xF7
51648C:  IT EQ
51648E:  ORREQ.W         R2, R1, #8
516492:  STRB.W          R2, [R4,#0x3D]
516496:  POP.W           {R8,R9,R11}
51649A:  POP             {R4-R7,PC}
