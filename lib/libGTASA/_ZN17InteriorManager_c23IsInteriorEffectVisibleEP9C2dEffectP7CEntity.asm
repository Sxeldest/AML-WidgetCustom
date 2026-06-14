; =========================================================
; Game Engine Function: _ZN17InteriorManager_c23IsInteriorEffectVisibleEP9C2dEffectP7CEntity
; Address            : 0x44CB88 - 0x44CE00
; =========================================================

44CB88:  PUSH            {R4-R7,LR}
44CB8A:  ADD             R7, SP, #0xC
44CB8C:  PUSH.W          {R8-R10}
44CB90:  VPUSH           {D8-D14}
44CB94:  SUB             SP, SP, #0x70
44CB96:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44CBA6)
44CB98:  MOV             R4, R2
44CB9A:  LDRSH.W         R1, [R4,#0x26]
44CB9E:  ADD.W           R12, SP, #0xC0+var_B0
44CBA2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44CBA4:  VLDR            S18, =1000000.0
44CBA8:  VLDR            S16, =-1000000.0
44CBAC:  ADD.W           R8, R4, #4
44CBB0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
44CBB2:  VMOV            D11, D9
44CBB6:  VMOV            D12, D8
44CBBA:  ADD.W           R10, SP, #0xC0+var_B0
44CBBE:  VMOV            D10, D8
44CBC2:  MOV             R9, SP
44CBC4:  LDR.W           R0, [R0,R1,LSL#2]
44CBC8:  VMOV            D13, D9
44CBCC:  LDR             R0, [R0,#0x2C]
44CBCE:  LDM.W           R0, {R1-R3,R6}
44CBD2:  LDRD.W          R5, R0, [R0,#0x10]
44CBD6:  STRD.W          R6, R2, [SP,#0xC0+var_5C]
44CBDA:  STRD.W          R6, R2, [SP,#0xC0+var_8C]
44CBDE:  STRD.W          R1, R5, [SP,#0xC0+var_74]
44CBE2:  STRD.W          R1, R5, [SP,#0xC0+var_A4]
44CBE6:  STRD.W          R3, R1, [SP,#0xC0+var_84]
44CBEA:  STRD.W          R5, R3, [SP,#0xC0+var_94]
44CBEE:  STRD.W          R3, R6, [SP,#0xC0+var_9C]
44CBF2:  STR             R0, [SP,#0xC0+var_54]
44CBF4:  STM.W           R12, {R1-R3}
44CBF8:  STRD.W          R5, R0, [SP,#0xC0+var_64]
44CBFC:  STRD.W          R0, R6, [SP,#0xC0+var_6C]
44CC00:  MOVS            R6, #0
44CC02:  STRD.W          R2, R0, [SP,#0xC0+var_7C]
44CC06:  LDR             R1, [R4,#0x14]
44CC08:  CBNZ            R1, loc_44CC1A
44CC0A:  MOV             R0, R4; this
44CC0C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
44CC10:  LDR             R1, [R4,#0x14]; CMatrix *
44CC12:  MOV             R0, R8; this
44CC14:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
44CC18:  LDR             R1, [R4,#0x14]
44CC1A:  ADD.W           R5, R10, R6
44CC1E:  MOV             R0, R9
44CC20:  MOV             R2, R5
44CC22:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
44CC26:  VLDR            D16, [SP,#0xC0+var_C0]
44CC2A:  ADDS            R6, #0xC
44CC2C:  LDR             R0, [SP,#0xC0+var_B8]
44CC2E:  CMP             R6, #0x60 ; '`'
44CC30:  STR             R0, [R5,#8]
44CC32:  VSTR            D16, [R5]
44CC36:  VLDR            S0, [R5]
44CC3A:  VLDR            S2, [R5,#4]
44CC3E:  VLDR            S4, [R5,#8]
44CC42:  VMAX.F32        D8, D0, D8
44CC46:  VMAX.F32        D12, D1, D12
44CC4A:  VMAX.F32        D10, D2, D10
44CC4E:  VMIN.F32        D13, D2, D13
44CC52:  VMIN.F32        D11, D1, D11
44CC56:  VMIN.F32        D9, D0, D9
44CC5A:  BNE             loc_44CC06
44CC5C:  LDR             R0, =(TheCamera_ptr - 0x44CC6A)
44CC5E:  MOVS            R6, #0
44CC60:  MOVS            R4, #0
44CC62:  MOV.W           R8, #0
44CC66:  ADD             R0, PC; TheCamera_ptr
44CC68:  LDR             R0, [R0]; TheCamera
44CC6A:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
44CC6C:  ADD.W           R2, R1, #0x30 ; '0'
44CC70:  CMP             R1, #0
44CC72:  IT EQ
44CC74:  ADDEQ           R2, R0, #4
44CC76:  MOVS            R0, #0
44CC78:  VLDR            S0, [R2]
44CC7C:  MOVS            R1, #0
44CC7E:  VLDR            S2, [R2,#4]
44CC82:  VCMPE.F32       S0, S16
44CC86:  VLDR            S28, [R2,#8]
44CC8A:  VMRS            APSR_nzcv, FPSCR
44CC8E:  VCMPE.F32       S0, S18
44CC92:  IT LE
44CC94:  MOVLE           R0, #1
44CC96:  VMRS            APSR_nzcv, FPSCR
44CC9A:  VCMPE.F32       S2, S24
44CC9E:  IT GE
44CCA0:  MOVGE           R1, #1
44CCA2:  VMRS            APSR_nzcv, FPSCR
44CCA6:  VCMPE.F32       S2, S22
44CCAA:  AND.W           R5, R1, R0
44CCAE:  MOV.W           R0, #0; int
44CCB2:  IT LE
44CCB4:  MOVLE           R6, #1
44CCB6:  VMRS            APSR_nzcv, FPSCR
44CCBA:  IT GE
44CCBC:  MOVGE           R4, #1
44CCBE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
44CCC2:  VCMPE.F32       S28, S26
44CCC6:  AND.W           R2, R5, R4
44CCCA:  VMRS            APSR_nzcv, FPSCR
44CCCE:  LDR             R1, [R0,#0x14]
44CCD0:  MOV.W           R3, #0
44CCD4:  AND.W           R2, R2, R6
44CCD8:  VCMPE.F32       S28, S20
44CCDC:  IT GE
44CCDE:  MOVGE           R3, #1
44CCE0:  CMP             R1, #0
44CCE2:  AND.W           R2, R2, R3
44CCE6:  ADD.W           R3, R1, #0x30 ; '0'
44CCEA:  IT EQ
44CCEC:  ADDEQ           R3, R0, #4
44CCEE:  VMRS            APSR_nzcv, FPSCR
44CCF2:  VLDR            S0, [R3]
44CCF6:  MOV.W           R0, #0
44CCFA:  VLDR            S2, [R3,#4]
44CCFE:  MOV.W           R1, #0
44CD02:  VCMPE.F32       S0, S16
44CD06:  VLDR            S4, [R3,#8]
44CD0A:  IT LE
44CD0C:  MOVLE           R0, #1
44CD0E:  VMRS            APSR_nzcv, FPSCR
44CD12:  AND.W           R5, R0, R2
44CD16:  MOV.W           R0, #0
44CD1A:  VCMPE.F32       S0, S18
44CD1E:  IT LE
44CD20:  MOVLE           R0, #1
44CD22:  VMRS            APSR_nzcv, FPSCR
44CD26:  VCMPE.F32       S2, S22
44CD2A:  IT GE
44CD2C:  MOVGE           R1, #1
44CD2E:  VMRS            APSR_nzcv, FPSCR
44CD32:  AND.W           R0, R0, R1
44CD36:  MOV.W           R1, #0
44CD3A:  VCMPE.F32       S2, S24
44CD3E:  IT GE
44CD40:  MOVGE           R1, #1
44CD42:  VMRS            APSR_nzcv, FPSCR
44CD46:  AND.W           R0, R0, R1
44CD4A:  MOV.W           R1, #0
44CD4E:  VCMPE.F32       S4, S26
44CD52:  IT LE
44CD54:  MOVLE           R1, #1
44CD56:  VMRS            APSR_nzcv, FPSCR
44CD5A:  AND.W           R0, R0, R1
44CD5E:  MOV.W           R1, #0
44CD62:  VCMPE.F32       S4, S20
44CD66:  IT GE
44CD68:  MOVGE           R1, #1
44CD6A:  VMRS            APSR_nzcv, FPSCR
44CD6E:  AND.W           R0, R0, R1
44CD72:  MOV.W           R1, #0
44CD76:  IT LE
44CD78:  MOVLE           R1, #1
44CD7A:  AND.W           R6, R1, R0
44CD7E:  MOVS            R0, #1; int
44CD80:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
44CD84:  CBZ             R0, loc_44CDEC
44CD86:  MOVS            R0, #1; int
44CD88:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
44CD8C:  LDR             R2, [R0,#0x14]
44CD8E:  MOV.W           R8, #0
44CD92:  ADD.W           R1, R2, #0x30 ; '0'
44CD96:  CMP             R2, #0
44CD98:  IT EQ
44CD9A:  ADDEQ           R1, R0, #4
44CD9C:  VLDR            S0, [R1,#8]
44CDA0:  VCMPE.F32       S0, S26
44CDA4:  VMRS            APSR_nzcv, FPSCR
44CDA8:  BLT             loc_44CDEC
44CDAA:  VLDR            S2, [R1,#4]
44CDAE:  VCMPE.F32       S2, S24
44CDB2:  VMRS            APSR_nzcv, FPSCR
44CDB6:  BGT             loc_44CDEC
44CDB8:  VLDR            S4, [R1]
44CDBC:  VCMPE.F32       S4, S18
44CDC0:  VMRS            APSR_nzcv, FPSCR
44CDC4:  BLT             loc_44CDEC
44CDC6:  VCMPE.F32       S4, S16
44CDCA:  VMRS            APSR_nzcv, FPSCR
44CDCE:  BGT             loc_44CDEC
44CDD0:  VCMPE.F32       S2, S22
44CDD4:  VMRS            APSR_nzcv, FPSCR
44CDD8:  BLT             loc_44CDEC
44CDDA:  VCMPE.F32       S0, S20
44CDDE:  MOV.W           R8, #0
44CDE2:  VMRS            APSR_nzcv, FPSCR
44CDE6:  IT LE
44CDE8:  MOVLE.W         R8, #1
44CDEC:  ORR.W           R0, R5, R6
44CDF0:  ORR.W           R0, R0, R8
44CDF4:  ADD             SP, SP, #0x70 ; 'p'
44CDF6:  VPOP            {D8-D14}
44CDFA:  POP.W           {R8-R10}
44CDFE:  POP             {R4-R7,PC}
