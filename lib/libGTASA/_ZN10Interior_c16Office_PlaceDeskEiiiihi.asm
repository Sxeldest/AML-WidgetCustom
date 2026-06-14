; =========================================================
; Game Engine Function: _ZN10Interior_c16Office_PlaceDeskEiiiihi
; Address            : 0x44D5BC - 0x44D72C
; =========================================================

44D5BC:  PUSH            {R4-R7,LR}
44D5BE:  ADD             R7, SP, #0xC
44D5C0:  PUSH.W          {R8-R11}
44D5C4:  SUB             SP, SP, #0x2C
44D5C6:  MOV             R8, R0
44D5C8:  LDR             R0, =(g_furnitureMan_ptr - 0x44D5D4)
44D5CA:  MOV             R10, R1
44D5CC:  LDR.W           R1, [R8,#0x14]
44D5D0:  ADD             R0, PC; g_furnitureMan_ptr
44D5D2:  MOV             R9, R3
44D5D4:  LDRSH.W         R3, [R7,#arg_8]; __int16
44D5D8:  MOV             R5, R2
44D5DA:  LDR             R0, [R0]; g_furnitureMan ; this
44D5DC:  MOVS            R2, #0; int
44D5DE:  LDRB            R1, [R1,#0x1F]
44D5E0:  MOVS            R4, #1
44D5E2:  STR             R1, [SP,#0x48+var_48]; unsigned __int8
44D5E4:  MOVS            R1, #1; int
44D5E6:  MOVS            R6, #0
44D5E8:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44D5EC:  MOV             R1, R0; int
44D5EE:  ADD.W           R0, R9, #2
44D5F2:  ADD             R3, SP, #0x48+var_20
44D5F4:  ADD             R2, SP, #0x48+var_24
44D5F6:  AND.W           R0, R0, #3
44D5FA:  ADD.W           R11, R10, #1
44D5FE:  STRD.W          R6, R4, [SP,#0x48+var_48]; float
44D602:  CMP.W           R9, #1
44D606:  STR             R0, [SP,#0x48+var_2C]
44D608:  STRD.W          R0, R3, [SP,#0x48+var_40]; int
44D60C:  ADD.W           R0, R5, #1
44D610:  STRD.W          R2, R6, [SP,#0x48+var_38]; int
44D614:  MOV             R2, R10
44D616:  IT EQ
44D618:  MOVEQ           R2, R11; int
44D61A:  CMP.W           R9, #2
44D61E:  MOV             R3, R5
44D620:  MOV             R6, R10
44D622:  IT EQ
44D624:  MOVEQ           R3, R0; int
44D626:  MOV             R10, R0
44D628:  MOV             R0, R8; int
44D62A:  STR.W           R8, [SP,#0x48+var_28]
44D62E:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44D632:  CMP             R0, #0
44D634:  BEQ             loc_44D722
44D636:  CMP.W           R9, #2
44D63A:  BNE             loc_44D644
44D63C:  MOV             R8, R11
44D63E:  MOV             R4, R5
44D640:  MOV             R10, R5
44D642:  B               loc_44D672
44D644:  CMP.W           R9, #0
44D648:  BEQ             loc_44D65C
44D64A:  CMP.W           R9, #3
44D64E:  BNE             loc_44D666
44D650:  MOV             R4, R10
44D652:  MOV             R8, R11
44D654:  STR.W           R11, [SP,#0x48+var_30]
44D658:  MOV             R10, R5
44D65A:  B               loc_44D674
44D65C:  MOV             R8, R6
44D65E:  MOV             R4, R10
44D660:  STR.W           R11, [SP,#0x48+var_30]
44D664:  B               loc_44D674
44D666:  CMP.W           R9, #1
44D66A:  MOV             R8, R6
44D66C:  IT NE
44D66E:  MOVNE           R10, R5
44D670:  MOV             R4, R5
44D672:  STR             R6, [SP,#0x48+var_30]
44D674:  LDR             R6, [SP,#0x48+var_28]
44D676:  MOVS            R2, #1; int
44D678:  LDR             R0, =(g_furnitureMan_ptr - 0x44D680)
44D67A:  MOVS            R5, #1
44D67C:  ADD             R0, PC; g_furnitureMan_ptr
44D67E:  LDR             R1, [R6,#0x14]
44D680:  LDRSB.W         R3, [R6,#0x792]; __int16
44D684:  LDR             R0, [R0]; g_furnitureMan ; this
44D686:  LDRB            R1, [R1,#0x1F]
44D688:  STR             R1, [SP,#0x48+var_48]; unsigned __int8
44D68A:  MOVS            R1, #1; int
44D68C:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44D690:  MOV             R1, R0; int
44D692:  MOVS            R0, #0
44D694:  STRD.W          R0, R5, [SP,#0x48+var_48]; float
44D698:  ADD             R0, SP, #0x48+var_20
44D69A:  LDR.W           R11, [SP,#0x48+var_2C]
44D69E:  MOV             R2, R8; int
44D6A0:  STR.W           R11, [SP,#0x48+var_40]; int
44D6A4:  MOV             R3, R4; int
44D6A6:  STR             R0, [SP,#0x48+var_3C]; int
44D6A8:  ADD             R0, SP, #0x48+var_24
44D6AA:  STRD.W          R0, R5, [SP,#0x48+var_38]; int
44D6AE:  MOV             R0, R6; int
44D6B0:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44D6B4:  VMOV            S0, R4
44D6B8:  CMP.W           R11, #0
44D6BC:  VMOV            S2, R8
44D6C0:  VCVT.F32.S32    S0, S0
44D6C4:  VCVT.F32.S32    S2, S2
44D6C8:  BEQ             loc_44D6DC
44D6CA:  CMP.W           R11, #1
44D6CE:  BEQ             loc_44D6E2
44D6D0:  CMP.W           R11, #3
44D6D4:  BNE             loc_44D6EC
44D6D6:  VMOV.F32        S4, #-0.5
44D6DA:  B               loc_44D6E6
44D6DC:  VMOV.F32        S4, #-0.5
44D6E0:  B               loc_44D6F0
44D6E2:  VMOV.F32        S4, #0.5
44D6E6:  VADD.F32        S2, S2, S4
44D6EA:  B               loc_44D6F4
44D6EC:  VMOV.F32        S4, #0.5
44D6F0:  VADD.F32        S0, S0, S4
44D6F4:  VMOV            R2, S2; float
44D6F8:  AND.W           R1, R9, #3
44D6FC:  VMOV            R3, S0; float
44D700:  STRD.W          R1, R0, [SP,#0x48+var_48]; int
44D704:  MOV             R0, R6; this
44D706:  MOVS            R1, #6; int
44D708:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44D70C:  MOVS            R0, #1
44D70E:  MOVS            R4, #2
44D710:  STRD.W          R0, R4, [SP,#0x48+var_48]; int
44D714:  MOV             R2, R10; int
44D716:  LDR             R1, [SP,#0x48+var_30]; int
44D718:  MOVS            R3, #1; int
44D71A:  STR             R0, [SP,#0x48+var_40]; unsigned __int8
44D71C:  MOV             R0, R6; this
44D71E:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44D722:  MOV             R0, R4
44D724:  ADD             SP, SP, #0x2C ; ','
44D726:  POP.W           {R8-R11}
44D72A:  POP             {R4-R7,PC}
