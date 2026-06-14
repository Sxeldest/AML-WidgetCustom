; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntity14ControlSubTaskEP4CPed
; Address            : 0x542B98 - 0x542D98
; =========================================================

542B98:  PUSH            {R4-R7,LR}
542B9A:  ADD             R7, SP, #0xC
542B9C:  PUSH.W          {R8-R10}
542BA0:  VPUSH           {D8-D11}
542BA4:  MOV             R5, R0
542BA6:  MOV             R4, R1
542BA8:  LDR             R0, [R5,#0x2C]
542BAA:  CBZ             R0, loc_542BFA
542BAC:  LDRB.W          R1, [R5,#0x30]
542BB0:  CBNZ            R1, loc_542BFA
542BB2:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x542BBC)
542BB4:  ADD.W           R2, R0, R0,LSL#2
542BB8:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
542BBA:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups ...
542BBC:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups
542BBE:  LDR.W           R1, [R1,R2,LSL#2]
542BC2:  CBNZ            R1, loc_542BCE
542BC4:  BLX             j__ZN12CAnimManager16GetAnimBlockNameE12AssocGroupId; CAnimManager::GetAnimBlockName(AssocGroupId)
542BC8:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
542BCC:  MOV             R1, R0; int
542BCE:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x542BD6)
542BD0:  LDRB            R2, [R1,#0x10]; int
542BD2:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
542BD4:  CMP             R2, #0
542BD6:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
542BD8:  SUB.W           R0, R1, R0
542BDC:  MOV.W           R0, R0,ASR#5; this
542BE0:  BEQ             loc_542BEE
542BE2:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
542BE6:  MOVS            R0, #1
542BE8:  STRB.W          R0, [R5,#0x30]
542BEC:  B               loc_542BFA
542BEE:  MOVW            R1, #0x63E7
542BF2:  ADD             R0, R1; this
542BF4:  MOVS            R1, #8; int
542BF6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
542BFA:  LDR             R0, [R5,#8]
542BFC:  CBZ             R0, loc_542C4C
542BFE:  LDR             R1, [R0]
542C00:  LDR             R1, [R1,#0x14]
542C02:  BLX             R1
542C04:  CMP.W           R0, #0x134
542C08:  BEQ             loc_542C3C
542C0A:  MOVW            R1, #0x387
542C0E:  CMP             R0, R1
542C10:  BNE             loc_542C4C
542C12:  LDR             R0, =(_ZN26CTaskComplexGoPickUpEntity13MAX_GOTO_TIMEE_ptr - 0x542C1A)
542C14:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x542C1E)
542C16:  ADD             R0, PC; _ZN26CTaskComplexGoPickUpEntity13MAX_GOTO_TIMEE_ptr
542C18:  LDR             R2, [R5,#0x28]
542C1A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
542C1C:  LDR             R0, [R0]; CTaskComplexGoPickUpEntity::MAX_GOTO_TIME ...
542C1E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
542C20:  LDR             R0, [R0]; CTaskComplexGoPickUpEntity::MAX_GOTO_TIME
542C22:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
542C24:  ADD             R0, R2
542C26:  CMP             R1, R0
542C28:  BLS             loc_542C5A
542C2A:  LDR             R0, [R5,#8]
542C2C:  LDR             R1, [R0]
542C2E:  MOVS            R2, #1
542C30:  MOVS            R3, #0
542C32:  MOVS            R5, #0
542C34:  LDR             R6, [R1,#0x1C]
542C36:  MOV             R1, R4
542C38:  BLX             R6
542C3A:  B               loc_542C4E
542C3C:  LDR             R0, [R5,#8]
542C3E:  LDR             R1, [R0,#0x38]
542C40:  CMP             R1, #0
542C42:  ITT EQ
542C44:  LDRBEQ.W        R1, [R0,#0x34]
542C48:  CMPEQ           R1, #0
542C4A:  BEQ             loc_542D08
542C4C:  LDR             R5, [R5,#8]
542C4E:  MOV             R0, R5
542C50:  VPOP            {D8-D11}
542C54:  POP.W           {R8-R10}
542C58:  POP             {R4-R7,PC}; float
542C5A:  LDR.W           R0, [R4,#0x444]
542C5E:  CMP             R0, #0
542C60:  BEQ             loc_542C4C
542C62:  MOV             R0, R4; this
542C64:  LDR             R6, [R5,#8]
542C66:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
542C6A:  MOV             R10, R0
542C6C:  CMP.W           R10, #0
542C70:  BEQ             loc_542C4C
542C72:  MOV             R0, R10; this
542C74:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
542C78:  MOV             R8, R0
542C7A:  MOV             R0, R10; this
542C7C:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
542C80:  MOV             R9, R0
542C82:  LDR             R0, [R4,#0x14]
542C84:  VLDR            S0, [R6,#0x10]
542C88:  ADD.W           R1, R0, #0x30 ; '0'
542C8C:  CMP             R0, #0
542C8E:  VLDR            S2, [R6,#0x14]
542C92:  IT EQ
542C94:  ADDEQ           R1, R4, #4
542C96:  VLDR            S4, [R1]
542C9A:  VLDR            S6, [R1,#4]
542C9E:  VSUB.F32        S0, S0, S4
542CA2:  VSUB.F32        S2, S2, S6
542CA6:  VMOV            R0, S0
542CAA:  VMOV            R1, S2; x
542CAE:  EOR.W           R0, R0, #0x80000000; y
542CB2:  BLX             atan2f
542CB6:  VMOV            S0, R8
542CBA:  LDR             R2, =(TheCamera_ptr - 0x542CCA)
542CBC:  VMOV            S16, R0
542CC0:  MOVS            R0, #0; this
542CC2:  VCVT.F32.S32    S18, S0
542CC6:  ADD             R2, PC; TheCamera_ptr
542CC8:  VMOV            S0, R9
542CCC:  VLDR            S22, =3.1416
542CD0:  LDR             R6, [R2]; TheCamera
542CD2:  VCVT.F32.S32    S20, S0
542CD6:  VMOV            R1, S18
542CDA:  VMOV            R3, S20; float
542CDE:  EOR.W           R2, R1, #0x80000000; float
542CE2:  MOVS            R1, #0; float
542CE4:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
542CE8:  VMOV            S0, R0
542CEC:  VLDR            S2, [R6,#0x14C]
542CF0:  VADD.F32        S4, S16, S22
542CF4:  VSUB.F32        S22, S0, S2
542CF8:  VCMPE.F32       S22, S4
542CFC:  VMRS            APSR_nzcv, FPSCR
542D00:  BLE             loc_542D24
542D02:  VLDR            S0, =-6.2832
542D06:  B               loc_542D3A
542D08:  LDR             R1, =(_ZN26CTaskComplexGoPickUpEntity15MAX_PICKUP_TIMEE_ptr - 0x542D10)
542D0A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x542D14)
542D0C:  ADD             R1, PC; _ZN26CTaskComplexGoPickUpEntity15MAX_PICKUP_TIMEE_ptr
542D0E:  LDR             R3, [R5,#0x28]
542D10:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
542D12:  LDR             R1, [R1]; CTaskComplexGoPickUpEntity::MAX_PICKUP_TIME ...
542D14:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
542D16:  LDR             R1, [R1]; CTaskComplexGoPickUpEntity::MAX_PICKUP_TIME
542D18:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
542D1A:  ADD             R1, R3
542D1C:  CMP             R2, R1
542D1E:  BHI.W           loc_542C2C
542D22:  B               loc_542C4C
542D24:  VLDR            S0, =-3.1416
542D28:  VADD.F32        S0, S16, S0
542D2C:  VCMPE.F32       S22, S0
542D30:  VMRS            APSR_nzcv, FPSCR
542D34:  BGE             loc_542D3E
542D36:  VLDR            S0, =6.2832
542D3A:  VADD.F32        S22, S22, S0
542D3E:  MOV             R0, R10; this
542D40:  BLX             j__ZN4CPad12JumpJustDownEv; CPad::JumpJustDown(void)
542D44:  CMP             R0, #0
542D46:  BNE.W           loc_542C2A
542D4A:  MOV             R0, R10; this
542D4C:  BLX             j__ZN4CPad14SprintJustDownEv; CPad::SprintJustDown(void)
542D50:  CMP             R0, #0
542D52:  BNE.W           loc_542C2A
542D56:  VMUL.F32        S0, S18, S18
542D5A:  VMUL.F32        S2, S20, S20
542D5E:  VADD.F32        S0, S0, S2
542D62:  VLDR            S2, =0.0078125
542D66:  VSQRT.F32       S0, S0
542D6A:  VMUL.F32        S0, S0, S2
542D6E:  VMOV.F32        S2, #0.75
542D72:  VCMPE.F32       S0, S2
542D76:  VMRS            APSR_nzcv, FPSCR
542D7A:  BLE.W           loc_542C4C
542D7E:  VSUB.F32        S0, S22, S16
542D82:  VLDR            S2, =0.7854
542D86:  VABS.F32        S0, S0
542D8A:  VCMPE.F32       S0, S2
542D8E:  VMRS            APSR_nzcv, FPSCR
542D92:  BGT.W           loc_542C2A
542D96:  B               loc_542C4C
