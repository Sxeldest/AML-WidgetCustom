; =========================================================
; Game Engine Function: _ZN6CWorld51FindObjectsIntersectingAngledCollisionBoxSectorListER8CPtrListRK4CBoxRK7CMatrixRK7CVectorPssPP7CEntity
; Address            : 0x429E94 - 0x429F76
; =========================================================

429E94:  PUSH            {R4-R7,LR}
429E96:  ADD             R7, SP, #0xC
429E98:  PUSH.W          {R8-R11}
429E9C:  SUB             SP, SP, #0x2C
429E9E:  STR             R2, [SP,#0x48+var_44]
429EA0:  MOV             R4, R3
429EA2:  LDR             R6, [R0]
429EA4:  MOV             R10, R1
429EA6:  CMP             R6, #0
429EA8:  BEQ             loc_429F6E
429EAA:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429EB2)
429EAC:  ADD             R5, SP, #0x48+var_30
429EAE:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429EB0:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
429EB4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x429EBA)
429EB6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
429EB8:  LDR.W           R8, [R0]; CModelInfo::ms_modelInfoPtrs ...
429EBC:  LDRD.W          R9, R6, [R6]
429EC0:  LDRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
429EC4:  LDRH.W          R1, [R9,#0x30]
429EC8:  CMP             R1, R0
429ECA:  BEQ             loc_429F6A
429ECC:  LDR.W           R1, [R9,#0x14]
429ED0:  STRH.W          R0, [R9,#0x30]
429ED4:  ADD.W           R0, R1, #0x30 ; '0'
429ED8:  CMP             R1, #0
429EDA:  IT EQ
429EDC:  ADDEQ.W         R0, R9, #4
429EE0:  LDR             R2, [SP,#0x48+var_44]
429EE2:  VLDR            D16, [R0]
429EE6:  MOV             R1, R5; CMatrix *
429EE8:  LDR             R0, [R0,#8]
429EEA:  STR             R0, [SP,#0x48+var_28]
429EEC:  VSTR            D16, [SP,#0x48+var_30]
429EF0:  LDRSH.W         R0, [R9,#0x26]
429EF4:  VLDR            S0, [SP,#0x48+var_30]
429EF8:  VLDR            S2, [SP,#0x48+var_30+4]
429EFC:  LDR.W           R0, [R8,R0,LSL#2]
429F00:  LDR             R0, [R0,#0x2C]
429F02:  LDR             R0, [R0,#0x24]
429F04:  STR             R0, [SP,#0x48+var_24]
429F06:  ADD             R0, SP, #0x48+var_40; CVector *
429F08:  VLDR            S4, [R4]
429F0C:  VLDR            S6, [R4,#4]
429F10:  VSUB.F32        S0, S0, S4
429F14:  VLDR            S8, [R4,#8]
429F18:  VSTR            S0, [SP,#0x48+var_30]
429F1C:  VSUB.F32        S0, S2, S6
429F20:  VSTR            S0, [SP,#0x48+var_30+4]
429F24:  VLDR            S0, [SP,#0x48+var_28]
429F28:  VSUB.F32        S0, S0, S8
429F2C:  VSTR            S0, [SP,#0x48+var_28]
429F30:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
429F34:  LDR             R0, [SP,#0x48+var_38]
429F36:  MOV             R1, R10; CSphere *
429F38:  VLDR            D16, [SP,#0x48+var_40]
429F3C:  STR             R0, [SP,#0x48+var_28]
429F3E:  MOV             R0, R5; this
429F40:  VSTR            D16, [SP,#0x48+var_30]
429F44:  BLX             j__ZN10CCollision13TestSphereBoxERK7CSphereRK4CBox; CCollision::TestSphereBox(CSphere const&,CBox const&)
429F48:  CBZ             R0, loc_429F6A
429F4A:  LDR             R0, [R7,#arg_0]
429F4C:  LDR             R1, [R7,#arg_4]
429F4E:  LDRSH.W         R0, [R0]
429F52:  CMP             R0, R1
429F54:  BGE             loc_429F6A
429F56:  LDR             R1, [R7,#arg_8]
429F58:  CBZ             R1, loc_429F64
429F5A:  STR.W           R9, [R1,R0,LSL#2]
429F5E:  LDR             R1, [R7,#arg_0]
429F60:  LDRH            R0, [R1]
429F62:  B               loc_429F66
429F64:  LDR             R1, [R7,#arg_0]
429F66:  ADDS            R0, #1
429F68:  STRH            R0, [R1]
429F6A:  CMP             R6, #0
429F6C:  BNE             loc_429EBC
429F6E:  ADD             SP, SP, #0x2C ; ','
429F70:  POP.W           {R8-R11}
429F74:  POP             {R4-R7,PC}
