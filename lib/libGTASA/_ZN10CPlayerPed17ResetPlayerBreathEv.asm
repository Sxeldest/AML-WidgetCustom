; =========================================================
; Game Engine Function: _ZN10CPlayerPed17ResetPlayerBreathEv
; Address            : 0x4CA61C - 0x4CA63C
; =========================================================

4CA61C:  PUSH            {R4,R6,R7,LR}
4CA61E:  ADD             R7, SP, #8
4CA620:  MOV             R4, R0
4CA622:  MOVS            R0, #8
4CA624:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4CA628:  LDR.W           R1, [R4,#0x444]
4CA62C:  STR             R0, [R1,#0x44]
4CA62E:  LDR.W           R0, [R4,#0x444]
4CA632:  LDRH            R1, [R0,#0x34]
4CA634:  BIC.W           R1, R1, #0x80
4CA638:  STRH            R1, [R0,#0x34]
4CA63A:  POP             {R4,R6,R7,PC}
