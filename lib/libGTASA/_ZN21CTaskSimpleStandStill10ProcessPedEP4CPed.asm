; =========================================================
; Game Engine Function: _ZN21CTaskSimpleStandStill10ProcessPedEP4CPed
; Address            : 0x4EA80C - 0x4EA92A
; =========================================================

4EA80C:  PUSH            {R4-R7,LR}
4EA80E:  ADD             R7, SP, #0xC
4EA810:  PUSH.W          {R8}
4EA814:  MOV             R4, R0
4EA816:  MOV             R5, R1
4EA818:  LDRB            R0, [R4,#0x14]
4EA81A:  CBZ             R0, loc_4EA880
4EA81C:  LDRB.W          R0, [R5,#0x487]
4EA820:  LSLS            R0, R0, #0x1D
4EA822:  BPL             loc_4EA844
4EA824:  LDR.W           R0, [R5,#0x440]; this
4EA828:  MOVS            R1, #0; bool
4EA82A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EA82E:  CBZ             R0, loc_4EA844
4EA830:  LDR.W           R0, [R5,#0x440]; this
4EA834:  MOVS            R1, #0; bool
4EA836:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EA83A:  MOVS            R1, #0
4EA83C:  MOVS            R2, #0
4EA83E:  BLX             j__ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D; CTaskSimpleDuck::ControlDuckMove(CVector2D)
4EA842:  B               loc_4EA84C
4EA844:  MOV             R0, R5
4EA846:  MOVS            R1, #1
4EA848:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4EA84C:  LDRB            R0, [R4,#0x19]
4EA84E:  CBZ             R0, loc_4EA874
4EA850:  LDR             R0, [R5,#0x18]
4EA852:  MOVS            R1, #3
4EA854:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4EA858:  CBZ             R0, loc_4EA874
4EA85A:  VLDR            S0, =0.99
4EA85E:  VLDR            S2, [R0,#0x18]
4EA862:  VCMPE.F32       S2, S0
4EA866:  VMRS            APSR_nzcv, FPSCR
4EA86A:  BLE             loc_4EA874
4EA86C:  MOVS            R0, #1
4EA86E:  POP.W           {R8}
4EA872:  POP             {R4-R7,PC}
4EA874:  LDRB            R0, [R4,#0x18]
4EA876:  CBZ             R0, loc_4EA8D6
4EA878:  MOVS            R0, #0
4EA87A:  POP.W           {R8}
4EA87E:  POP             {R4-R7,PC}
4EA880:  LDR             R0, [R4,#8]
4EA882:  CMP             R0, #0
4EA884:  BLT             loc_4EA81C
4EA886:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EA88E)
4EA888:  MOVS            R6, #1
4EA88A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EA88C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4EA88E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4EA890:  STRD.W          R1, R0, [R4,#0xC]
4EA894:  STRB            R6, [R4,#0x14]
4EA896:  LDRB.W          R0, [R5,#0x485]
4EA89A:  LSLS            R0, R0, #0x1F
4EA89C:  BNE             loc_4EA81C
4EA89E:  MOV             R0, R5
4EA8A0:  MOVS            R1, #1
4EA8A2:  ADDW            R8, R5, #0x484
4EA8A6:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4EA8AA:  STR.W           R6, [R5,#0x53C]
4EA8AE:  LDRB.W          R0, [R8,#3]
4EA8B2:  LSLS            R0, R0, #0x1D
4EA8B4:  BPL             loc_4EA8F2
4EA8B6:  LDR.W           R0, [R5,#0x440]; this
4EA8BA:  MOVS            R1, #0; bool
4EA8BC:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EA8C0:  CBZ             R0, loc_4EA8F2
4EA8C2:  LDR.W           R0, [R5,#0x440]; this
4EA8C6:  MOVS            R1, #0; bool
4EA8C8:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EA8CC:  MOVS            R1, #0
4EA8CE:  MOVS            R2, #0
4EA8D0:  BLX             j__ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D; CTaskSimpleDuck::ControlDuckMove(CVector2D)
4EA8D4:  B               loc_4EA900
4EA8D6:  LDRB            R0, [R4,#0x14]
4EA8D8:  CMP             R0, #0
4EA8DA:  BEQ             loc_4EA878
4EA8DC:  LDRB            R0, [R4,#0x15]
4EA8DE:  CBZ             R0, loc_4EA90E
4EA8E0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EA8E8)
4EA8E2:  MOVS            R2, #0
4EA8E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EA8E6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EA8E8:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
4EA8EA:  STRB            R2, [R4,#0x15]
4EA8EC:  STR             R1, [R4,#0xC]
4EA8EE:  MOV             R0, R1
4EA8F0:  B               loc_4EA918
4EA8F2:  LDR             R3, [R4,#0x1C]
4EA8F4:  MOVS            R2, #3; unsigned int
4EA8F6:  LDR.W           R1, [R5,#0x4E0]; int
4EA8FA:  LDR             R0, [R5,#0x18]; int
4EA8FC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EA900:  LDR.W           R0, [R5,#0x444]
4EA904:  CMP             R0, #0
4EA906:  ITT NE
4EA908:  MOVNE           R1, #0
4EA90A:  STRNE           R1, [R0,#0x14]
4EA90C:  B               loc_4EA81C
4EA90E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EA914)
4EA910:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EA912:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
4EA914:  LDR             R0, [R4,#0xC]
4EA916:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4EA918:  LDR             R2, [R4,#0x10]
4EA91A:  ADD             R2, R0
4EA91C:  MOVS            R0, #0
4EA91E:  CMP             R2, R1
4EA920:  IT LS
4EA922:  MOVLS           R0, #1
4EA924:  POP.W           {R8}
4EA928:  POP             {R4-R7,PC}
