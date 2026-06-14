; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity18ComputeAvoidSphereERK4CPedR10CColSphere
; Address            : 0x522FE4 - 0x523030
; =========================================================

522FE4:  PUSH            {R4,R5,R7,LR}
522FE6:  ADD             R7, SP, #8
522FE8:  SUB             SP, SP, #0x40
522FEA:  VMOV.I32        Q8, #0
522FEE:  MOV             R4, R2
522FF0:  MOV             R5, R1
522FF2:  MOV             R2, SP; CEntity **
522FF4:  ADD.W           R1, R2, #0x30 ; '0'
522FF8:  LDR             R0, [R0,#0xC]; this
522FFA:  VST1.32         {D16-D17}, [R1]
522FFE:  ADD.W           R1, R2, #0x24 ; '$'
523002:  VST1.32         {D16-D17}, [R1]
523006:  ADD.W           R1, R2, #0x14
52300A:  VST1.32         {D16-D17}, [R1]
52300E:  ADDS            R1, R2, #4
523010:  VST1.32         {D16-D17}, [R1]
523014:  MOV             R1, R4; CColSphere *
523016:  STR             R0, [SP,#0x48+var_48]
523018:  BLX             j__ZN23CTaskComplexAvoidEntity13ComputeSphereER10CColSpherePP7CEntity; CTaskComplexAvoidEntity::ComputeSphere(CColSphere &,CEntity **)
52301C:  LDR             R0, [R5,#0x14]
52301E:  ADD.W           R1, R0, #0x30 ; '0'
523022:  CMP             R0, #0
523024:  IT EQ
523026:  ADDEQ           R1, R5, #4
523028:  LDR             R0, [R1,#8]
52302A:  STR             R0, [R4,#8]
52302C:  ADD             SP, SP, #0x40 ; '@'
52302E:  POP             {R4,R5,R7,PC}
