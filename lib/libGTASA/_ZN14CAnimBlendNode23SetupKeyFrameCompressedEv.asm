; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode23SetupKeyFrameCompressedEv
; Address            : 0x38B5EC - 0x38B640
; =========================================================

38B5EC:  PUSH            {R7,LR}
38B5EE:  MOV             R7, SP
38B5F0:  LDR             R1, [R0,#0x10]
38B5F2:  LDRSH.W         R2, [R1,#6]
38B5F6:  CMP             R2, #1
38B5F8:  ITT LT
38B5FA:  MOVLT           R0, #0; this
38B5FC:  POPLT           {R7,PC}
38B5FE:  MOVS            R2, #1
38B600:  STR             R2, [R0,#8]
38B602:  LDRH            R2, [R1,#6]
38B604:  CMP             R2, #1
38B606:  BNE             loc_38B610
38B608:  MOVS            R1, #0
38B60A:  STR             R1, [R0,#0xC]
38B60C:  STRH            R1, [R0,#8]
38B60E:  B               loc_38B638
38B610:  LDRH            R2, [R1,#4]
38B612:  MOVS            R3, #0xA
38B614:  LDR             R1, [R1,#8]
38B616:  TST.W           R2, #2
38B61A:  VLDR            S2, =0.016667
38B61E:  IT NE
38B620:  MOVNE           R3, #0x10
38B622:  ADD             R1, R3
38B624:  LDRSH.W         R1, [R1,#8]
38B628:  VMOV            S0, R1
38B62C:  VCVT.F32.S32    S0, S0
38B630:  VMUL.F32        S0, S0, S2
38B634:  VSTR            S0, [R0,#0xC]
38B638:  BLX             j__ZN14CAnimBlendNode20CalcDeltasCompressedEv; CAnimBlendNode::CalcDeltasCompressed(void)
38B63C:  MOVS            R0, #1
38B63E:  POP             {R7,PC}
