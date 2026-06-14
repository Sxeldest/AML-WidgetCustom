; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity19ComputeDetourTargetERK4CPed
; Address            : 0x522E48 - 0x522EBA
; =========================================================

522E48:  PUSH            {R4-R7,LR}
522E4A:  ADD             R7, SP, #0xC
522E4C:  PUSH.W          {R11}
522E50:  SUB             SP, SP, #0x60
522E52:  VMOV.I32        Q8, #0
522E56:  ADD             R2, SP, #0x70+var_50; CEntity **
522E58:  MOV             R5, R0
522E5A:  ADD.W           R0, R2, #0x30 ; '0'
522E5E:  MOV             R4, R1
522E60:  LDR             R1, [R5,#0xC]
522E62:  VST1.32         {D16-D17}, [R0]
522E66:  ADD.W           R0, R2, #0x24 ; '$'
522E6A:  ADD             R6, SP, #0x70+var_64
522E6C:  VST1.32         {D16-D17}, [R0]
522E70:  ADD.W           R0, R2, #0x14
522E74:  VST1.32         {D16-D17}, [R0]
522E78:  ADDS            R0, R2, #4; this
522E7A:  VST1.32         {D16-D17}, [R0]
522E7E:  STR             R1, [SP,#0x70+var_50]
522E80:  MOV             R1, R6; CColSphere *
522E82:  BLX             j__ZN23CTaskComplexAvoidEntity13ComputeSphereER10CColSpherePP7CEntity; CTaskComplexAvoidEntity::ComputeSphere(CColSphere &,CEntity **)
522E86:  LDR             R0, [R4,#0x14]
522E88:  ADD.W           R2, R5, #0x14; CColSphere *
522E8C:  ADD.W           R3, R5, #0x20 ; ' '; CVector *
522E90:  ADD.W           R1, R0, #0x30 ; '0'
522E94:  CMP             R0, #0
522E96:  IT EQ
522E98:  ADDEQ           R1, R4, #4
522E9A:  LDR             R0, [R1,#8]
522E9C:  ADD.W           R1, R5, #0x38 ; '8'
522EA0:  STR             R0, [SP,#0x70+var_5C]
522EA2:  ADD.W           R0, R5, #0x2C ; ','
522EA6:  STRD.W          R1, R0, [SP,#0x70+var_70]; CVector *
522EAA:  MOV             R0, R4; this
522EAC:  MOV             R1, R6; CPed *
522EAE:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
522EB2:  ADD             SP, SP, #0x60 ; '`'
522EB4:  POP.W           {R11}
522EB8:  POP             {R4-R7,PC}
