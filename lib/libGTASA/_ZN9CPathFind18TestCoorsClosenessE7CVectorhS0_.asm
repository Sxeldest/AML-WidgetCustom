; =========================================================
; Game Engine Function: _ZN9CPathFind18TestCoorsClosenessE7CVectorhS0_
; Address            : 0x317130 - 0x3171B0
; =========================================================

317130:  PUSH            {R4-R7,LR}
317132:  ADD             R7, SP, #0xC
317134:  PUSH.W          {R8-R11}
317138:  SUB             SP, SP, #0x44
31713A:  LDR             R5, =(EmptyNodeAddress_ptr - 0x31714A)
31713C:  MOVW            R10, #0
317140:  LDR             R6, =(DummyResult2_ptr - 0x317150)
317142:  MOVW            R11, #0
317146:  ADD             R5, PC; EmptyNodeAddress_ptr
317148:  LDRD.W          LR, R8, [R7,#arg_4]
31714C:  ADD             R6, PC; DummyResult2_ptr
31714E:  MOVS            R4, #0
317150:  LDR             R5, [R5]; EmptyNodeAddress
317152:  MOVT            R10, #0x42C8
317156:  MOVT            R11, #0x4248
31715A:  ADD.W           R12, SP, #0x60+var_20
31715E:  LDR.W           R9, [R7,#arg_C]
317162:  LDR             R5, [R5]
317164:  STRD.W          R12, R11, [SP,#0x60+var_40]; int
317168:  ADD.W           R12, SP, #0x60+var_58
31716C:  STRD.W          R4, R10, [SP,#0x60+var_38]; int
317170:  STRD.W          R4, R5, [SP,#0x60+var_30]; int
317174:  MOVW            R5, #0xFFFF
317178:  STRD.W          R4, R4, [SP,#0x60+var_28]; int
31717C:  LDR             R6, [R6]; DummyResult2
31717E:  STRD.W          R9, R5, [SP,#0x60+var_60]; int
317182:  STM.W           R12, {R1-R4,R6}
317186:  MOV             R2, LR; int
317188:  MOV             R3, R8; int
31718A:  LDR             R1, [R7,#arg_0]; int
31718C:  STR             R4, [SP,#0x60+var_44]; int
31718E:  BLX             j__ZN9CPathFind12DoPathSearchEh7CVector12CNodeAddressS0_PS1_PsiPffS2_fbS1_bb; CPathFind::DoPathSearch(uchar,CVector,CNodeAddress,CVector,CNodeAddress*,short *,int,float *,float,CNodeAddress*,float,bool,CNodeAddress,bool,bool)
317192:  VLDR            S0, =100.0
317196:  VLDR            S2, [SP,#0x60+var_20]
31719A:  VCMPE.F32       S2, S0
31719E:  VMRS            APSR_nzcv, FPSCR
3171A2:  IT LT
3171A4:  MOVLT           R4, #1
3171A6:  MOV             R0, R4
3171A8:  ADD             SP, SP, #0x44 ; 'D'
3171AA:  POP.W           {R8-R11}
3171AE:  POP             {R4-R7,PC}
