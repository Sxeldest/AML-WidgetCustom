; =========================================================
; Game Engine Function: _ZN5CGame27InitialiseEssentialsAfterRWEv
; Address            : 0x46FFB0 - 0x46FFEE
; =========================================================

46FFB0:  PUSH            {R4,R6,R7,LR}
46FFB2:  ADD             R7, SP, #8
46FFB4:  LDR             R0, =(TheText_ptr - 0x46FFBE)
46FFB6:  MOVS            R1, #0; unsigned __int8
46FFB8:  MOVS            R4, #0
46FFBA:  ADD             R0, PC; TheText_ptr
46FFBC:  LDR             R0, [R0]; TheText ; this
46FFBE:  BLX             j__ZN5CText4LoadEh; CText::Load(uchar)
46FFC2:  BLX             j__ZN14CCarFXRenderer10InitialiseEv; CCarFXRenderer::Initialise(void)
46FFC6:  CBZ             R0, loc_46FFE4
46FFC8:  BLX             j__ZN14CGrassRenderer10InitialiseEv; CGrassRenderer::Initialise(void)
46FFCC:  CMP             R0, #1
46FFCE:  BNE             loc_46FFE8
46FFD0:  BLX             j__ZN23CCustomBuildingRenderer10InitialiseEv; CCustomBuildingRenderer::Initialise(void)
46FFD4:  CBZ             R0, loc_46FFE8
46FFD6:  BLX             j__ZN6CTimer10InitialiseEv; CTimer::Initialise(void)
46FFDA:  BLX             j__ZN15CTouchInterface17LoadTouchControlsEv; CTouchInterface::LoadTouchControls(void)
46FFDE:  BLX             j__ZN15CWidgetListShop12LoadFromFileEv; CWidgetListShop::LoadFromFile(void)
46FFE2:  MOVS            R4, #1
46FFE4:  MOV             R0, R4
46FFE6:  POP             {R4,R6,R7,PC}
46FFE8:  MOVS            R4, #0
46FFEA:  MOV             R0, R4
46FFEC:  POP             {R4,R6,R7,PC}
