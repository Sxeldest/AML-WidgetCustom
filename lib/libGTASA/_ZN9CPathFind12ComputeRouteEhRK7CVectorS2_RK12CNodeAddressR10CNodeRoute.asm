; =========================================================
; Game Engine Function: _ZN9CPathFind12ComputeRouteEhRK7CVectorS2_RK12CNodeAddressR10CNodeRoute
; Address            : 0x31578C - 0x315844
; =========================================================

31578C:  PUSH            {R4-R7,LR}
31578E:  ADD             R7, SP, #0xC
315790:  PUSH.W          {R8,R9,R11}
315794:  SUB             SP, SP, #0x68
315796:  LDR             R4, [R7,#arg_0]
315798:  MOV             LR, R2
31579A:  MOVS            R5, #0
31579C:  MOVW            R2, #0xFFFF
3157A0:  STRH.W          R2, [SP,#0x80+var_38]
3157A4:  MOV             R12, R3
3157A6:  STRH.W          R2, [SP,#0x80+var_3C]
3157AA:  STRH.W          R2, [SP,#0x80+var_34]
3157AE:  STRH.W          R2, [SP,#0x80+var_30]
3157B2:  STRH.W          R2, [SP,#0x80+var_2C]
3157B6:  STRH.W          R2, [SP,#0x80+var_28]
3157BA:  STRH.W          R2, [SP,#0x80+var_24]
3157BE:  STRH.W          R5, [R7,#var_1A]
3157C2:  STRH.W          R2, [SP,#0x80+var_20]
3157C6:  LDM.W           LR, {R2,R3,LR}; int
3157CA:  LDRD.W          R8, R9, [R12]
3157CE:  LDR.W           R6, [R12,#8]
3157D2:  LDR.W           R12, [R4]
3157D6:  LDR             R4, =(EmptyNodeAddress_ptr - 0x3157DC)
3157D8:  ADD             R4, PC; EmptyNodeAddress_ptr
3157DA:  LDR             R4, [R4]; EmptyNodeAddress
3157DC:  LDR             R4, [R4]
3157DE:  STR             R4, [SP,#0x80+var_4C]; int
3157E0:  MOV             R4, #0x497423FE
3157E8:  STR             R4, [SP,#0x80+var_54]; float
3157EA:  STR             R4, [SP,#0x80+var_5C]; float
3157EC:  MOVS            R4, #8
3157EE:  STR             R4, [SP,#0x80+var_64]; int
3157F0:  SUB.W           R4, R7, #-var_1A
3157F4:  STR             R4, [SP,#0x80+var_68]; int
3157F6:  ADD             R4, SP, #0x80+var_3C
3157F8:  STRD.W          R5, R5, [SP,#0x80+var_48]; int
3157FC:  STR             R5, [SP,#0x80+var_50]; int
3157FE:  STR             R5, [SP,#0x80+var_58]; int
315800:  STR             R5, [SP,#0x80+var_60]; int
315802:  STRD.W          R6, R4, [SP,#0x80+var_70]; int
315806:  STRD.W          R8, R9, [SP,#0x80+var_78]; int
31580A:  STRD.W          LR, R12, [SP,#0x80+var_80]; int
31580E:  BLX             j__ZN9CPathFind12DoPathSearchEh7CVector12CNodeAddressS0_PS1_PsiPffS2_fbS1_bb; CPathFind::DoPathSearch(uchar,CVector,CNodeAddress,CVector,CNodeAddress*,short *,int,float *,float,CNodeAddress*,float,bool,CNodeAddress,bool,bool)
315812:  LDR             R0, [R7,#arg_4]
315814:  STR             R5, [R0]
315816:  LDRSH.W         R1, [R7,#var_1A]
31581A:  CMP             R1, #1
31581C:  BLT             loc_31583C
31581E:  MOVS            R2, #0
315820:  MOVS            R3, #0
315822:  CMP             R2, #7
315824:  BGT             loc_315836
315826:  ADD.W           R2, R0, R2,LSL#2
31582A:  LDR.W           R6, [R4,R3,LSL#2]
31582E:  STR             R6, [R2,#4]
315830:  LDR             R2, [R0]
315832:  ADDS            R2, #1
315834:  STR             R2, [R0]
315836:  ADDS            R3, #1
315838:  CMP             R3, R1
31583A:  BLT             loc_315822
31583C:  ADD             SP, SP, #0x68 ; 'h'
31583E:  POP.W           {R8,R9,R11}
315842:  POP             {R4-R7,PC}
