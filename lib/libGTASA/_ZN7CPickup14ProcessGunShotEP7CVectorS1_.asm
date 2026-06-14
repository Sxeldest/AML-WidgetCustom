; =========================================================
; Game Engine Function: _ZN7CPickup14ProcessGunShotEP7CVectorS1_
; Address            : 0x31F5A8 - 0x31F65C
; =========================================================

31F5A8:  PUSH            {R4-R7,LR}
31F5AA:  ADD             R7, SP, #0xC
31F5AC:  PUSH.W          {R11}
31F5B0:  SUB             SP, SP, #0x50; int
31F5B2:  MOV             R4, R0
31F5B4:  ADD             R0, SP, #0x60+var_30; this
31F5B6:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
31F5BA:  LDR             R0, [R4,#4]
31F5BC:  CMP             R0, #0
31F5BE:  BEQ             loc_31F654
31F5C0:  LDR             R1, [R0,#0x14]
31F5C2:  ADD.W           R2, R1, #0x30 ; '0'
31F5C6:  CMP             R1, #0
31F5C8:  IT EQ
31F5CA:  ADDEQ           R2, R0, #4
31F5CC:  ADD             R1, SP, #0x60+var_48
31F5CE:  LDR             R0, [R2,#8]
31F5D0:  VLDR            D16, [R2]
31F5D4:  STR             R0, [SP,#0x60+var_40]
31F5D6:  MOV.W           R0, #0x40800000
31F5DA:  STR             R0, [SP,#0x60+var_3C]
31F5DC:  ADD             R0, SP, #0x60+var_30
31F5DE:  VSTR            D16, [SP,#0x60+var_48]
31F5E2:  BLX             j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
31F5E6:  CMP             R0, #1
31F5E8:  BNE             loc_31F654
31F5EA:  LDR             R0, [R4,#4]
31F5EC:  MOVS            R6, #0
31F5EE:  MOVS            R5, #1
31F5F0:  LDR             R1, [R0,#0x14]
31F5F2:  ADD.W           R2, R1, #0x30 ; '0'
31F5F6:  CMP             R1, #0
31F5F8:  IT EQ
31F5FA:  ADDEQ           R2, R0, #4
31F5FC:  LDRD.W          R3, R0, [R2]; int
31F600:  LDR             R1, [R2,#8]
31F602:  MOVS            R2, #0xBF800000
31F608:  STMEA.W         SP, {R0,R1,R6}
31F60C:  MOVS            R0, #0; int
31F60E:  STRD.W          R5, R2, [SP,#0x60+var_54]; int
31F612:  MOVS            R1, #0; int
31F614:  MOVS            R2, #8; int
31F616:  STR             R6, [SP,#0x60+var_4C]; int
31F618:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
31F61C:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F624)
31F61E:  LDRH            R1, [R4,#0x1A]
31F620:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31F622:  LDR             R0, [R0]; CPickups::aPickUps ...
31F624:  LSLS            R1, R1, #0x10
31F626:  SUBS            R0, R4, R0
31F628:  ORR.W           R1, R1, R0,ASR#5
31F62C:  MOVS            R0, #7
31F62E:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
31F632:  LDR             R0, [R4,#4]; this
31F634:  CBZ             R0, loc_31F64A
31F636:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31F63A:  LDR             R0, [R4,#4]
31F63C:  CMP             R0, #0
31F63E:  ITTT NE
31F640:  LDRNE           R1, [R0]
31F642:  LDRNE           R1, [R1,#4]
31F644:  BLXNE           R1
31F646:  MOVS            R0, #0
31F648:  STR             R0, [R4,#4]
31F64A:  LDRB            R0, [R4,#0x1D]
31F64C:  STRB            R6, [R4,#0x1C]
31F64E:  ORR.W           R0, R0, #1
31F652:  STRB            R0, [R4,#0x1D]
31F654:  ADD             SP, SP, #0x50 ; 'P'
31F656:  POP.W           {R11}
31F65A:  POP             {R4-R7,PC}
