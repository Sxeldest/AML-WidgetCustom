; =========================================================
; Game Engine Function: _ZN9CGangWars17InitAtStartOfGameEv
; Address            : 0x30A4B8 - 0x30A500
; =========================================================

30A4B8:  PUSH            {R4-R7,LR}
30A4BA:  ADD             R7, SP, #0xC
30A4BC:  PUSH.W          {R11}
30A4C0:  LDR             R0, =(_ZN9CGangWars5StateE_ptr - 0x30A4CA)
30A4C2:  LDR             R1, =(_ZN9CGangWars11ProvocationE_ptr - 0x30A4CE)
30A4C4:  LDR             R2, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30A4D4)
30A4C6:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30A4C8:  LDR             R3, =(_ZN9CGangWars19bIsPlayerOnAMissionE_ptr - 0x30A4DA)
30A4CA:  ADD             R1, PC; _ZN9CGangWars11ProvocationE_ptr
30A4CC:  LDR.W           R12, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x30A4DC)
30A4D0:  ADD             R2, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30A4D2:  LDR.W           LR, =(_ZN9CGangWars6State2E_ptr - 0x30A4E0)
30A4D6:  ADD             R3, PC; _ZN9CGangWars19bIsPlayerOnAMissionE_ptr
30A4D8:  ADD             R12, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
30A4DA:  LDR             R4, [R1]; CGangWars::Provocation ...
30A4DC:  ADD             LR, PC; _ZN9CGangWars6State2E_ptr
30A4DE:  LDR             R5, [R2]; CGangWars::NumSpecificZones ...
30A4E0:  LDR             R6, [R3]; CGangWars::bIsPlayerOnAMission ...
30A4E2:  MOVS            R3, #0
30A4E4:  LDR             R0, [R0]; CGangWars::State ...
30A4E6:  LDR.W           R1, [R12]; CGangWars::bGangWarsActive ...
30A4EA:  LDR.W           R2, [LR]; CGangWars::State2 ...
30A4EE:  STR             R3, [R0]; CGangWars::State
30A4F0:  STRB            R3, [R1]; CGangWars::bGangWarsActive
30A4F2:  STR             R3, [R2]; CGangWars::State2
30A4F4:  STR             R3, [R4]; CGangWars::Provocation
30A4F6:  STR             R3, [R5]; CGangWars::NumSpecificZones
30A4F8:  STRB            R3, [R6]; CGangWars::bIsPlayerOnAMission
30A4FA:  POP.W           {R11}
30A4FE:  POP             {R4-R7,PC}
