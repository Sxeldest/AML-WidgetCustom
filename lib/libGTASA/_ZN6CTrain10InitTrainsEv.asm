; =========================================================
; Game Engine Function: _ZN6CTrain10InitTrainsEv
; Address            : 0x57CAD0 - 0x57CE04
; =========================================================

57CAD0:  PUSH            {R4-R7,LR}
57CAD2:  ADD             R7, SP, #0xC
57CAD4:  PUSH.W          {R8-R11}
57CAD8:  SUB             SP, SP, #0x3C
57CADA:  LDR             R0, =(pTrackNodes_ptr - 0x57CAE2)
57CADC:  LDR             R1, =(_ZN6CTrain15GenTrain_StatusE_ptr - 0x57CAE6)
57CADE:  ADD             R0, PC; pTrackNodes_ptr
57CAE0:  LDR             R2, =(_ZN6CTrain20bDisableRandomTrainsE_ptr - 0x57CAEA)
57CAE2:  ADD             R1, PC; _ZN6CTrain15GenTrain_StatusE_ptr
57CAE4:  LDR             R0, [R0]; pTrackNodes
57CAE6:  ADD             R2, PC; _ZN6CTrain20bDisableRandomTrainsE_ptr
57CAE8:  LDR             R1, [R1]; CTrain::GenTrain_Status ...
57CAEA:  LDR             R2, [R2]; CTrain::bDisableRandomTrains ...
57CAEC:  LDR             R3, [R0]
57CAEE:  MOVS            R0, #0
57CAF0:  STR             R0, [R1]; CTrain::GenTrain_Status
57CAF2:  CMP             R3, #0
57CAF4:  STRB            R0, [R2]; CTrain::bDisableRandomTrains
57CAF6:  BNE             loc_57CB10
57CAF8:  LDR             R1, =(pTrackNodes_ptr - 0x57CB00)
57CAFA:  LDR             R2, =(NumTrackNodes_ptr - 0x57CB04)
57CAFC:  ADD             R1, PC; pTrackNodes_ptr
57CAFE:  LDR             R3, =(unk_A12EA4 - 0x57CB0A)
57CB00:  ADD             R2, PC; NumTrackNodes_ptr
57CB02:  STR             R0, [SP,#0x58+var_58]; float *
57CB04:  LDR             R1, [R1]; pTrackNodes ; char *
57CB06:  ADD             R3, PC; unk_A12EA4 ; int *
57CB08:  LDR             R2, [R2]; NumTrackNodes ; CTrainNode **
57CB0A:  ADR             R0, aDataPathsTrack; "data\\paths\\tracks.dat"
57CB0C:  BLX             j__ZN6CTrain25ReadAndInterpretTrackFileEPcPP10CTrainNodePiPfi; CTrain::ReadAndInterpretTrackFile(char *,CTrainNode **,int *,float *,int)
57CB10:  LDR             R0, =(pTrackNodes_ptr - 0x57CB16)
57CB12:  ADD             R0, PC; pTrackNodes_ptr
57CB14:  LDR             R0, [R0]; pTrackNodes
57CB16:  LDR             R0, [R0,#(dword_A12E80 - 0xA12E7C)]
57CB18:  CBNZ            R0, loc_57CB3A
57CB1A:  LDR             R0, =(pTrackNodes_ptr - 0x57CB24)
57CB1C:  MOVS            R3, #(stderr+1)
57CB1E:  LDR             R1, =(NumTrackNodes_ptr - 0x57CB28)
57CB20:  ADD             R0, PC; pTrackNodes_ptr
57CB22:  LDR             R2, =(unk_A12EA4 - 0x57CB2E)
57CB24:  ADD             R1, PC; NumTrackNodes_ptr
57CB26:  STR             R3, [SP,#0x58+var_58]; float *
57CB28:  LDR             R0, [R0]; pTrackNodes
57CB2A:  ADD             R2, PC; unk_A12EA4
57CB2C:  LDR             R6, [R1]; NumTrackNodes
57CB2E:  ADDS            R3, R2, #4; int *
57CB30:  ADDS            R1, R0, #4; char *
57CB32:  ADR             R0, aDataPathsTrack_0; "data\\paths\\tracks3.dat"
57CB34:  ADDS            R2, R6, #4; CTrainNode **
57CB36:  BLX             j__ZN6CTrain25ReadAndInterpretTrackFileEPcPP10CTrainNodePiPfi; CTrain::ReadAndInterpretTrackFile(char *,CTrainNode **,int *,float *,int)
57CB3A:  LDR             R0, =(pTrackNodes_ptr - 0x57CB40)
57CB3C:  ADD             R0, PC; pTrackNodes_ptr
57CB3E:  LDR             R0, [R0]; pTrackNodes
57CB40:  LDR             R0, [R0,#(dword_A12E84 - 0xA12E7C)]
57CB42:  CBNZ            R0, loc_57CB6A
57CB44:  LDR             R0, =(pTrackNodes_ptr - 0x57CB4E)
57CB46:  MOVS            R3, #(stderr+2)
57CB48:  LDR             R1, =(NumTrackNodes_ptr - 0x57CB52)
57CB4A:  ADD             R0, PC; pTrackNodes_ptr
57CB4C:  LDR             R2, =(unk_A12EA4 - 0x57CB58)
57CB4E:  ADD             R1, PC; NumTrackNodes_ptr
57CB50:  STR             R3, [SP,#0x58+var_58]; float *
57CB52:  LDR             R0, [R0]; pTrackNodes
57CB54:  ADD             R2, PC; unk_A12EA4
57CB56:  LDR             R6, [R1]; NumTrackNodes
57CB58:  ADD.W           R3, R2, #8; int *
57CB5C:  ADD.W           R1, R0, #8; char *
57CB60:  ADR             R0, aDataPathsTrack_1; "data\\paths\\tracks2.dat"
57CB62:  ADD.W           R2, R6, #8; CTrainNode **
57CB66:  BLX             j__ZN6CTrain25ReadAndInterpretTrackFileEPcPP10CTrainNodePiPfi; CTrain::ReadAndInterpretTrackFile(char *,CTrainNode **,int *,float *,int)
57CB6A:  LDR             R0, =(pTrackNodes_ptr - 0x57CB70)
57CB6C:  ADD             R0, PC; pTrackNodes_ptr
57CB6E:  LDR             R0, [R0]; pTrackNodes
57CB70:  LDR             R0, [R0,#(dword_A12E88 - 0xA12E7C)]
57CB72:  CBNZ            R0, loc_57CB9A
57CB74:  LDR             R0, =(pTrackNodes_ptr - 0x57CB7E)
57CB76:  MOVS            R3, #(stderr+3)
57CB78:  LDR             R1, =(NumTrackNodes_ptr - 0x57CB82)
57CB7A:  ADD             R0, PC; pTrackNodes_ptr
57CB7C:  LDR             R2, =(unk_A12EA4 - 0x57CB88)
57CB7E:  ADD             R1, PC; NumTrackNodes_ptr
57CB80:  STR             R3, [SP,#0x58+var_58]; float *
57CB82:  LDR             R0, [R0]; pTrackNodes
57CB84:  ADD             R2, PC; unk_A12EA4
57CB86:  LDR             R6, [R1]; NumTrackNodes
57CB88:  ADD.W           R3, R2, #0xC; int *
57CB8C:  ADD.W           R1, R0, #0xC; char *
57CB90:  ADR             R0, aDataPathsTrack_2; "data\\paths\\tracks4.dat"
57CB92:  ADD.W           R2, R6, #0xC; CTrainNode **
57CB96:  BLX             j__ZN6CTrain25ReadAndInterpretTrackFileEPcPP10CTrainNodePiPfi; CTrain::ReadAndInterpretTrackFile(char *,CTrainNode **,int *,float *,int)
57CB9A:  LDR             R1, =(NumTrackNodes_ptr - 0x57CBAA)
57CB9C:  VMOV.F32        S2, #-0.125
57CBA0:  LDR             R2, =(_ZN6CTrain13aStationCoorsE_ptr - 0x57CBB0)
57CBA2:  VMOV.F32        S4, #3.0
57CBA6:  ADD             R1, PC; NumTrackNodes_ptr
57CBA8:  VMOV.I32        D16, #0x3E000000
57CBAC:  ADD             R2, PC; _ZN6CTrain13aStationCoorsE_ptr
57CBAE:  VLDR            S0, =100000.0
57CBB2:  LDR             R0, [R1]; NumTrackNodes
57CBB4:  ADD             R3, SP, #0x58+var_20
57CBB6:  LDR             R1, =(pTrackNodes_ptr - 0x57CBC2)
57CBB8:  ADD             R5, SP, #0x58+var_24
57CBBA:  STR             R0, [SP,#0x58+var_30]
57CBBC:  ADD             R4, SP, #0x58+var_28
57CBBE:  ADD             R1, PC; pTrackNodes_ptr
57CBC0:  LDR             R0, [R2]; CTrain::aStationCoors ...
57CBC2:  STR             R0, [SP,#0x58+var_34]
57CBC4:  ADD.W           R12, SP, #0x58+var_2C
57CBC8:  LDR             R0, [R1]; pTrackNodes
57CBCA:  MOV.W           R10, #0
57CBCE:  LDR             R1, =(NumTrackNodes_ptr - 0x57CBD6)
57CBD0:  STR             R0, [SP,#0x58+var_44]
57CBD2:  ADD             R1, PC; NumTrackNodes_ptr
57CBD4:  LDR             R0, [R1]; NumTrackNodes
57CBD6:  LDR             R1, =(pTrackNodes_ptr - 0x57CBDE)
57CBD8:  STR             R0, [SP,#0x58+var_38]
57CBDA:  ADD             R1, PC; pTrackNodes_ptr
57CBDC:  LDR             R0, [R1]; pTrackNodes
57CBDE:  LDR             R1, =(NumTrackNodes_ptr - 0x57CBE6)
57CBE0:  STR             R0, [SP,#0x58+var_48]
57CBE2:  ADD             R1, PC; NumTrackNodes_ptr
57CBE4:  LDR             R0, [R1]; NumTrackNodes
57CBE6:  LDR             R1, =(pTrackNodes_ptr - 0x57CBEE)
57CBE8:  STR             R0, [SP,#0x58+var_3C]
57CBEA:  ADD             R1, PC; pTrackNodes_ptr
57CBEC:  LDR             R0, [R1]; pTrackNodes
57CBEE:  LDR             R1, =(NumTrackNodes_ptr - 0x57CBF6)
57CBF0:  STR             R0, [SP,#0x58+var_4C]
57CBF2:  ADD             R1, PC; NumTrackNodes_ptr
57CBF4:  LDR             R0, [R1]; NumTrackNodes
57CBF6:  LDR             R1, =(pTrackNodes_ptr - 0x57CBFE)
57CBF8:  STR             R0, [SP,#0x58+var_40]
57CBFA:  ADD             R1, PC; pTrackNodes_ptr
57CBFC:  LDR             R0, [R1]; pTrackNodes
57CBFE:  LDR             R1, =(pTrackNodes_ptr - 0x57CC06)
57CC00:  STR             R0, [SP,#0x58+var_50]
57CC02:  ADD             R1, PC; pTrackNodes_ptr
57CC04:  LDR.W           R8, [R1]; pTrackNodes
57CC08:  LDR             R1, =(StationDist_ptr - 0x57CC0E)
57CC0A:  ADD             R1, PC; StationDist_ptr
57CC0C:  LDR.W           R9, [R1]; StationDist
57CC10:  LDR             R0, [SP,#0x58+var_30]
57CC12:  ADD.W           R1, R10, R10,LSL#1
57CC16:  VMOV            D4, D0
57CC1A:  LDR.W           LR, [R0]
57CC1E:  LDR             R0, [SP,#0x58+var_34]
57CC20:  CMP.W           LR, #1
57CC24:  ADD.W           R1, R0, R1,LSL#2
57CC28:  VLDR            D17, [R1,#4]
57CC2C:  VLDR            S6, [R1]
57CC30:  BLT             loc_57CC96
57CC32:  LDR             R0, [SP,#0x58+var_44]
57CC34:  VMOV            D4, D0
57CC38:  MOVS            R6, #0
57CC3A:  LDR             R1, [R0]
57CC3C:  ADDS            R1, #2
57CC3E:  LDRSH.W         R2, [R1,#-2]
57CC42:  VMOV            S10, R2
57CC46:  VCVT.F32.S32    S10, S10
57CC4A:  LDR             R2, [R1]
57CC4C:  STR             R2, [SP,#0x58+var_20]
57CC4E:  ADDS            R1, #0xA
57CC50:  VLD1.32         {D18[0]}, [R3@32]
57CC54:  VMOVL.S16       Q9, D18
57CC58:  VMUL.F32        S10, S10, S2
57CC5C:  VCVT.F32.S32    D18, D18
57CC60:  VMUL.F32        D18, D18, D16
57CC64:  VADD.F32        S10, S6, S10
57CC68:  VSUB.F32        D18, D17, D18
57CC6C:  VMUL.F32        S10, S10, S10
57CC70:  VMUL.F32        D6, D18, D18
57CC74:  VADD.F32        S10, S10, S12
57CC78:  VADD.F32        S10, S10, S13
57CC7C:  VSQRT.F32       S10, S10
57CC80:  VCMPE.F32       S10, S8
57CC84:  VMRS            APSR_nzcv, FPSCR
57CC88:  VMIN.F32        D4, D5, D4
57CC8C:  IT LT
57CC8E:  MOVLT           R11, R6
57CC90:  ADDS            R6, #1
57CC92:  CMP             R6, LR
57CC94:  BLT             loc_57CC3E
57CC96:  LDR             R0, [SP,#0x58+var_38]
57CC98:  LDR             R1, [R0,#4]
57CC9A:  CMP             R1, #1
57CC9C:  BLT             loc_57CCFE
57CC9E:  LDR             R0, [SP,#0x58+var_48]
57CCA0:  LDR             R2, [R0,#4]
57CCA2:  ADDS            R6, R2, #2
57CCA4:  MOVS            R2, #0
57CCA6:  LDRSH.W         R0, [R6,#-2]
57CCAA:  VMOV            S10, R0
57CCAE:  VCVT.F32.S32    S10, S10
57CCB2:  LDR             R0, [R6]
57CCB4:  STR             R0, [SP,#0x58+var_24]
57CCB6:  ADDS            R6, #0xA
57CCB8:  VLD1.32         {D18[0]}, [R5@32]
57CCBC:  VMOVL.S16       Q9, D18
57CCC0:  VMUL.F32        S10, S10, S2
57CCC4:  VCVT.F32.S32    D18, D18
57CCC8:  VMUL.F32        D18, D18, D16
57CCCC:  VADD.F32        S10, S6, S10
57CCD0:  VSUB.F32        D18, D17, D18
57CCD4:  VMUL.F32        S10, S10, S10
57CCD8:  VMUL.F32        D6, D18, D18
57CCDC:  VADD.F32        S10, S10, S12
57CCE0:  VADD.F32        S10, S10, S13
57CCE4:  VSQRT.F32       S10, S10
57CCE8:  VCMPE.F32       S10, S8
57CCEC:  VMRS            APSR_nzcv, FPSCR
57CCF0:  VMIN.F32        D4, D5, D4
57CCF4:  IT LT
57CCF6:  MOVLT           R11, R2
57CCF8:  ADDS            R2, #1
57CCFA:  CMP             R2, R1
57CCFC:  BLT             loc_57CCA6
57CCFE:  LDR             R0, [SP,#0x58+var_3C]
57CD00:  LDR             R1, [R0,#8]
57CD02:  CMP             R1, #1
57CD04:  BLT             loc_57CD66
57CD06:  LDR             R0, [SP,#0x58+var_4C]
57CD08:  MOVS            R2, #0
57CD0A:  LDR             R0, [R0,#8]
57CD0C:  ADDS            R6, R0, #2
57CD0E:  LDRSH.W         R0, [R6,#-2]
57CD12:  VMOV            S10, R0
57CD16:  VCVT.F32.S32    S10, S10
57CD1A:  LDR             R0, [R6]
57CD1C:  STR             R0, [SP,#0x58+var_28]
57CD1E:  ADDS            R6, #0xA
57CD20:  VLD1.32         {D18[0]}, [R4@32]
57CD24:  VMOVL.S16       Q9, D18
57CD28:  VMUL.F32        S10, S10, S2
57CD2C:  VCVT.F32.S32    D18, D18
57CD30:  VMUL.F32        D18, D18, D16
57CD34:  VADD.F32        S10, S6, S10
57CD38:  VSUB.F32        D18, D17, D18
57CD3C:  VMUL.F32        S10, S10, S10
57CD40:  VMUL.F32        D6, D18, D18
57CD44:  VADD.F32        S10, S10, S12
57CD48:  VADD.F32        S10, S10, S13
57CD4C:  VSQRT.F32       S10, S10
57CD50:  VCMPE.F32       S10, S8
57CD54:  VMRS            APSR_nzcv, FPSCR
57CD58:  VMIN.F32        D4, D5, D4
57CD5C:  IT LT
57CD5E:  MOVLT           R11, R2
57CD60:  ADDS            R2, #1
57CD62:  CMP             R2, R1
57CD64:  BLT             loc_57CD0E
57CD66:  LDR             R0, [SP,#0x58+var_40]
57CD68:  LDR             R1, [R0,#0xC]
57CD6A:  CMP             R1, #1
57CD6C:  BLT             loc_57CDCE
57CD6E:  LDR             R0, [SP,#0x58+var_50]
57CD70:  MOVS            R6, #0
57CD72:  LDR             R0, [R0,#0xC]
57CD74:  ADDS            R2, R0, #2
57CD76:  LDRSH.W         R0, [R2,#-2]
57CD7A:  VMOV            S10, R0
57CD7E:  VCVT.F32.S32    S10, S10
57CD82:  LDR             R0, [R2]
57CD84:  STR             R0, [SP,#0x58+var_2C]
57CD86:  ADDS            R2, #0xA
57CD88:  VLD1.32         {D18[0]}, [R12@32]
57CD8C:  VMOVL.S16       Q9, D18
57CD90:  VMUL.F32        S10, S10, S2
57CD94:  VCVT.F32.S32    D18, D18
57CD98:  VMUL.F32        D18, D18, D16
57CD9C:  VADD.F32        S10, S6, S10
57CDA0:  VSUB.F32        D18, D17, D18
57CDA4:  VMUL.F32        S10, S10, S10
57CDA8:  VMUL.F32        D6, D18, D18
57CDAC:  VADD.F32        S10, S10, S12
57CDB0:  VADD.F32        S10, S10, S13
57CDB4:  VSQRT.F32       S10, S10
57CDB8:  VCMPE.F32       S10, S8
57CDBC:  VMRS            APSR_nzcv, FPSCR
57CDC0:  VMIN.F32        D4, D5, D4
57CDC4:  IT LT
57CDC6:  MOVLT           R11, R6
57CDC8:  ADDS            R6, #1
57CDCA:  CMP             R6, R1
57CDCC:  BLT             loc_57CD76
57CDCE:  LDR.W           R0, [R8]
57CDD2:  ADD.W           R1, R11, R11,LSL#2
57CDD6:  ADD.W           R0, R0, R1,LSL#1
57CDDA:  LDRH            R0, [R0,#6]
57CDDC:  VMOV            S6, R0
57CDE0:  ADD.W           R0, R9, R10,LSL#2
57CDE4:  ADD.W           R10, R10, #1
57CDE8:  VCVT.F32.U32    S6, S6
57CDEC:  CMP.W           R10, #6
57CDF0:  VDIV.F32        S6, S6, S4
57CDF4:  VSTR            S6, [R0]
57CDF8:  BNE.W           loc_57CC10
57CDFC:  ADD             SP, SP, #0x3C ; '<'
57CDFE:  POP.W           {R8-R11}
57CE02:  POP             {R4-R7,PC}
