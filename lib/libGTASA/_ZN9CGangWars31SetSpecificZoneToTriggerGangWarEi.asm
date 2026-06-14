; =========================================================
; Game Engine Function: _ZN9CGangWars31SetSpecificZoneToTriggerGangWarEi
; Address            : 0x30E3A0 - 0x30E3BE
; =========================================================

30E3A0:  LDR             R1, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30E3A8)
30E3A2:  LDR             R2, =(_ZN9CGangWars14aSpecificZonesE_ptr - 0x30E3AA)
30E3A4:  ADD             R1, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30E3A6:  ADD             R2, PC; _ZN9CGangWars14aSpecificZonesE_ptr
30E3A8:  LDR             R1, [R1]; bool
30E3AA:  LDR.W           R12, [R2]; CGangWars::aSpecificZones ...
30E3AE:  LDR             R3, [R1]; CGangWars::NumSpecificZones
30E3B0:  ADDS            R2, R3, #1
30E3B2:  STR             R2, [R1]; CGangWars::NumSpecificZones
30E3B4:  STR.W           R0, [R12,R3,LSL#2]
30E3B8:  MOVS            R0, #0; this
30E3BA:  B.W             sub_199EE4
