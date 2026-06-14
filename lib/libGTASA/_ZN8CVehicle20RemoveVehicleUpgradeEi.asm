; =========================================================
; Game Engine Function: _ZN8CVehicle20RemoveVehicleUpgradeEi
; Address            : 0x58CBBC - 0x58CEC6
; =========================================================

58CBBC:  PUSH            {R4-R7,LR}
58CBBE:  ADD             R7, SP, #0xC
58CBC0:  PUSH.W          {R8-R11}
58CBC4:  SUB             SP, SP, #0x1C
58CBC6:  MOV             R4, R0
58CBC8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CBD0)
58CBCA:  MOV             R5, R1
58CBCC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CBCE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CBD0:  LDR.W           R6, [R0,R5,LSL#2]
58CBD4:  LDRH            R0, [R6,#0x28]
58CBD6:  UBFX.W          R2, R0, #0xA, #5; int
58CBDA:  MOV             R0, R4; this
58CBDC:  BLX.W           j__ZN8CVehicle24ClearVehicleUpgradeFlagsEii; CVehicle::ClearVehicleUpgradeFlags(int,int)
58CBE0:  CMP             R0, #0
58CBE2:  BNE.W           loc_58CEBE
58CBE6:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x58CBEE)
58CBE8:  SXTH            R1, R5; __int16
58CBEA:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr
58CBEC:  LDR             R0, [R0]; this
58CBEE:  BLX             j__ZNK17CVehicleModelInfo18CLinkedUpgradeList16FindOtherUpgradeEs; CVehicleModelInfo::CLinkedUpgradeList::FindOtherUpgrade(short)
58CBF2:  LDRH            R1, [R6,#0x28]
58CBF4:  MOV             R11, R0
58CBF6:  LDR             R0, [R4,#0x18]
58CBF8:  TST.W           R1, #0x100
58CBFC:  UBFX.W          R6, R1, #0xA, #5
58CC00:  BNE             loc_58CC18
58CC02:  LDR             R1, =(_Z15RemoveUpgradeCBP8RpAtomicPv_ptr - 0x58CC0A)
58CC04:  MOV             R2, R6
58CC06:  ADD             R1, PC; _Z15RemoveUpgradeCBP8RpAtomicPv_ptr
58CC08:  LDR             R1, [R1]; RemoveUpgradeCB(RpAtomic *,void *)
58CC0A:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
58CC0E:  ADDS.W          R0, R11, #1
58CC12:  BNE.W           loc_58CD8A
58CC16:  B               loc_58CE06
58CC18:  MOV             R1, R6
58CC1A:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CC1E:  MOV             R8, R0
58CC20:  LDR             R0, =(_Z15RemoveObjectsCBP8RwObjectPv_ptr - 0x58CC2E)
58CC22:  ADD.W           R9, SP, #0x38+var_20
58CC26:  MOV.W           R10, #0
58CC2A:  ADD             R0, PC; _Z15RemoveObjectsCBP8RwObjectPv_ptr
58CC2C:  STR.W           R10, [SP,#0x38+var_20]
58CC30:  MOV             R2, R9
58CC32:  LDR             R1, [R0]; RemoveObjectsCB(RwObject *,void *)
58CC34:  MOV             R0, R8
58CC36:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CC3A:  LDR             R0, =(_Z15RemoveObjectsCBP7RwFramePv_ptr - 0x58CC42)
58CC3C:  MOV             R2, R9
58CC3E:  ADD             R0, PC; _Z15RemoveObjectsCBP7RwFramePv_ptr
58CC40:  LDR             R1, [R0]; RemoveObjectsCB(RwFrame *,void *)
58CC42:  MOV             R0, R8
58CC44:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CC48:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CC52)
58CC4A:  LDRSH.W         R1, [R4,#0x26]
58CC4E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CC50:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CC52:  LDR.W           R0, [R0,R1,LSL#2]
58CC56:  MOV             R1, R6
58CC58:  LDR             R0, [R0,#0x34]
58CC5A:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CC5E:  LDR             R1, =(_Z13CopyObjectsCBP8RwObjectPv_ptr - 0x58CC66)
58CC60:  LDR             R2, =(dword_A130E8 - 0x58CC6A)
58CC62:  ADD             R1, PC; _Z13CopyObjectsCBP8RwObjectPv_ptr
58CC64:  LDR             R3, [R4,#0x18]
58CC66:  ADD             R2, PC; dword_A130E8
58CC68:  LDR             R1, [R1]; CopyObjectsCB(RwObject *,void *)
58CC6A:  STR             R3, [R2]
58CC6C:  MOV             R2, R8
58CC6E:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CC72:  CMP             R6, #2
58CC74:  BNE.W           loc_58CD84
58CC78:  LDR             R0, [R4,#0x18]
58CC7A:  MOV.W           R1, #0x3F800000
58CC7E:  STR.W           R1, [R4,#0x45C]
58CC82:  MOVS            R1, #5
58CC84:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CC88:  MOV             R6, R0
58CC8A:  LDR             R0, =(_Z15RemoveObjectsCBP8RwObjectPv_ptr - 0x58CC98)
58CC8C:  STR.W           R10, [SP,#0x38+var_20]
58CC90:  ADD.W           R10, SP, #0x38+var_20
58CC94:  ADD             R0, PC; _Z15RemoveObjectsCBP8RwObjectPv_ptr
58CC96:  MOV.W           R9, #0
58CC9A:  MOV             R2, R10
58CC9C:  LDR             R1, [R0]; RemoveObjectsCB(RwObject *,void *)
58CC9E:  MOV             R0, R6
58CCA0:  STR             R1, [SP,#0x38+var_28]
58CCA2:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CCA6:  LDR             R0, =(_Z15RemoveObjectsCBP7RwFramePv_ptr - 0x58CCAE)
58CCA8:  MOV             R2, R10
58CCAA:  ADD             R0, PC; _Z15RemoveObjectsCBP7RwFramePv_ptr
58CCAC:  LDR             R1, [R0]; RemoveObjectsCB(RwFrame *,void *)
58CCAE:  MOV             R0, R6
58CCB0:  STR             R1, [SP,#0x38+var_2C]
58CCB2:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CCB6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CCBC)
58CCB8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CCBA:  LDR             R1, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CCBC:  STR             R1, [SP,#0x38+var_30]
58CCBE:  LDRSH.W         R0, [R4,#0x26]
58CCC2:  LDR.W           R0, [R1,R0,LSL#2]
58CCC6:  MOVS            R1, #5
58CCC8:  LDR             R0, [R0,#0x34]
58CCCA:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CCCE:  LDR             R2, =(dword_A130E8 - 0x58CCD6)
58CCD0:  LDR             R1, [R4,#0x18]
58CCD2:  ADD             R2, PC; dword_A130E8
58CCD4:  STR             R1, [R2]
58CCD6:  MOV             R2, R6
58CCD8:  LDR             R1, =(_Z13CopyObjectsCBP8RwObjectPv_ptr - 0x58CCDE)
58CCDA:  ADD             R1, PC; _Z13CopyObjectsCBP8RwObjectPv_ptr
58CCDC:  LDR.W           R8, [R1]; CopyObjectsCB(RwObject *,void *)
58CCE0:  STR.W           R8, [SP,#0x38+var_34]
58CCE4:  MOV             R1, R8
58CCE6:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CCEA:  LDR             R0, [R4,#0x18]
58CCEC:  MOVS            R1, #4
58CCEE:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CCF2:  STR.W           R9, [SP,#0x38+var_20]
58CCF6:  ADD             R2, SP, #0x38+var_20
58CCF8:  LDR.W           R9, [SP,#0x38+var_28]
58CCFC:  MOV             R6, R0
58CCFE:  MOV             R1, R9
58CD00:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CD04:  LDR.W           R10, [SP,#0x38+var_2C]
58CD08:  ADD             R2, SP, #0x38+var_20
58CD0A:  MOV             R0, R6
58CD0C:  MOV             R1, R10
58CD0E:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CD12:  LDRSH.W         R0, [R4,#0x26]
58CD16:  MOVS            R1, #4
58CD18:  STR.W           R11, [SP,#0x38+var_24]
58CD1C:  LDR.W           R11, [SP,#0x38+var_30]
58CD20:  LDR.W           R0, [R11,R0,LSL#2]
58CD24:  LDR             R0, [R0,#0x34]
58CD26:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CD2A:  LDR             R2, =(dword_A130E8 - 0x58CD32)
58CD2C:  LDR             R1, [R4,#0x18]
58CD2E:  ADD             R2, PC; dword_A130E8
58CD30:  STR             R1, [R2]
58CD32:  MOV             R1, R8
58CD34:  MOV             R2, R6
58CD36:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CD3A:  LDR             R0, [R4,#0x18]
58CD3C:  MOVS            R1, #7
58CD3E:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CD42:  ADD.W           R8, SP, #0x38+var_20
58CD46:  MOV             R6, R0
58CD48:  MOVS            R0, #0
58CD4A:  MOV             R1, R9
58CD4C:  STR             R0, [SP,#0x38+var_20]
58CD4E:  MOV             R0, R6
58CD50:  MOV             R2, R8
58CD52:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CD56:  MOV             R0, R6
58CD58:  MOV             R1, R10
58CD5A:  MOV             R2, R8
58CD5C:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CD60:  LDRSH.W         R0, [R4,#0x26]
58CD64:  MOVS            R1, #7
58CD66:  LDR.W           R0, [R11,R0,LSL#2]
58CD6A:  LDR.W           R11, [SP,#0x38+var_24]
58CD6E:  LDR             R0, [R0,#0x34]
58CD70:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CD74:  LDR             R2, =(dword_A130E8 - 0x58CD7C)
58CD76:  LDR             R1, [R4,#0x18]
58CD78:  ADD             R2, PC; dword_A130E8
58CD7A:  STR             R1, [R2]
58CD7C:  MOV             R2, R6
58CD7E:  LDR             R1, [SP,#0x38+var_34]
58CD80:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CD84:  ADDS.W          R0, R11, #1
58CD88:  BEQ             loc_58CE06
58CD8A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CD90)
58CD8C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CD8E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CD90:  LDR.W           R0, [R0,R11,LSL#2]
58CD94:  LDRH            R1, [R0,#0x28]
58CD96:  LDR             R0, [R4,#0x18]
58CD98:  TST.W           R1, #0x100
58CD9C:  UBFX.W          R6, R1, #0xA, #5
58CDA0:  BNE             loc_58CDB0
58CDA2:  LDR             R1, =(_Z15RemoveUpgradeCBP8RpAtomicPv_ptr - 0x58CDAA)
58CDA4:  MOV             R2, R6
58CDA6:  ADD             R1, PC; _Z15RemoveUpgradeCBP8RpAtomicPv_ptr
58CDA8:  LDR             R1, [R1]; RemoveUpgradeCB(RpAtomic *,void *)
58CDAA:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
58CDAE:  B               loc_58CE06
58CDB0:  MOV             R1, R6
58CDB2:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CDB6:  MOV             R8, R0
58CDB8:  LDR             R0, =(_Z15RemoveObjectsCBP8RwObjectPv_ptr - 0x58CDC4)
58CDBA:  MOVS            R1, #0
58CDBC:  ADD.W           R9, SP, #0x38+var_20
58CDC0:  ADD             R0, PC; _Z15RemoveObjectsCBP8RwObjectPv_ptr
58CDC2:  STR             R1, [SP,#0x38+var_20]
58CDC4:  MOV             R2, R9
58CDC6:  LDR             R1, [R0]; RemoveObjectsCB(RwObject *,void *)
58CDC8:  MOV             R0, R8
58CDCA:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CDCE:  LDR             R0, =(_Z15RemoveObjectsCBP7RwFramePv_ptr - 0x58CDD6)
58CDD0:  MOV             R2, R9
58CDD2:  ADD             R0, PC; _Z15RemoveObjectsCBP7RwFramePv_ptr
58CDD4:  LDR             R1, [R0]; RemoveObjectsCB(RwFrame *,void *)
58CDD6:  MOV             R0, R8
58CDD8:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CDDC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CDE6)
58CDDE:  LDRSH.W         R1, [R4,#0x26]
58CDE2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CDE4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CDE6:  LDR.W           R0, [R0,R1,LSL#2]
58CDEA:  MOV             R1, R6
58CDEC:  LDR             R0, [R0,#0x34]
58CDEE:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CDF2:  LDR             R1, =(_Z13CopyObjectsCBP8RwObjectPv_ptr - 0x58CDFA)
58CDF4:  LDR             R2, =(dword_A130E8 - 0x58CDFE)
58CDF6:  ADD             R1, PC; _Z13CopyObjectsCBP8RwObjectPv_ptr
58CDF8:  LDR             R3, [R4,#0x18]
58CDFA:  ADD             R2, PC; dword_A130E8
58CDFC:  LDR             R1, [R1]; CopyObjectsCB(RwObject *,void *)
58CDFE:  STR             R3, [R2]
58CE00:  MOV             R2, R8
58CE02:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CE06:  LDRSH.W         R1, [R4,#0x43E]
58CE0A:  MOVW            R0, #0xFFFF
58CE0E:  CMP             R1, R5
58CE10:  IT EQ
58CE12:  STRHEQ.W        R0, [R4,#0x43E]
58CE16:  LDRSH.W         R1, [R4,#0x440]
58CE1A:  CMP             R1, R5
58CE1C:  IT EQ
58CE1E:  STRHEQ.W        R0, [R4,#0x440]
58CE22:  LDRSH.W         R1, [R4,#0x442]
58CE26:  CMP             R1, R5
58CE28:  IT EQ
58CE2A:  STRHEQ.W        R0, [R4,#0x442]
58CE2E:  LDRSH.W         R1, [R4,#0x444]
58CE32:  CMP             R1, R5
58CE34:  IT EQ
58CE36:  STRHEQ.W        R0, [R4,#0x444]
58CE3A:  LDRSH.W         R1, [R4,#0x446]
58CE3E:  CMP             R1, R5
58CE40:  IT EQ
58CE42:  STRHEQ.W        R0, [R4,#0x446]
58CE46:  LDRSH.W         R1, [R4,#0x448]
58CE4A:  CMP             R1, R5
58CE4C:  IT EQ
58CE4E:  STRHEQ.W        R0, [R4,#0x448]
58CE52:  LDRSH.W         R1, [R4,#0x44A]
58CE56:  CMP             R1, R5
58CE58:  IT EQ
58CE5A:  STRHEQ.W        R0, [R4,#0x44A]
58CE5E:  LDRSH.W         R1, [R4,#0x44C]
58CE62:  CMP             R1, R5
58CE64:  IT EQ
58CE66:  STRHEQ.W        R0, [R4,#0x44C]
58CE6A:  LDRSH.W         R1, [R4,#0x44E]
58CE6E:  CMP             R1, R5
58CE70:  IT EQ
58CE72:  STRHEQ.W        R0, [R4,#0x44E]
58CE76:  LDRSH.W         R1, [R4,#0x450]
58CE7A:  CMP             R1, R5
58CE7C:  IT EQ
58CE7E:  STRHEQ.W        R0, [R4,#0x450]
58CE82:  LDRSH.W         R1, [R4,#0x452]
58CE86:  CMP             R1, R5
58CE88:  IT EQ
58CE8A:  STRHEQ.W        R0, [R4,#0x452]
58CE8E:  LDRSH.W         R1, [R4,#0x454]
58CE92:  CMP             R1, R5
58CE94:  IT EQ
58CE96:  STRHEQ.W        R0, [R4,#0x454]
58CE9A:  LDRSH.W         R1, [R4,#0x456]
58CE9E:  CMP             R1, R5
58CEA0:  IT EQ
58CEA2:  STRHEQ.W        R0, [R4,#0x456]
58CEA6:  LDRSH.W         R1, [R4,#0x458]
58CEAA:  CMP             R1, R5
58CEAC:  IT EQ
58CEAE:  STRHEQ.W        R0, [R4,#0x458]
58CEB2:  LDRSH.W         R1, [R4,#0x45A]
58CEB6:  CMP             R1, R5
58CEB8:  IT EQ
58CEBA:  STRHEQ.W        R0, [R4,#0x45A]
58CEBE:  ADD             SP, SP, #0x1C
58CEC0:  POP.W           {R8-R11}
58CEC4:  POP             {R4-R7,PC}
