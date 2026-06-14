; =========================================================
; Game Engine Function: _Z32RpAnimBlendClumpUpdateAnimationsP7RpClumpfb
; Address            : 0x38BF00 - 0x38C1B2
; =========================================================

38BF00:  PUSH            {R4-R7,LR}
38BF02:  ADD             R7, SP, #0xC
38BF04:  PUSH.W          {R8-R11}
38BF08:  SUB             SP, SP, #4
38BF0A:  VPUSH           {D8-D10}
38BF0E:  SUB             SP, SP, #0x40
38BF10:  MOV             R11, R0
38BF12:  LDR             R0, =(ClumpOffset_ptr - 0x38BF1C)
38BF14:  MOV             R6, R1
38BF16:  LDR             R1, =(dword_932098 - 0x38BF1E)
38BF18:  ADD             R0, PC; ClumpOffset_ptr
38BF1A:  ADD             R1, PC; dword_932098
38BF1C:  LDR             R0, [R0]; ClumpOffset
38BF1E:  LDR             R0, [R0]
38BF20:  LDR.W           R0, [R11,R0]
38BF24:  STR             R0, [R1]
38BF26:  LDR.W           R8, [R0]
38BF2A:  CMP.W           R8, #0
38BF2E:  BEQ.W           loc_38C1A4
38BF32:  VLDR            S20, =0.0
38BF36:  VMOV            S16, R6
38BF3A:  ADD.W           R10, SP, #0x78+var_6C
38BF3E:  MOVS            R5, #0
38BF40:  VMOV.F32        S18, S20
38BF44:  MOV.W           R9, #1
38BF48:  STRD.W          R2, R0, [SP,#0x78+var_74]
38BF4C:  STR             R5, [SP,#0x78+var_6C]
38BF4E:  MOV             R4, R8
38BF50:  MOV             R1, R6; float
38BF52:  LDR.W           R8, [R4],#-4
38BF56:  MOV             R0, R4; this
38BF58:  BLX             j__ZN21CAnimBlendAssociation11UpdateBlendEf; CAnimBlendAssociation::UpdateBlend(float)
38BF5C:  CMP             R0, #1
38BF5E:  BNE             loc_38BF8A
38BF60:  LDR             R0, [R4,#0x14]; this
38BF62:  LDR             R1, [R0,#4]; CAnimBlendHierarchy *
38BF64:  CBZ             R1, loc_38BF8A
38BF66:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
38BF6A:  CMP             R5, #0xA
38BF6C:  BGT             loc_38BF7E
38BF6E:  MOV             R0, R4; this
38BF70:  MOVS            R1, #0; int
38BF72:  BLX             j__ZN21CAnimBlendAssociation7GetNodeEi; CAnimBlendAssociation::GetNode(int)
38BF76:  ADD.W           R1, R10, R5,LSL#2
38BF7A:  ADDS            R5, #1
38BF7C:  STR             R0, [R1,#4]
38BF7E:  LDRB.W          R0, [R4,#0x2E]
38BF82:  LSLS            R0, R0, #0x1A
38BF84:  BMI             loc_38BF92
38BF86:  STR.W           R9, [SP,#0x78+var_6C]
38BF8A:  CMP.W           R8, #0
38BF8E:  BNE             loc_38BF4E
38BF90:  B               loc_38BFB6
38BF92:  LDR             R0, [R4,#0x14]
38BF94:  VLDR            S2, [R4,#0x24]
38BF98:  VLDR            S0, [R4,#0x18]
38BF9C:  VLDR            S4, [R0,#0x10]
38BFA0:  VADD.F32        S20, S20, S0
38BFA4:  VDIV.F32        S2, S4, S2
38BFA8:  VMUL.F32        S2, S2, S0
38BFAC:  VADD.F32        S18, S18, S2
38BFB0:  CMP.W           R8, #0
38BFB4:  BNE             loc_38BF4E
38BFB6:  LDR             R6, [SP,#0x78+var_70]
38BFB8:  LDR             R0, [R6]
38BFBA:  CBZ             R0, loc_38C010
38BFBC:  VDIV.F32        S0, S20, S18
38BFC0:  LDRH            R2, [R0,#0x2A]
38BFC2:  VCMP.F32        S18, #0.0
38BFC6:  SUBS            R1, R0, #4
38BFC8:  VMRS            APSR_nzcv, FPSCR
38BFCC:  AND.W           R3, R2, #1
38BFD0:  BNE             loc_38BFE2
38BFD2:  CBZ             R3, loc_38C00A
38BFD4:  LSLS            R2, R2, #0x1A
38BFD6:  BMI             loc_38BFEE
38BFD8:  ADD.W           R2, R1, #0x24 ; '$'
38BFDC:  VLDR            S2, [R2]
38BFE0:  B               loc_38C002
38BFE2:  CBZ             R3, loc_38C00A
38BFE4:  LSLS            R2, R2, #0x1A
38BFE6:  BMI             loc_38BFF8
38BFE8:  VLDR            S2, [R1,#0x24]
38BFEC:  B               loc_38C002
38BFEE:  LDR             R2, [R1,#0x14]
38BFF0:  ADDS            R2, #0x10
38BFF2:  VLDR            S2, [R2]
38BFF6:  B               loc_38C002
38BFF8:  LDR             R2, [R1,#0x14]
38BFFA:  VLDR            S2, [R2,#0x10]
38BFFE:  VMUL.F32        S2, S0, S2
38C002:  VMUL.F32        S2, S2, S16
38C006:  VSTR            S2, [R1,#0x28]
38C00A:  LDR             R0, [R0]
38C00C:  CMP             R0, #0
38C00E:  BNE             loc_38BFC0
38C010:  ADD.W           R0, R10, R5,LSL#2
38C014:  MOVS            R1, #0
38C016:  STR             R1, [R0,#4]
38C018:  LDR             R0, [R6,#0x10]
38C01A:  LDRB            R1, [R0]
38C01C:  ORR.W           R1, R1, #0x80
38C020:  STRB            R1, [R0]
38C022:  LDR             R4, [R6,#0x10]
38C024:  LDRB            R0, [R4]
38C026:  TST.W           R0, #0x40
38C02A:  BNE             loc_38C0AC
38C02C:  LDR             R1, [SP,#0x78+var_74]
38C02E:  CMP             R1, #1
38C030:  BNE             loc_38C0D0
38C032:  STR.W           R11, [SP,#0x78+var_74]
38C036:  ANDS.W          R0, R0, #0x20 ; ' '
38C03A:  ITT NE
38C03C:  LDRNE           R0, [SP,#0x78+var_68]
38C03E:  CMPNE           R0, #0
38C040:  BEQ             loc_38C092
38C042:  LDR             R1, [SP,#0x78+var_70]
38C044:  ADD.W           R6, R10, #4
38C048:  LDR.W           R9, =(dword_932098 - 0x38C054)
38C04C:  LDR.W           R11, [R1,#8]
38C050:  ADD             R9, PC; dword_932098
38C052:  CMP.W           R11, #1
38C056:  BLT             loc_38C08A
38C058:  LDR.W           R10, [R0,#0x14]
38C05C:  MOVS            R5, #0
38C05E:  MOV             R8, R11
38C060:  LDRB            R0, [R4,R5]
38C062:  LSLS            R0, R0, #0x1C
38C064:  BPL             loc_38C06E
38C066:  LDR.W           R0, [R9]
38C06A:  LDR             R0, [R0,#0xC]
38C06C:  CBNZ            R0, loc_38C080
38C06E:  LDR             R0, [R6]
38C070:  ADD             R0, R5; this
38C072:  LDR             R1, [R0,#0x10]
38C074:  CMP             R1, #0
38C076:  ITT NE
38C078:  LDRNE.W         R1, [R10,#0x20]; float
38C07C:  BLXNE           j__ZN14CAnimBlendNode12FindKeyFrameEf; CAnimBlendNode::FindKeyFrame(float)
38C080:  SUBS.W          R8, R8, #1
38C084:  ADD.W           R5, R5, #0x18
38C088:  BNE             loc_38C060
38C08A:  LDR.W           R0, [R6,#4]!
38C08E:  CMP             R0, #0
38C090:  BNE             loc_38C052
38C092:  LDR.W           R11, [SP,#0x78+var_74]
38C096:  MOV             R0, R11
38C098:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
38C09C:  CBZ             R0, loc_38C0E8
38C09E:  LDR             R0, [R0,#0x18]
38C0A0:  BLX             j_RpSkinGeometryGetSkin
38C0A4:  CBZ             R0, loc_38C0E8
38C0A6:  LDR             R1, =(sub_38CBE0+1 - 0x38C0AC)
38C0A8:  ADD             R1, PC; sub_38CBE0
38C0AA:  B               loc_38C0EC
38C0AC:  MOV             R0, R11
38C0AE:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
38C0B2:  CBZ             R0, loc_38C0C2
38C0B4:  LDR             R0, [R0,#0x18]
38C0B6:  BLX             j_RpSkinGeometryGetSkin
38C0BA:  CBZ             R0, loc_38C0C2
38C0BC:  LDR             R1, =(sub_38C1DC+1 - 0x38C0C2)
38C0BE:  ADD             R1, PC; sub_38C1DC
38C0C0:  B               loc_38C0C6
38C0C2:  LDR             R1, =(sub_38C6A8+1 - 0x38C0C8)
38C0C4:  ADD             R1, PC; sub_38C6A8
38C0C6:  ADD             R2, SP, #0x78+var_6C
38C0C8:  MOV             R0, R6
38C0CA:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
38C0CE:  B               loc_38C102
38C0D0:  LDR             R1, =(sub_38D8EC+1 - 0x38C0DA)
38C0D2:  ADD             R2, SP, #0x78+var_6C
38C0D4:  MOV             R0, R6
38C0D6:  ADD             R1, PC; sub_38D8EC
38C0D8:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
38C0DC:  LDR             R0, [R6,#0x10]
38C0DE:  LDRSB.W         R1, [R0]
38C0E2:  ORR.W           R1, R1, #0x20 ; ' '
38C0E6:  B               loc_38C100
38C0E8:  LDR             R1, =(sub_38D0CC+1 - 0x38C0EE)
38C0EA:  ADD             R1, PC; sub_38D0CC
38C0EC:  LDR             R6, [SP,#0x78+var_70]
38C0EE:  ADD             R2, SP, #0x78+var_6C
38C0F0:  MOV             R0, R6
38C0F2:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
38C0F6:  LDR             R0, [R6,#0x10]
38C0F8:  LDRSB.W         R1, [R0]
38C0FC:  BIC.W           R1, R1, #0x20 ; ' '
38C100:  STRB            R1, [R0]
38C102:  LDR             R4, [R6]
38C104:  CMP             R4, #0
38C106:  BEQ             loc_38C19C
38C108:  LDR             R0, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x38C11A)
38C10A:  MOVW            R9, #0
38C10E:  MOV.W           R8, #0
38C112:  MOVT            R9, #0xC080
38C116:  ADD             R0, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
38C118:  LDR             R5, [R0]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *)
38C11A:  LDRH            R0, [R4,#0x2A]
38C11C:  TST.W           R0, #1
38C120:  BEQ             loc_38C196
38C122:  SUBS            R6, R4, #4
38C124:  LDR             R1, [R6,#0x14]
38C126:  VLDR            S0, [R6,#0x20]
38C12A:  VLDR            S2, [R1,#0x10]
38C12E:  VCMPE.F32       S0, S2
38C132:  VMRS            APSR_nzcv, FPSCR
38C136:  BGE             loc_38C186
38C138:  VLDR            S2, [R6,#0x28]
38C13C:  VADD.F32        S0, S0, S2
38C140:  VSTR            S0, [R6,#0x20]
38C144:  VLDR            S2, [R1,#0x10]
38C148:  VCMPE.F32       S0, S2
38C14C:  VMRS            APSR_nzcv, FPSCR
38C150:  BLT             loc_38C196
38C152:  LSLS            R1, R0, #0x1E
38C154:  BMI             loc_38C18E
38C156:  LSLS            R1, R0, #0x1C
38C158:  VSTR            S2, [R6,#0x20]
38C15C:  ITTT MI
38C15E:  STRMI.W         R9, [R6,#0x1C]
38C162:  ORRMI.W         R0, R0, #4
38C166:  STRHMI          R0, [R6,#0x2E]
38C168:  LDR             R0, [R6,#0x30]
38C16A:  CMP             R0, #1
38C16C:  BNE             loc_38C196
38C16E:  LDRD.W          R2, R1, [R6,#0x34]
38C172:  MOV             R0, R6
38C174:  STR.W           R8, [R6,#0x30]
38C178:  BLX             R2
38C17A:  MOV             R0, R6; this
38C17C:  MOV             R1, R5; void (*)(CAnimBlendAssociation *, void *)
38C17E:  MOVS            R2, #0; void *
38C180:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
38C184:  B               loc_38C196
38C186:  BIC.W           R0, R0, #1
38C18A:  STRH            R0, [R6,#0x2E]
38C18C:  B               loc_38C196
38C18E:  VSUB.F32        S0, S0, S2
38C192:  VSTR            S0, [R6,#0x20]
38C196:  LDR             R4, [R4]
38C198:  CMP             R4, #0
38C19A:  BNE             loc_38C11A
38C19C:  LDR.W           R0, [R11,#4]
38C1A0:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
38C1A4:  ADD             SP, SP, #0x40 ; '@'
38C1A6:  VPOP            {D8-D10}
38C1AA:  ADD             SP, SP, #4
38C1AC:  POP.W           {R8-R11}
38C1B0:  POP             {R4-R7,PC}
