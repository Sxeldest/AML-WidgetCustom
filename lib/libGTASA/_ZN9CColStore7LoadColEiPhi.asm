; =========================================================
; Game Engine Function: _ZN9CColStore7LoadColEiPhi
; Address            : 0x2E25EC - 0x2E264A
; =========================================================

2E25EC:  PUSH            {R4,R5,R7,LR}
2E25EE:  ADD             R7, SP, #8
2E25F0:  LDR             R3, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E25F6)
2E25F2:  ADD             R3, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E25F4:  LDR             R3, [R3]; CColStore::ms_pColPool ...
2E25F6:  LDR             R3, [R3]; CColStore::ms_pColPool
2E25F8:  LDR             R4, [R3,#4]
2E25FA:  LDRSB           R4, [R4,R0]
2E25FC:  CMP             R4, #0
2E25FE:  BLT             loc_2E260A
2E2600:  MOVS            R4, #0x2C ; ','
2E2602:  LDR             R3, [R3]
2E2604:  MLA.W           R5, R0, R4, R3
2E2608:  B               loc_2E260C
2E260A:  MOVS            R5, #0
2E260C:  LDRSH.W         R3, [R5,#0x22]
2E2610:  LDRSH.W         R4, [R5,#0x24]
2E2614:  CMP             R3, R4
2E2616:  BLE             loc_2E262E
2E2618:  UXTB            R3, R0; unsigned __int8
2E261A:  MOV             R0, R1; this
2E261C:  MOV             R1, R2; unsigned __int8 *
2E261E:  MOV             R2, R3; unsigned int
2E2620:  BLX             j__ZN11CFileLoader26LoadCollisionFileFirstTimeEPhjh; CFileLoader::LoadCollisionFileFirstTime(uchar *,uint,uchar)
2E2624:  CMP             R0, #0
2E2626:  ITT EQ
2E2628:  MOVEQ           R0, #0
2E262A:  POPEQ           {R4,R5,R7,PC}
2E262C:  B               loc_2E2642
2E262E:  UXTB            R3, R0; unsigned __int8
2E2630:  MOV             R0, R1; this
2E2632:  MOV             R1, R2; unsigned __int8 *
2E2634:  MOV             R2, R3; unsigned int
2E2636:  BLX             j__ZN11CFileLoader17LoadCollisionFileEPhjh; CFileLoader::LoadCollisionFile(uchar *,uint,uchar)
2E263A:  CMP             R0, #1
2E263C:  ITT NE
2E263E:  MOVNE           R0, #0
2E2640:  POPNE           {R4,R5,R7,PC}
2E2642:  MOVS            R0, #1
2E2644:  STRB.W          R0, [R5,#0x28]
2E2648:  POP             {R4,R5,R7,PC}
