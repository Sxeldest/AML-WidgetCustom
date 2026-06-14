; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAiming14ControlSubTaskEP4CPed
; Address            : 0x5457DC - 0x545924
; =========================================================

5457DC:  PUSH            {R4-R7,LR}
5457DE:  ADD             R7, SP, #0xC
5457E0:  PUSH.W          {R11}
5457E4:  VPUSH           {D8}
5457E8:  SUB             SP, SP, #0x10
5457EA:  MOV             R4, R0
5457EC:  MOV             R5, R1
5457EE:  LDR             R0, [R4,#0xC]
5457F0:  LDR             R1, [R5,#0x14]
5457F2:  LDR             R2, [R0,#0x14]
5457F4:  ADD.W           R3, R1, #0x30 ; '0'
5457F8:  CMP             R1, #0
5457FA:  IT EQ
5457FC:  ADDEQ           R3, R5, #4
5457FE:  ADD.W           R1, R2, #0x30 ; '0'
545802:  CMP             R2, #0
545804:  VLDR            S0, [R3]
545808:  VLDR            S2, [R3,#4]
54580C:  IT EQ
54580E:  ADDEQ           R1, R0, #4
545810:  VLDR            S4, [R1]
545814:  VLDR            S6, [R1,#4]
545818:  MOVS            R1, #0; int
54581A:  VSUB.F32        S0, S0, S4
54581E:  LDR.W           R0, [R5,#0x440]
545822:  VSUB.F32        S2, S2, S6
545826:  ADDS            R0, #4; this
545828:  VMUL.F32        S0, S0, S0
54582C:  VMUL.F32        S2, S2, S2
545830:  VADD.F32        S16, S0, S2
545834:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
545838:  MOV             R6, R0
54583A:  LDR             R0, [R4,#8]
54583C:  VLDR            S0, =0.0
545840:  LDR             R1, [R0]
545842:  VADD.F32        S16, S16, S0
545846:  LDR             R1, [R1,#0x14]
545848:  BLX             R1
54584A:  CMP             R0, #0xCB
54584C:  BEQ             loc_545888
54584E:  MOVW            R1, #0x38B; unsigned int
545852:  CMP             R0, R1
545854:  BNE             loc_545916
545856:  VLDR            S0, [R4,#0x14]
54585A:  VMUL.F32        S0, S0, S0
54585E:  VCMPE.F32       S16, S0
545862:  VMRS            APSR_nzcv, FPSCR
545866:  BGE             loc_5458C8
545868:  CBZ             R6, loc_5458E8
54586A:  LDR             R0, [R6]
54586C:  LDR             R1, [R0,#0x14]
54586E:  MOV             R0, R6
545870:  BLX             R1
545872:  MOVW            R1, #0x3F9
545876:  CMP             R0, R1
545878:  BNE             loc_545916
54587A:  LDR             R2, [R4,#0xC]; CEntity *
54587C:  MOV             R0, R6; this
54587E:  MOV             R1, R5; CPed *
545880:  MOVS            R3, #1; signed __int8
545882:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
545886:  B               loc_545916
545888:  CBZ             R6, loc_5458A6
54588A:  LDR             R0, [R6]
54588C:  LDR             R1, [R0,#0x14]
54588E:  MOV             R0, R6
545890:  BLX             R1
545892:  MOVW            R1, #0x3F9
545896:  CMP             R0, R1
545898:  BNE             loc_5458A6
54589A:  LDR             R2, [R4,#0xC]; CEntity *
54589C:  MOV             R0, R6; this
54589E:  MOV             R1, R5; CPed *
5458A0:  MOVS            R3, #1; signed __int8
5458A2:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
5458A6:  VLDR            S0, [R4,#0x10]
5458AA:  VMUL.F32        S0, S0, S0
5458AE:  VCMPE.F32       S16, S0
5458B2:  VMRS            APSR_nzcv, FPSCR
5458B6:  BLT             loc_545916
5458B8:  LDR             R0, [R4,#8]
5458BA:  MOVS            R2, #0
5458BC:  MOVS            R3, #0
5458BE:  LDR             R1, [R0]
5458C0:  LDR             R6, [R1,#0x1C]
5458C2:  MOV             R1, R5
5458C4:  BLX             R6
5458C6:  B               loc_545916
5458C8:  CBZ             R6, loc_545916
5458CA:  LDR             R0, [R6]
5458CC:  LDR             R1, [R0,#0x14]
5458CE:  MOV             R0, R6
5458D0:  BLX             R1
5458D2:  MOVW            R1, #0x3F9
5458D6:  CMP             R0, R1
5458D8:  BNE             loc_545916
5458DA:  LDR             R2, [R4,#0xC]; CEntity *
5458DC:  MOV             R0, R6; this
5458DE:  MOV             R1, R5; CPed *
5458E0:  MOVS            R3, #6; signed __int8
5458E2:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
5458E6:  B               loc_545916
5458E8:  MOVS            R0, #off_3C; this
5458EA:  LDR.W           R6, [R5,#0x440]
5458EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5458F2:  LDR             R1, [R4,#0xC]
5458F4:  MOV             R5, R0
5458F6:  MOVS            R0, #0
5458F8:  MOVS            R2, #1
5458FA:  STRD.W          R0, R2, [SP,#0x28+var_28]
5458FE:  MOVS            R3, #0
545900:  STRD.W          R2, R0, [SP,#0x28+var_20]
545904:  MOV             R0, R5
545906:  MOVS            R2, #0
545908:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
54590C:  ADDS            R0, R6, #4; this
54590E:  MOV             R1, R5; CTask *
545910:  MOVS            R2, #0; int
545912:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
545916:  LDR             R0, [R4,#8]
545918:  ADD             SP, SP, #0x10
54591A:  VPOP            {D8}
54591E:  POP.W           {R11}
545922:  POP             {R4-R7,PC}
