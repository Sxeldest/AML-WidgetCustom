; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering19ComputeDetourTargetERK4CPed
; Address            : 0x521EC0 - 0x521F1A
; =========================================================

521EC0:  PUSH            {R4-R7,LR}
521EC2:  ADD             R7, SP, #0xC
521EC4:  PUSH.W          {R11}
521EC8:  SUB             SP, SP, #0x40
521ECA:  ADD             R5, SP, #0x50+var_44
521ECC:  MOV             R4, R1
521ECE:  MOV             R6, R0
521ED0:  MOV             R2, R5; CColSphere *
521ED2:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering18ComputeAvoidSphereERK4CPedR10CColSphere; CTaskComplexAvoidOtherPedWhileWandering::ComputeAvoidSphere(CPed const&,CColSphere &)
521ED6:  LDRD.W          R0, R1, [R6,#0x10]
521EDA:  ADD             R2, SP, #0x50+var_20; CColSphere *
521EDC:  STRD.W          R0, R1, [SP,#0x50+var_20]
521EE0:  ADD             R3, SP, #0x50+var_30; CVector *
521EE2:  LDRD.W          R0, R1, [R6,#0x1C]
521EE6:  STRD.W          R0, R1, [SP,#0x50+var_30]
521EEA:  LDR             R0, [R4,#0x14]
521EEC:  ADD.W           R1, R0, #0x30 ; '0'
521EF0:  CMP             R0, #0
521EF2:  IT EQ
521EF4:  ADDEQ           R1, R4, #4
521EF6:  LDR             R0, [R1,#8]
521EF8:  ADD.W           R1, R6, #0x34 ; '4'
521EFC:  STR             R0, [SP,#0x50+var_18]
521EFE:  STR             R0, [SP,#0x50+var_28]
521F00:  STR             R0, [SP,#0x50+var_3C]
521F02:  ADD.W           R0, R6, #0x28 ; '('
521F06:  STRD.W          R1, R0, [SP,#0x50+var_50]; CVector *
521F0A:  MOV             R0, R4; this
521F0C:  MOV             R1, R5; CPed *
521F0E:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
521F12:  ADD             SP, SP, #0x40 ; '@'
521F14:  POP.W           {R11}
521F18:  POP             {R4-R7,PC}
