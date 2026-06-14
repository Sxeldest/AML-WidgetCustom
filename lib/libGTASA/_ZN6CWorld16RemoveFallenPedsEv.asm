; =========================================================
; Game Engine Function: _ZN6CWorld16RemoveFallenPedsEv
; Address            : 0x428018 - 0x4281DC
; =========================================================

428018:  PUSH            {R4-R7,LR}
42801A:  ADD             R7, SP, #0xC
42801C:  PUSH.W          {R8-R11}
428020:  SUB             SP, SP, #4
428022:  VPUSH           {D8-D10}
428026:  SUB             SP, SP, #0x28
428028:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42802E)
42802A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
42802C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
42802E:  LDR.W           R11, [R0]; CPools::ms_pPedPool
428032:  LDR.W           R0, [R11,#8]
428036:  CMP             R0, #0
428038:  BEQ.W           loc_4281CE
42803C:  MOVW            R1, #0x7CC
428040:  SUBS            R5, R0, #1
428042:  MULS            R1, R0
428044:  LDR             R0, =(ThePaths_ptr - 0x42804E)
428046:  VMOV.F32        S18, #0.125
42804A:  ADD             R0, PC; ThePaths_ptr
42804C:  VMOV.F32        S20, #2.0
428050:  MOVW            R3, #0xF838
428054:  MOVW            R6, #0xFBCC
428058:  LDR             R0, [R0]; ThePaths
42805A:  MOVT            R3, #0xFFFF
42805E:  STR             R0, [SP,#0x60+var_40]
428060:  SUB.W           R4, R1, #0x384
428064:  LDR             R0, =(ThePaths_ptr - 0x428072)
428066:  MOVT            R6, #0xFFFF
42806A:  VLDR            S16, =-100.0
42806E:  ADD             R0, PC; ThePaths_ptr
428070:  LDR             R0, [R0]; ThePaths
428072:  STR             R0, [SP,#0x60+var_44]
428074:  LDR.W           R0, [R11,#4]
428078:  LDRSB           R0, [R0,R5]
42807A:  CMP             R0, #0
42807C:  BLT.W           loc_4281C2
428080:  LDR.W           R1, [R11]
428084:  ADD.W           R10, R1, R4
428088:  CMP.W           R10, #0x448
42808C:  BEQ.W           loc_4281C2
428090:  ADDS            R2, R1, R3
428092:  LDR.W           R0, [R10,R6]
428096:  ADD             R2, R4
428098:  ADD.W           R8, R2, #0x384
42809C:  CMP             R0, #0
42809E:  MOV             R2, R8
4280A0:  IT NE
4280A2:  ADDNE.W         R2, R0, #0x30 ; '0'
4280A6:  VLDR            S0, [R2,#8]
4280AA:  VCMPE.F32       S0, S16
4280AE:  VMRS            APSR_nzcv, FPSCR
4280B2:  BGE.W           loc_4281C2
4280B6:  SUB.W           R2, R10, #0x7C8
4280BA:  LDRB            R1, [R1,R4]
4280BC:  ADD.W           R9, R2, #0x380
4280C0:  SUBW            R6, R10, #0x434
4280C4:  CMP             R1, #1
4280C6:  BNE             loc_4280D4
4280C8:  MOV             R0, R9; this
4280CA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4280CE:  CMP             R0, #1
4280D0:  BNE             loc_4281AC
4280D2:  LDR             R0, [R6]
4280D4:  CMP             R0, #0
4280D6:  STR             R6, [SP,#0x60+var_3C]
4280D8:  IT NE
4280DA:  ADDNE.W         R8, R0, #0x30 ; '0'
4280DE:  MOVS            R0, #1
4280E0:  LDM.W           R8, {R1-R3}
4280E4:  MOVS            R6, #0
4280E6:  STR             R0, [SP,#0x60+var_60]
4280E8:  MOV             R0, #0x497423FE
4280F0:  STR             R0, [SP,#0x60+var_5C]
4280F2:  STRD.W          R6, R6, [SP,#0x60+var_58]
4280F6:  STRD.W          R6, R6, [SP,#0x60+var_50]
4280FA:  LDR             R0, [SP,#0x60+var_40]
4280FC:  STR             R6, [SP,#0x60+var_48]
4280FE:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
428102:  UXTH            R1, R0
428104:  MOVW            R2, #0xFFFF
428108:  CMP             R1, R2
42810A:  BEQ             loc_42817A
42810C:  LDR             R2, [SP,#0x60+var_44]
42810E:  ADD.W           R1, R2, R1,LSL#2
428112:  LSRS            R2, R0, #0x10
428114:  LSLS            R2, R2, #3
428116:  SUB.W           R0, R2, R0,LSR#16
42811A:  LDR.W           R1, [R1,#0x804]
42811E:  ADD.W           R0, R1, R0,LSL#2
428122:  LDRSH.W         R1, [R0,#8]
428126:  LDRSH.W         R2, [R0,#0xA]
42812A:  LDRSH.W         R0, [R0,#0xC]
42812E:  VMOV            S2, R1
428132:  VMOV            S4, R2
428136:  VMOV            S0, R0
42813A:  MOV             R0, #0xFFFFFBB8
428142:  VCVT.F32.S32    S0, S0
428146:  VCVT.F32.S32    S2, S2
42814A:  VCVT.F32.S32    S4, S4
42814E:  LDR.W           R0, [R10,R0]
428152:  LDR.W           R12, [R0,#0x3C]
428156:  MOV             R0, R9
428158:  STR             R6, [SP,#0x60+var_60]
42815A:  VMUL.F32        S0, S0, S18
42815E:  VMUL.F32        S2, S2, S18
428162:  VMUL.F32        S4, S4, S18
428166:  VADD.F32        S0, S0, S20
42816A:  VMOV            R1, S2
42816E:  VMOV            R2, S4
428172:  VMOV            R3, S0
428176:  BLX             R12
428178:  B               loc_428186
42817A:  LDR             R0, [SP,#0x60+var_3C]
42817C:  MOVS            R1, #0xC2BE0000
428182:  LDR             R0, [R0]
428184:  STR             R1, [R0,#0x38]
428186:  MOV             R0, #0xFFFFFC04
42818E:  STR.W           R6, [R10,R0]
428192:  MOV             R0, #0xFFFFFC00
42819A:  STR.W           R6, [R10,R0]
42819E:  MOV             R0, #0xFFFFFC08
4281A6:  STR.W           R6, [R10,R0]
4281AA:  B               loc_4281B2
4281AC:  MOV             R0, R9; this
4281AE:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
4281B2:  MOVW            R3, #0xF838
4281B6:  MOVW            R6, #0xFBCC
4281BA:  MOVT            R3, #0xFFFF
4281BE:  MOVT            R6, #0xFFFF
4281C2:  SUBS            R5, #1
4281C4:  SUBW            R4, R4, #0x7CC
4281C8:  ADDS            R0, R5, #1
4281CA:  BNE.W           loc_428074
4281CE:  ADD             SP, SP, #0x28 ; '('
4281D0:  VPOP            {D8-D10}
4281D4:  ADD             SP, SP, #4
4281D6:  POP.W           {R8-R11}
4281DA:  POP             {R4-R7,PC}
