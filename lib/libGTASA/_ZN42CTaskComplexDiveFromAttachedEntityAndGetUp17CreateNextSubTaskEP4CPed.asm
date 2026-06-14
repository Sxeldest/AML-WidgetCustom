; =========================================================
; Game Engine Function: _ZN42CTaskComplexDiveFromAttachedEntityAndGetUp17CreateNextSubTaskEP4CPed
; Address            : 0x50E810 - 0x50E898
; =========================================================

50E810:  PUSH            {R4,R5,R7,LR}
50E812:  ADD             R7, SP, #8
50E814:  MOV             R4, R0
50E816:  MOV             R5, R1
50E818:  LDR             R0, [R4,#8]
50E81A:  LDR             R1, [R0]
50E81C:  LDR             R1, [R1,#0x14]
50E81E:  BLX             R1
50E820:  MOVW            R1, #0x386
50E824:  CMP             R0, R1
50E826:  ITT EQ
50E828:  MOVEQ           R0, R5; this
50E82A:  BLXEQ           j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
50E82E:  LDR             R0, [R4,#8]
50E830:  LDR             R1, [R0]
50E832:  LDR             R1, [R1,#0x14]
50E834:  BLX             R1
50E836:  CMP.W           R0, #0x1F6
50E83A:  BGT             loc_50E84A
50E83C:  CMP             R0, #0xCA
50E83E:  BEQ             loc_50E864
50E840:  CMP             R0, #0xCD
50E842:  BNE             loc_50E860
50E844:  MOVW            R1, #0x516
50E848:  B               loc_50E88E
50E84A:  MOVW            R1, #0x1F7
50E84E:  CMP             R0, R1
50E850:  BEQ             loc_50E88C
50E852:  MOVW            R1, #0x386
50E856:  CMP             R0, R1
50E858:  BNE             loc_50E860
50E85A:  MOVW            R1, #0x1F7
50E85E:  B               loc_50E88E
50E860:  MOVS            R0, #0
50E862:  POP             {R4,R5,R7,PC}
50E864:  LDR.W           R0, [R5,#0x55C]; this
50E868:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
50E86C:  VMOV            S2, R0
50E870:  VLDR            S0, =-1.5708
50E874:  ADDW            R0, R5, #0x55C
50E878:  MOVS            R1, #0xCD
50E87A:  VADD.F32        S0, S2, S0
50E87E:  VSTR            S0, [R0]
50E882:  ADD.W           R0, R5, #0x560
50E886:  VSTR            S0, [R0]
50E88A:  B               loc_50E88E
50E88C:  MOVS            R1, #0xCA; int
50E88E:  MOV             R0, R4; this
50E890:  POP.W           {R4,R5,R7,LR}
50E894:  B.W             _ZNK31CTaskComplexEvasiveDiveAndGetUp13CreateSubTaskEi; CTaskComplexEvasiveDiveAndGetUp::CreateSubTask(int)
