; =========================================================
; Game Engine Function: _ZNK35CTaskComplexTurnToFaceEntityOrCoord20ComputeTargetHeadingEP4CPed
; Address            : 0x524E54 - 0x524ED0
; =========================================================

524E54:  LDRB            R2, [R0,#0x10]
524E56:  CBZ             R2, loc_524E6E
524E58:  LDR             R2, [R0,#0xC]
524E5A:  LDR             R3, [R2,#0x14]
524E5C:  ADD.W           R0, R3, #0x30 ; '0'
524E60:  CMP             R3, #0
524E62:  IT EQ
524E64:  ADDEQ           R0, R2, #4
524E66:  ADD.W           R2, R0, #8
524E6A:  ADDS            R3, R0, #4
524E6C:  B               loc_524E78
524E6E:  ADD.W           R2, R0, #0x1C
524E72:  ADD.W           R3, R0, #0x18
524E76:  ADDS            R0, #0x14
524E78:  PUSH            {R7,LR}
524E7A:  MOV             R7, SP
524E7C:  SUB             SP, SP, #0x10; float
524E7E:  VLDR            S4, [R0]
524E82:  LDR             R0, [R1,#0x14]
524E84:  VLDR            S0, [R2]
524E88:  ADD.W           R2, R0, #0x30 ; '0'
524E8C:  CMP             R0, #0
524E8E:  VLDR            S2, [R3]
524E92:  IT EQ
524E94:  ADDEQ           R2, R1, #4
524E96:  VLDR            S6, [R2]
524E9A:  ADD             R0, SP, #0x18+var_14; this
524E9C:  VLDR            S8, [R2,#4]
524EA0:  VLDR            S10, [R2,#8]
524EA4:  VSUB.F32        S4, S4, S6
524EA8:  VSUB.F32        S2, S2, S8
524EAC:  VSUB.F32        S0, S0, S10
524EB0:  VSTR            S4, [SP,#0x18+var_14]
524EB4:  VSTR            S2, [SP,#0x18+var_10]
524EB8:  VSTR            S0, [SP,#0x18+var_C]
524EBC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
524EC0:  LDRD.W          R0, R1, [SP,#0x18+var_14]; float
524EC4:  MOVS            R2, #0; float
524EC6:  MOVS            R3, #0; float
524EC8:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
524ECC:  ADD             SP, SP, #0x10
524ECE:  POP             {R7,PC}
