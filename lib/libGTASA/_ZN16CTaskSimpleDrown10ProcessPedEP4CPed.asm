; =========================================================
; Game Engine Function: _ZN16CTaskSimpleDrown10ProcessPedEP4CPed
; Address            : 0x4EB484 - 0x4EB4CE
; =========================================================

4EB484:  PUSH            {R4,R5,R7,LR}
4EB486:  ADD             R7, SP, #8
4EB488:  MOV             R5, R0
4EB48A:  MOV             R4, R1
4EB48C:  LDRB.W          R0, [R5,#0x28]
4EB490:  CBZ             R0, loc_4EB4C2
4EB492:  MOV             R0, R4; CPed *
4EB494:  MOVS            R1, #0x36 ; '6'
4EB496:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4EB49A:  LDR.W           R0, [R4,#0x484]
4EB49E:  BIC.W           R0, R0, #0x200
4EB4A2:  STR.W           R0, [R4,#0x484]
4EB4A6:  MOV.W           R0, #0xFFFFFFFF; int
4EB4AA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EB4AE:  CMP             R0, R4
4EB4B0:  BNE             loc_4EB4BC
4EB4B2:  MOVS            R0, #(dword_A8+2); this
4EB4B4:  MOV.W           R1, #0x3F800000; unsigned __int16
4EB4B8:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
4EB4BC:  MOVS            R0, #0
4EB4BE:  STRB.W          R0, [R5,#0x28]
4EB4C2:  MOV             R0, R5; this
4EB4C4:  MOV             R1, R4; CPed *
4EB4C6:  BLX             j__ZN14CTaskSimpleDie10ProcessPedEP4CPed; CTaskSimpleDie::ProcessPed(CPed *)
4EB4CA:  MOVS            R0, #0
4EB4CC:  POP             {R4,R5,R7,PC}
