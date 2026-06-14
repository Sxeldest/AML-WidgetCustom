; =========================================================
; Game Engine Function: _ZN11CPopulation24GeneratePedsAtAttractorsE7CVectorffffii
; Address            : 0x4CDB90 - 0x4CDE40
; =========================================================

4CDB90:  PUSH            {R4-R7,LR}
4CDB92:  ADD             R7, SP, #0xC
4CDB94:  PUSH.W          {R8-R11}
4CDB98:  SUB             SP, SP, #4
4CDB9A:  VPUSH           {D8-D14}
4CDB9E:  SUB.W           SP, SP, #0x860
4CDBA2:  SUB             SP, SP, #8
4CDBA4:  LDR             R4, [R7,#arg_10]
4CDBA6:  MOV             R5, R3
4CDBA8:  SUB.W           R3, R7, #-var_68
4CDBAC:  MOV.W           R11, #0
4CDBB0:  CMP             R4, #0
4CDBB2:  STM             R3!, {R0-R2}
4CDBB4:  BEQ.W           loc_4CDE2C
4CDBB8:  VLDR            S16, [R7,#arg_0]
4CDBBC:  MOVW            R0, #0xFFFF
4CDBC0:  ADD.W           R9, SP, #0x8C0+var_86C
4CDBC4:  STRH.W          R0, [R7,#var_6A]
4CDBC8:  VMOV            R1, S16; CVector *
4CDBCC:  MOV.W           R0, #(elf_hash_bucket+0x104)
4CDBD0:  STRD.W          R0, R9, [SP,#0x8C0+var_8C0]; __int16 *
4CDBD4:  MOVS            R2, #(stderr+1)
4CDBD6:  SUB.W           R0, R7, #-var_68; this
4CDBDA:  SUB.W           R3, R7, #-var_6A; bool
4CDBDE:  STRD.W          R2, R11, [SP,#0x8C0+var_8B8]; bool
4CDBE2:  STRD.W          R11, R2, [SP,#0x8C0+var_8B0]; char *
4CDBE6:  MOVS            R2, #0; float
4CDBE8:  STR.W           R11, [SP,#0x8C0+var_8A8]; bool
4CDBEC:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
4CDBF0:  CMP             R4, #1
4CDBF2:  BLT.W           loc_4CDE2C
4CDBF6:  ADD             R1, SP, #0x8C0+var_878
4CDBF8:  SUB.W           R0, R7, #-var_68
4CDBFC:  ORR.W           R1, R1, #4
4CDC00:  STR             R1, [SP,#0x8C0+var_898]
4CDC02:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x4CDC10)
4CDC04:  ADDS            R0, #4
4CDC06:  STR             R0, [SP,#0x8C0+var_894]
4CDC08:  VMOV            S22, R5
4CDC0C:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
4CDC0E:  LDR             R2, [R7,#arg_C]
4CDC10:  VLDR            S18, [R7,#arg_8]
4CDC14:  MOV.W           R11, #0
4CDC18:  LDR.W           R10, [R1]; CGame::currArea ...
4CDC1C:  MOVS            R3, #0
4CDC1E:  LDR             R1, =(TheCamera_ptr - 0x4CDC28)
4CDC20:  VLDR            S20, [R7,#arg_4]
4CDC24:  ADD             R1, PC; TheCamera_ptr
4CDC26:  LDRH.W          R0, [R7,#var_6A]
4CDC2A:  VLDR            S24, =0.000015259
4CDC2E:  LDR             R1, [R1]; TheCamera
4CDC30:  STR             R1, [SP,#0x8C0+var_89C]
4CDC32:  LDR             R1, =(_ZN11CPopulation16bInPoliceStationE_ptr - 0x4CDC3C)
4CDC34:  VLDR            S26, =100.0
4CDC38:  ADD             R1, PC; _ZN11CPopulation16bInPoliceStationE_ptr
4CDC3A:  LDR             R1, [R1]; CPopulation::bInPoliceStation ...
4CDC3C:  STR             R1, [SP,#0x8C0+var_8A4]
4CDC3E:  LDR             R1, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4CDC44)
4CDC40:  ADD             R1, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4CDC42:  LDR             R1, [R1]; CClock::ms_nGameClockHours ...
4CDC44:  STR             R1, [SP,#0x8C0+var_88C]
4CDC46:  ADDS            R3, #1
4CDC48:  SXTH            R1, R0
4CDC4A:  CMP             R1, #1
4CDC4C:  BLT.W           loc_4CDE22
4CDC50:  MOV.W           R8, #0
4CDC54:  STR             R3, [SP,#0x8C0+var_8A0]
4CDC56:  STR             R2, [SP,#0x8C0+var_890]
4CDC58:  CMP             R4, #0
4CDC5A:  BEQ.W           loc_4CDE2C
4CDC5E:  LDR.W           R0, [R9,R8,LSL#2]; this
4CDC62:  LDR             R1, [R0,#0x18]
4CDC64:  CMP             R1, #0
4CDC66:  BEQ.W           loc_4CDE0E
4CDC6A:  LDRB.W          R1, [R0,#0x33]
4CDC6E:  LDR.W           R2, [R10]; CGame::currArea
4CDC72:  CMP             R2, R1
4CDC74:  BNE.W           loc_4CDE0E
4CDC78:  MOVS            R1, #3; int
4CDC7A:  MOVS            R2, #1; unsigned __int8
4CDC7C:  BLX             j__ZN7CEntity17GetRandom2dEffectEih; CEntity::GetRandom2dEffect(int,uchar)
4CDC80:  MOV             R5, R0
4CDC82:  CMP             R5, #0
4CDC84:  BEQ.W           loc_4CDE0E
4CDC88:  LDRB.W          R0, [R5,#0x34]
4CDC8C:  CMP             R0, #8
4CDC8E:  BHI             loc_4CDCAE
4CDC90:  MOVS            R1, #1
4CDC92:  LSL.W           R0, R1, R0
4CDC96:  MOVW            R1, #0x107
4CDC9A:  TST             R0, R1
4CDC9C:  ITTTT NE
4CDC9E:  LDRNE           R0, [SP,#0x8C0+var_88C]
4CDCA0:  LDRBNE          R0, [R0]
4CDCA2:  SUBNE           R0, #9
4CDCA4:  UXTBNE          R0, R0
4CDCA6:  IT NE
4CDCA8:  CMPNE           R0, #0xA
4CDCAA:  BHI.W           loc_4CDE0E
4CDCAE:  LDRB.W          R0, [R5,#0x37]
4CDCB2:  LSLS            R0, R0, #0x1F
4CDCB4:  BNE.W           loc_4CDDCA
4CDCB8:  LDR.W           R6, [R9,R8,LSL#2]
4CDCBC:  VLDR            D16, [R5]
4CDCC0:  LDR             R0, [R5,#8]
4CDCC2:  STR             R0, [SP,#0x8C0+var_870]
4CDCC4:  VSTR            D16, [SP,#0x8C0+var_878]
4CDCC8:  LDR             R1, [R6,#0x14]
4CDCCA:  CBNZ            R1, loc_4CDCDC
4CDCCC:  MOV             R0, R6; this
4CDCCE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4CDCD2:  LDR             R1, [R6,#0x14]; CMatrix *
4CDCD4:  ADDS            R0, R6, #4; this
4CDCD6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4CDCDA:  LDR             R1, [R6,#0x14]
4CDCDC:  ADD             R6, SP, #0x8C0+var_878
4CDCDE:  ADD             R0, SP, #0x8C0+var_888
4CDCE0:  MOV             R2, R6
4CDCE2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4CDCE6:  VLDR            D16, [SP,#0x8C0+var_888]
4CDCEA:  MOV             R1, R6; CVector *
4CDCEC:  LDR             R0, [SP,#0x8C0+var_880]
4CDCEE:  MOV.W           R2, #0x40000000; float
4CDCF2:  STR             R0, [SP,#0x8C0+var_870]
4CDCF4:  VSTR            D16, [SP,#0x8C0+var_878]
4CDCF8:  LDR             R0, [SP,#0x8C0+var_898]
4CDCFA:  VLDR            S0, [SP,#0x8C0+var_878]
4CDCFE:  VLDR            S2, [R7,#var_68]
4CDD02:  VLDR            D16, [R0]
4CDD06:  VSUB.F32        S0, S2, S0
4CDD0A:  LDR             R0, [SP,#0x8C0+var_894]
4CDD0C:  VLDR            D17, [R0]
4CDD10:  VSUB.F32        D16, D17, D16
4CDD14:  LDR             R0, [SP,#0x8C0+var_89C]; this
4CDD16:  VMUL.F32        S0, S0, S0
4CDD1A:  VMUL.F32        D1, D16, D16
4CDD1E:  VADD.F32        S0, S0, S2
4CDD22:  VADD.F32        S0, S0, S3
4CDD26:  VSQRT.F32       S28, S0
4CDD2A:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
4CDD2E:  CMP             R0, #0
4CDD30:  VMOV.F32        S2, S20
4CDD34:  IT NE
4CDD36:  VMOVNE.F32      S2, S22
4CDD3A:  VMOV.F32        S0, S18
4CDD3E:  VCMPE.F32       S28, S2
4CDD42:  IT NE
4CDD44:  VMOVNE.F32      S0, S16
4CDD48:  VMRS            APSR_nzcv, FPSCR
4CDD4C:  BLE             loc_4CDE0E
4CDD4E:  VCMPE.F32       S28, S0
4CDD52:  VMRS            APSR_nzcv, FPSCR
4CDD56:  BGE             loc_4CDE0E
4CDD58:  LDR             R0, [SP,#0x8C0+var_8A4]
4CDD5A:  LDRB            R0, [R0]
4CDD5C:  CMP             R0, #0
4CDD5E:  BEQ             loc_4CDDE6
4CDD60:  BLX             rand
4CDD64:  UXTH            R0, R0
4CDD66:  VMOV            S0, R0
4CDD6A:  VCVT.F32.S32    S0, S0
4CDD6E:  VMUL.F32        S0, S0, S24
4CDD72:  VMUL.F32        S0, S0, S26
4CDD76:  VCVT.S32.F32    S0, S0
4CDD7A:  VMOV            R0, S0; this
4CDD7E:  CMP             R0, #0x46 ; 'F'
4CDD80:  BGT             loc_4CDDE6
4CDD82:  BLX             j__ZN10CStreaming18GetDefaultCopModelEv; CStreaming::GetDefaultCopModel(void)
4CDD86:  ADD.W           R1, R5, #0x38 ; '8'; char *
4CDD8A:  BLX             j__ZN11CPopulation32PedMICanBeCreatedAtThisAttractorEiPc; CPopulation::PedMICanBeCreatedAtThisAttractor(int,char *)
4CDD8E:  CBZ             R0, loc_4CDDE6
4CDD90:  MOVS            R0, #(stderr+1); this
4CDD92:  STR             R0, [SP,#0x8C0+var_890]
4CDD94:  BLX             j__ZN10CStreaming18GetDefaultCopModelEv; CStreaming::GetDefaultCopModel(void)
4CDD98:  CMP             R0, #1
4CDD9A:  BLT             loc_4CDE0E
4CDD9C:  CMP             R0, #7
4CDD9E:  BEQ             loc_4CDE0E
4CDDA0:  LDRD.W          R2, R3, [SP,#0x8C0+var_878]
4CDDA4:  LDR.W           R6, [R9,R8,LSL#2]
4CDDA8:  LDR             R1, [SP,#0x8C0+var_870]
4CDDAA:  STRD.W          R1, R6, [SP,#0x8C0+var_8C0]
4CDDAE:  MOV             R1, R5
4CDDB0:  LDR             R6, [SP,#0x8C0+var_890]
4CDDB2:  STR             R6, [SP,#0x8C0+var_8B8]
4CDDB4:  BLX             j__ZN11CPopulation17AddPedAtAttractorEiP9C2dEffect7CVectorP7CEntityi; CPopulation::AddPedAtAttractor(int,C2dEffect *,CVector,CEntity *,int)
4CDDB8:  CBZ             R0, loc_4CDE0E
4CDDBA:  ADD.W           R11, R11, #1
4CDDBE:  ADDS            R0, R6, #1
4CDDC0:  BEQ             loc_4CDE2C
4CDDC2:  SUBS            R4, #1
4CDDC4:  MOVS            R0, #0
4CDDC6:  STR             R0, [SP,#0x8C0+var_8A0]
4CDDC8:  B               loc_4CDE0E
4CDDCA:  LDR.W           R6, [R9,R8,LSL#2]
4CDDCE:  LDRB.W          R0, [R6,#0x3A]
4CDDD2:  AND.W           R0, R0, #7
4CDDD6:  CMP             R0, #4
4CDDD8:  BNE             loc_4CDE0E
4CDDDA:  LDRB.W          R0, [R6,#0x147]
4CDDDE:  LSLS            R0, R0, #0x1F
4CDDE0:  BNE.W           loc_4CDCBC
4CDDE4:  B               loc_4CDE0E
4CDDE6:  MOV.W           R1, #0xFFFFFFFF
4CDDEA:  ADD.W           R0, R5, #0x38 ; '8'
4CDDEE:  STR             R1, [SP,#0x8C0+var_8C0]; int
4CDDF0:  MOVS            R1, #1
4CDDF2:  STRD.W          R1, R1, [SP,#0x8C0+var_8BC]; int
4CDDF6:  MOV.W           R2, #0xFFFFFFFF; bool
4CDDFA:  STRD.W          R1, R0, [SP,#0x8C0+var_8B4]; bool
4CDDFE:  MOVS            R0, #0; this
4CDE00:  MOVS            R1, #0; bool
4CDE02:  MOV.W           R3, #0xFFFFFFFF; int
4CDE06:  BLX             j__ZN11CPopulation24ChooseCivilianOccupationEbbiiibbbPc; CPopulation::ChooseCivilianOccupation(bool,bool,int,int,int,bool,bool,bool,char *)
4CDE0A:  CMP             R0, #1
4CDE0C:  BGE             loc_4CDD9C
4CDE0E:  LDRSH.W         R0, [R7,#var_6A]
4CDE12:  ADD.W           R8, R8, #1
4CDE16:  CMP             R8, R0
4CDE18:  BLT.W           loc_4CDC58
4CDE1C:  UXTH            R0, R0
4CDE1E:  LDR             R2, [SP,#0x8C0+var_890]
4CDE20:  LDR             R3, [SP,#0x8C0+var_8A0]
4CDE22:  CMP             R3, #0xB
4CDE24:  BGT             loc_4CDE2C
4CDE26:  CMP             R4, #1
4CDE28:  BGE.W           loc_4CDC46
4CDE2C:  MOV             R0, R11
4CDE2E:  ADD.W           SP, SP, #0x860
4CDE32:  ADD             SP, SP, #8
4CDE34:  VPOP            {D8-D14}
4CDE38:  ADD             SP, SP, #4
4CDE3A:  POP.W           {R8-R11}
4CDE3E:  POP             {R4-R7,PC}
