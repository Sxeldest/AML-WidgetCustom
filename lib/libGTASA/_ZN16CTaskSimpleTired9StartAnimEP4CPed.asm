; =========================================================
; Game Engine Function: _ZN16CTaskSimpleTired9StartAnimEP4CPed
; Address            : 0x4EBECC - 0x4EBF28
; =========================================================

4EBECC:  PUSH            {R4-R7,LR}
4EBECE:  ADD             R7, SP, #0xC
4EBED0:  PUSH.W          {R11}
4EBED4:  MOV             R5, R1
4EBED6:  MOV             R4, R0
4EBED8:  MOV             R0, R5
4EBEDA:  MOVS            R1, #1
4EBEDC:  MOVS            R6, #1
4EBEDE:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4EBEE2:  LDR             R0, [R5]
4EBEE4:  LDR             R1, [R0,#0x60]
4EBEE6:  MOV             R0, R5
4EBEE8:  BLX             R1
4EBEEA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EBEF2)
4EBEEC:  LDR             R1, [R4,#8]
4EBEEE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EBEF0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EBEF2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EBEF4:  STRB            R6, [R4,#0x14]
4EBEF6:  STRD.W          R0, R1, [R4,#0xC]
4EBEFA:  MOV.W           R0, #0xFFFFFFFF; int
4EBEFE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EBF02:  CMP             R0, R5
4EBF04:  BNE             loc_4EBF12
4EBF06:  BLX             j__ZN8CClothes27GetDefaultPlayerMotionGroupEv; CClothes::GetDefaultPlayerMotionGroup(void)
4EBF0A:  CMP             R0, #0x37 ; '7'
4EBF0C:  BNE             loc_4EBF12
4EBF0E:  MOVS            R1, #0x4C ; 'L'
4EBF10:  B               loc_4EBF14
4EBF12:  MOVS            R1, #0; int
4EBF14:  LDR             R0, [R5,#0x18]; int
4EBF16:  MOVS            R2, #0xA; unsigned int
4EBF18:  MOV.W           R3, #0x40800000
4EBF1C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EBF20:  STR             R0, [R4,#0x18]
4EBF22:  POP.W           {R11}
4EBF26:  POP             {R4-R7,PC}
