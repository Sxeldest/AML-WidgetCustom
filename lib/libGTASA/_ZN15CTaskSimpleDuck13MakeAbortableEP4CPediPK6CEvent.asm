; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x542EC8 - 0x543096
; =========================================================

542EC8:  PUSH            {R4-R7,LR}
542ECA:  ADD             R7, SP, #0xC
542ECC:  PUSH.W          {R8}
542ED0:  VPUSH           {D8}
542ED4:  MOV             R6, R2
542ED6:  MOV             R5, R3
542ED8:  MOV             R8, R1
542EDA:  MOV             R4, R0
542EDC:  CMP             R6, #2
542EDE:  BNE             loc_542F08
542EE0:  LDR             R0, [R4,#0x10]
542EE2:  CMP             R0, #0
542EE4:  BEQ.W           loc_543058
542EE8:  LDRB.W          R1, [R0,#0x2E]
542EEC:  LSLS            R1, R1, #0x1B
542EEE:  BMI.W           loc_54303E
542EF2:  LDR.W           R1, [R8,#0x4E0]; int
542EF6:  MOVS            R3, #0
542EF8:  LDR.W           R0, [R8,#0x18]; int
542EFC:  MOVT            R3, #0x447A
542F00:  MOVS            R2, #3; unsigned int
542F02:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
542F06:  B               loc_543046
542F08:  CMP             R6, #1
542F0A:  BNE             loc_542F3A
542F0C:  CBZ             R5, loc_542F3A
542F0E:  LDRSH.W         R0, [R4,#0xE]
542F12:  CMP             R0, #0
542F14:  BLT             loc_542F3A
542F16:  LDR             R0, [R5]
542F18:  LDR             R1, [R0,#8]
542F1A:  MOV             R0, R5
542F1C:  BLX             R1
542F1E:  CMP             R0, #0x31 ; '1'
542F20:  BNE             loc_542F3A
542F22:  LDRH            R0, [R5,#0xA]
542F24:  MOVW            R1, #0x137
542F28:  CMP             R0, R1
542F2A:  BNE             loc_542F3A
542F2C:  LDR             R0, [R5]
542F2E:  LDR             R1, [R0,#0x2C]
542F30:  MOV             R0, R5
542F32:  BLX             R1
542F34:  CMP             R0, #0
542F36:  BNE.W           loc_543076
542F3A:  LDR             R0, [R4,#0x14]
542F3C:  CBZ             R0, loc_542F4C
542F3E:  LDRSH.W         R0, [R0,#0x2C]
542F42:  ORR.W           R0, R0, #2
542F46:  CMP             R0, #0x3B ; ';'
542F48:  BEQ.W           loc_54308A
542F4C:  VMOV.F32        S0, #-8.0
542F50:  CMP             R6, #1
542F52:  VMOV.F32        S16, #-4.0
542F56:  IT EQ
542F58:  VMOVEQ.F32      S16, S0
542F5C:  LDR             R0, [R4,#0x10]
542F5E:  CBZ             R0, loc_542FBA
542F60:  VLDR            S0, [R0,#0x18]
542F64:  VCMPE.F32       S0, #0.0
542F68:  VMRS            APSR_nzcv, FPSCR
542F6C:  BLE             loc_542FA4
542F6E:  VLDR            S0, [R0,#0x1C]
542F72:  VCMPE.F32       S0, #0.0
542F76:  VMRS            APSR_nzcv, FPSCR
542F7A:  BLT             loc_542FA4
542F7C:  VMOV            R2, S16
542F80:  LDRB.W          R1, [R0,#0x2E]
542F84:  LSLS            R1, R1, #0x1B
542F86:  IT MI
542F88:  VSTRMI          S16, [R0,#0x1C]
542F8C:  LDR.W           R1, [R8,#0x4E0]; int
542F90:  LDR.W           R0, [R8,#0x18]; int
542F94:  EOR.W           R3, R2, #0x80000000
542F98:  MOVS            R2, #3; unsigned int
542F9A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
542F9E:  MOVS            R0, #1
542FA0:  STR.W           R0, [R8,#0x53C]
542FA4:  CMP             R6, #1
542FA6:  BNE             loc_542FBA
542FA8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x542FB4)
542FAA:  MOVS            R2, #0; void *
542FAC:  LDR             R0, [R4,#0x10]; this
542FAE:  MOVS            R5, #0
542FB0:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
542FB2:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
542FB4:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
542FB8:  STR             R5, [R4,#0x10]
542FBA:  LDR             R0, [R4,#0x14]
542FBC:  CBZ             R0, loc_54300E
542FBE:  VLDR            S0, [R0,#0x18]
542FC2:  VCMPE.F32       S0, #0.0
542FC6:  VMRS            APSR_nzcv, FPSCR
542FCA:  BLE             loc_542FF8
542FCC:  VLDR            S0, [R0,#0x1C]
542FD0:  VCMPE.F32       S0, #0.0
542FD4:  VMRS            APSR_nzcv, FPSCR
542FD8:  BLT             loc_542FF8
542FDA:  CMP             R6, #1
542FDC:  BEQ             loc_542FEA
542FDE:  LDRSH.W         R1, [R0,#0x2C]
542FE2:  ORR.W           R1, R1, #2
542FE6:  CMP             R1, #0x3A ; ':'
542FE8:  BNE             loc_54300E
542FEA:  VSTR            S16, [R0,#0x1C]
542FEE:  LDR             R0, [R4,#0x14]
542FF0:  LDRH            R1, [R0,#0x2E]
542FF2:  BIC.W           R1, R1, #1
542FF6:  STRH            R1, [R0,#0x2E]
542FF8:  CMP             R6, #1
542FFA:  BNE             loc_54300E
542FFC:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543008)
542FFE:  MOVS            R2, #0; void *
543000:  LDR             R0, [R4,#0x14]; this
543002:  MOVS            R5, #0
543004:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
543006:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543008:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
54300C:  STR             R5, [R4,#0x14]
54300E:  LDR.W           R0, [R8,#0x440]; this
543012:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
543016:  CBZ             R0, loc_543026
543018:  LDR.W           R0, [R8,#0x440]; this
54301C:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
543020:  MOV             R1, R8; CPed *
543022:  BLX             j__ZN17CTaskSimpleUseGun9ClearAnimEP4CPed; CTaskSimpleUseGun::ClearAnim(CPed *)
543026:  MOVS            R0, #1
543028:  CMP             R6, #1
54302A:  BNE             loc_543088
54302C:  STRB            R0, [R4,#0x18]
54302E:  LDR.W           R1, [R8,#0x484]
543032:  BIC.W           R1, R1, #0x4000000
543036:  STR.W           R1, [R8,#0x484]
54303A:  STRB            R0, [R4,#0x1A]
54303C:  B               loc_54308C
54303E:  MOVS            R1, #0xC47A0000
543044:  STR             R1, [R0,#0x1C]
543046:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543052)
543048:  MOVS            R2, #0; void *
54304A:  LDR             R0, [R4,#0x10]; this
54304C:  MOVS            R5, #0
54304E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
543050:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543052:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543056:  STR             R5, [R4,#0x10]
543058:  LDR             R0, [R4,#0x14]
54305A:  CBZ             R0, loc_543076
54305C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x54306A)
54305E:  MOVS            R2, #0xC47A0000
543064:  MOVS            R5, #0
543066:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
543068:  STR             R2, [R0,#0x1C]
54306A:  LDR             R0, [R4,#0x14]; this
54306C:  MOVS            R2, #0; void *
54306E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543070:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543074:  STR             R5, [R4,#0x14]
543076:  LDR.W           R0, [R8,#0x484]
54307A:  BIC.W           R0, R0, #0x4000000
54307E:  STR.W           R0, [R8,#0x484]
543082:  MOVS            R0, #1
543084:  STRB            R0, [R4,#0x1A]
543086:  B               loc_54308C
543088:  STRB            R0, [R4,#0x19]
54308A:  MOVS            R0, #0
54308C:  VPOP            {D8}
543090:  POP.W           {R8}
543094:  POP             {R4-R7,PC}
