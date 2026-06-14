; =========================================================
; Game Engine Function: _ZN6CWorld29ProcessVerticalLineSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybP15CStoredCollPoly
; Address            : 0x42678C - 0x426868
; =========================================================

42678C:  PUSH            {R4-R7,LR}
42678E:  ADD             R7, SP, #0xC
426790:  PUSH.W          {R8-R11}
426794:  SUB             SP, SP, #0x24
426796:  STRD.W          R1, R2, [SP,#0x40+var_28]
42679A:  MOV.W           R11, #0
42679E:  LDR             R1, [R3]
4267A0:  STR             R1, [SP,#0x40+var_20]
4267A2:  LDR             R5, [R0]
4267A4:  CMP             R5, #0
4267A6:  BEQ             loc_42685E
4267A8:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4267B0)
4267AA:  LDR             R1, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x4267B4)
4267AC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4267AE:  STR             R3, [SP,#0x40+var_30]
4267B0:  ADD             R1, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
4267B2:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
4267B6:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x4267C0)
4267B8:  LDR.W           R10, [R1]; CWorld::ms_iProcessLineNumCrossings ...
4267BC:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
4267BE:  LDR.W           R9, [R0]; CWorld::pIgnoreEntity ...
4267C2:  LDR             R0, =(_ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr - 0x4267C8)
4267C4:  ADD             R0, PC; _ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr
4267C6:  LDR             R0, [R0]; CCollision::ms_iProcessLineNumCrossings ...
4267C8:  STR             R0, [SP,#0x40+var_2C]
4267CA:  LDRD.W          R6, R5, [R5]
4267CE:  LDRH.W          R0, [R8]; CWorld::ms_nCurrentScanCode
4267D2:  LDRH            R1, [R6,#0x30]
4267D4:  CMP             R1, R0
4267D6:  ITT NE
4267D8:  LDRBNE          R1, [R6,#0x1C]
4267DA:  MOVSNE.W        R1, R1,LSL#31
4267DE:  BNE             loc_4267E6
4267E0:  CMP             R5, #0
4267E2:  BNE             loc_4267CA
4267E4:  B               loc_42683E
4267E6:  LDR.W           R1, [R9]; CWorld::pIgnoreEntity
4267EA:  CMP             R1, R6
4267EC:  BEQ             loc_4267E0
4267EE:  LDR             R4, [R6,#0x14]
4267F0:  STRH            R0, [R6,#0x30]
4267F2:  CBNZ            R4, loc_426804
4267F4:  MOV             R0, R6; this
4267F6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4267FA:  LDR             R1, [R6,#0x14]; CMatrix *
4267FC:  ADDS            R0, R6, #4; this
4267FE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
426802:  LDR             R4, [R6,#0x14]
426804:  MOV             R0, R6; this
426806:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
42680A:  MOV             R2, R0; CColLine *
42680C:  ADD             R0, SP, #0x40+var_20
42680E:  STR             R0, [SP,#0x40+var_40]; int
426810:  MOV             R1, R4; int
426812:  LDR             R0, [R7,#arg_4]
426814:  STRD.W          R0, R11, [SP,#0x40+var_3C]; int
426818:  LDR             R0, [R7,#arg_8]
42681A:  STR             R0, [SP,#0x40+var_34]; int
42681C:  LDR             R0, [SP,#0x40+var_28]; int
42681E:  LDR             R3, [SP,#0x40+var_24]; int
426820:  BLX             j__ZN10CCollision19ProcessVerticalLineERK8CColLineRK7CMatrixR9CColModelR9CColPointRfbbP15CStoredCollPoly; CCollision::ProcessVerticalLine(CColLine const&,CMatrix const&,CColModel &,CColPoint &,float &,bool,bool,CStoredCollPoly *)
426824:  CMP             R0, #1
426826:  BNE             loc_4267E0
426828:  LDR             R0, [R7,#arg_0]
42682A:  STR             R6, [R0]
42682C:  LDR             R0, [SP,#0x40+var_2C]
42682E:  LDR.W           R1, [R10]; CWorld::ms_iProcessLineNumCrossings
426832:  LDR             R0, [R0]
426834:  ADD             R0, R1
426836:  STR.W           R0, [R10]; CWorld::ms_iProcessLineNumCrossings
42683A:  CMP             R5, #0
42683C:  BNE             loc_4267CA
42683E:  LDR             R0, [SP,#0x40+var_30]
426840:  VLDR            S0, [SP,#0x40+var_20]
426844:  VLDR            S2, [R0]
426848:  VCMPE.F32       S0, S2
42684C:  VMRS            APSR_nzcv, FPSCR
426850:  ITTE LT
426852:  VSTRLT          S0, [R0]
426856:  MOVLT.W         R11, #1
42685A:  MOVGE.W         R11, #0
42685E:  MOV             R0, R11
426860:  ADD             SP, SP, #0x24 ; '$'
426862:  POP.W           {R8-R11}
426866:  POP             {R4-R7,PC}
