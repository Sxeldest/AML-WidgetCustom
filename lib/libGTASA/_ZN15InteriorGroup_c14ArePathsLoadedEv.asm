; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c14ArePathsLoadedEv
; Address            : 0x44A0D0 - 0x44A1B8
; =========================================================

44A0D0:  PUSH            {R4-R7,LR}
44A0D2:  ADD             R7, SP, #0xC
44A0D4:  PUSH.W          {R8,R9,R11}
44A0D8:  VPUSH           {D8-D11}
44A0DC:  SUB             SP, SP, #0x78; float
44A0DE:  MOV             R4, R0
44A0E0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44A0EC)
44A0E2:  LDR             R1, [R4,#8]
44A0E4:  ADD.W           R12, SP, #0xB0+var_98
44A0E8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44A0EA:  VLDR            S18, =1000000.0
44A0EE:  VLDR            S16, =-1000000.0
44A0F2:  ADD.W           R9, SP, #0xB0+var_98
44A0F6:  LDRSH.W         R1, [R1,#0x26]
44A0FA:  VMOV            D11, D9
44A0FE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
44A100:  VMOV            D10, D8
44A104:  ADD.W           R8, SP, #0xB0+var_A8
44A108:  LDR.W           R0, [R0,R1,LSL#2]
44A10C:  LDR             R0, [R0,#0x2C]
44A10E:  LDM.W           R0, {R1-R3,R6}
44A112:  LDRD.W          R5, R0, [R0,#0x10]
44A116:  STRD.W          R6, R2, [SP,#0xB0+var_44]
44A11A:  STRD.W          R6, R2, [SP,#0xB0+var_74]
44A11E:  STRD.W          R1, R5, [SP,#0xB0+var_5C]
44A122:  STRD.W          R1, R5, [SP,#0xB0+var_8C]
44A126:  STRD.W          R3, R1, [SP,#0xB0+var_6C]
44A12A:  STRD.W          R5, R3, [SP,#0xB0+var_7C]
44A12E:  STRD.W          R3, R6, [SP,#0xB0+var_84]
44A132:  STR             R0, [SP,#0xB0+var_3C]
44A134:  STM.W           R12, {R1-R3}
44A138:  STRD.W          R5, R0, [SP,#0xB0+var_4C]
44A13C:  MOVS            R5, #0
44A13E:  STRD.W          R0, R6, [SP,#0xB0+var_54]
44A142:  STRD.W          R2, R0, [SP,#0xB0+var_64]
44A146:  LDR             R6, [R4,#8]
44A148:  LDR             R1, [R6,#0x14]
44A14A:  CBNZ            R1, loc_44A15C
44A14C:  MOV             R0, R6; this
44A14E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
44A152:  LDR             R1, [R6,#0x14]; CMatrix *
44A154:  ADDS            R0, R6, #4; this
44A156:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
44A15A:  LDR             R1, [R6,#0x14]
44A15C:  ADD.W           R6, R9, R5
44A160:  MOV             R0, R8
44A162:  MOV             R2, R6
44A164:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
44A168:  VLDR            D16, [SP,#0xB0+var_A8]
44A16C:  ADDS            R5, #0xC
44A16E:  LDR             R0, [SP,#0xB0+var_A0]
44A170:  CMP             R5, #0x60 ; '`'
44A172:  STR             R0, [R6,#8]
44A174:  VSTR            D16, [R6]
44A178:  VLDR            S0, [R6]
44A17C:  VLDR            S2, [R6,#4]
44A180:  VMAX.F32        D8, D0, D8
44A184:  VMAX.F32        D10, D1, D10
44A188:  VMIN.F32        D11, D1, D11
44A18C:  VMIN.F32        D9, D0, D9
44A190:  BNE             loc_44A146
44A192:  VMOV            R1, S18; float
44A196:  LDR             R0, =(ThePaths_ptr - 0x44A1A8)
44A198:  VMOV            R2, S16; float
44A19C:  VSTR            S20, [SP,#0xB0+var_B0]
44A1A0:  VMOV            R3, S22; float
44A1A4:  ADD             R0, PC; ThePaths_ptr
44A1A6:  LDR             R0, [R0]; ThePaths ; this
44A1A8:  BLX             j__ZN9CPathFind21AreNodesLoadedForAreaEffff; CPathFind::AreNodesLoadedForArea(float,float,float,float)
44A1AC:  ADD             SP, SP, #0x78 ; 'x'
44A1AE:  VPOP            {D8-D11}
44A1B2:  POP.W           {R8,R9,R11}
44A1B6:  POP             {R4-R7,PC}
