; =========================================================
; Game Engine Function: _ZN16CTaskSimpleTired10ProcessPedEP4CPed
; Address            : 0x4EBE1C - 0x4EBEC0
; =========================================================

4EBE1C:  PUSH            {R4-R7,LR}
4EBE1E:  ADD             R7, SP, #0xC
4EBE20:  PUSH.W          {R11}
4EBE24:  MOV             R5, R0
4EBE26:  MOV             R4, R1
4EBE28:  LDR             R0, [R5,#0x18]
4EBE2A:  CBNZ            R0, loc_4EBE76
4EBE2C:  MOV             R0, R4
4EBE2E:  MOVS            R1, #1
4EBE30:  MOVS            R6, #1
4EBE32:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4EBE36:  LDR             R0, [R4]
4EBE38:  LDR             R1, [R0,#0x60]
4EBE3A:  MOV             R0, R4
4EBE3C:  BLX             R1
4EBE3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EBE46)
4EBE40:  LDR             R1, [R5,#8]
4EBE42:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EBE44:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EBE46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EBE48:  STRB            R6, [R5,#0x14]
4EBE4A:  STRD.W          R0, R1, [R5,#0xC]
4EBE4E:  MOV.W           R0, #0xFFFFFFFF; int
4EBE52:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EBE56:  CMP             R0, R4
4EBE58:  BNE             loc_4EBE66
4EBE5A:  BLX             j__ZN8CClothes27GetDefaultPlayerMotionGroupEv; CClothes::GetDefaultPlayerMotionGroup(void)
4EBE5E:  CMP             R0, #0x37 ; '7'
4EBE60:  BNE             loc_4EBE66
4EBE62:  MOVS            R1, #0x4C ; 'L'
4EBE64:  B               loc_4EBE68
4EBE66:  MOVS            R1, #0; int
4EBE68:  LDR             R0, [R4,#0x18]; int
4EBE6A:  MOVS            R2, #0xA; unsigned int
4EBE6C:  MOV.W           R3, #0x40800000
4EBE70:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EBE74:  STR             R0, [R5,#0x18]
4EBE76:  LDRB            R0, [R5,#0x14]
4EBE78:  CBZ             R0, loc_4EBEA2
4EBE7A:  LDRB            R0, [R5,#0x15]
4EBE7C:  CBZ             R0, loc_4EBE90
4EBE7E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EBE86)
4EBE80:  MOVS            R1, #0
4EBE82:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EBE84:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EBE86:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EBE88:  STRB            R1, [R5,#0x15]
4EBE8A:  STR             R0, [R5,#0xC]
4EBE8C:  MOV             R1, R0
4EBE8E:  B               loc_4EBE9A
4EBE90:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EBE98)
4EBE92:  LDR             R1, [R5,#0xC]
4EBE94:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EBE96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EBE98:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EBE9A:  LDR             R2, [R5,#0x10]
4EBE9C:  ADD             R1, R2
4EBE9E:  CMP             R1, R0
4EBEA0:  BLS             loc_4EBEAA
4EBEA2:  MOVS            R0, #0
4EBEA4:  POP.W           {R11}
4EBEA8:  POP             {R4-R7,PC}
4EBEAA:  LDR             R0, [R5]
4EBEAC:  MOV             R1, R4
4EBEAE:  MOVS            R2, #0
4EBEB0:  MOVS            R3, #0
4EBEB2:  LDR             R6, [R0,#0x1C]
4EBEB4:  MOV             R0, R5
4EBEB6:  BLX             R6
4EBEB8:  MOVS            R0, #1
4EBEBA:  POP.W           {R11}
4EBEBE:  POP             {R4-R7,PC}
