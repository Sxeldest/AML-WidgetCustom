; =========================================================
; Game Engine Function: _ZN9CPhysical36PlacePhysicalRelativeToOtherPhysicalEPS_S0_7CVector
; Address            : 0x406B18 - 0x406BEC
; =========================================================

406B18:  PUSH            {R4,R5,R7,LR}
406B1A:  ADD             R7, SP, #8
406B1C:  VPUSH           {D8-D14}
406B20:  SUB             SP, SP, #0x18
406B22:  MOV             R5, R0
406B24:  LDR             R0, [R7,#arg_0]
406B26:  STRD.W          R2, R3, [SP,#0x58+var_4C]
406B2A:  MOV             R4, R1
406B2C:  STR             R0, [SP,#0x58+var_44]
406B2E:  ADD             R2, SP, #0x58+var_4C
406B30:  LDR             R1, [R5,#0x14]
406B32:  MOV             R0, SP
406B34:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
406B38:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x406B42)
406B3A:  VLDR            S16, [SP,#0x58+var_58]
406B3E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
406B40:  VLDR            S18, [SP,#0x58+var_54]
406B44:  VLDR            S20, [SP,#0x58+var_50]
406B48:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
406B4A:  VLDR            S22, [R5,#0x48]
406B4E:  VLDR            S24, [R5,#0x4C]
406B52:  VLDR            S28, [R0]
406B56:  MOV             R0, R4; this
406B58:  VLDR            S26, [R5,#0x50]
406B5C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
406B60:  LDR             R0, [R4,#0x14]
406B62:  LDR             R1, [R5,#0x14]
406B64:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
406B68:  VLDR            S0, =0.9
406B6C:  ADD.W           R0, R5, #0x48 ; 'H'
406B70:  LDR             R1, [R4,#0x14]
406B72:  VMUL.F32        S0, S28, S0
406B76:  CMP             R1, #0
406B78:  VMUL.F32        S2, S0, S26
406B7C:  VMUL.F32        S4, S0, S24
406B80:  VMUL.F32        S6, S22, S0
406B84:  VADD.F32        S0, S20, S2
406B88:  VADD.F32        S2, S18, S4
406B8C:  VADD.F32        S4, S16, S6
406B90:  BEQ             loc_406BA2
406B92:  VSTR            S4, [R1,#0x30]
406B96:  LDR             R1, [R4,#0x14]
406B98:  VSTR            S2, [R1,#0x34]
406B9C:  LDR             R1, [R4,#0x14]
406B9E:  ADDS            R1, #0x38 ; '8'
406BA0:  B               loc_406BAE
406BA2:  ADD.W           R1, R4, #0xC
406BA6:  VSTR            S4, [R4,#4]
406BAA:  VSTR            S2, [R4,#8]
406BAE:  VSTR            S0, [R1]
406BB2:  VLDR            D16, [R0]
406BB6:  LDR             R1, [R0,#8]
406BB8:  LDR             R0, [R4,#0x18]
406BBA:  STR             R1, [R4,#0x50]
406BBC:  CMP             R0, #0
406BBE:  VSTR            D16, [R4,#0x48]
406BC2:  BEQ             loc_406BD8
406BC4:  LDR             R1, [R0,#4]
406BC6:  LDR             R0, [R4,#0x14]
406BC8:  ADDS            R1, #0x10
406BCA:  CBZ             R0, loc_406BD2
406BCC:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
406BD0:  B               loc_406BD8
406BD2:  ADDS            R0, R4, #4
406BD4:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
406BD8:  MOV             R0, R4; this
406BDA:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
406BDE:  MOV             R0, R4; this
406BE0:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
406BE4:  ADD             SP, SP, #0x18
406BE6:  VPOP            {D8-D14}
406BEA:  POP             {R4,R5,R7,PC}
