; =========================================================
; Game Engine Function: _ZN9CGangWars34ClearSpecificZonesToTriggerGangWarEv
; Address            : 0x30E38C - 0x30E39C
; =========================================================

30E38C:  LDR             R0, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30E394)
30E38E:  MOVS            R1, #0; bool
30E390:  ADD             R0, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30E392:  LDR             R0, [R0]; CGangWars::NumSpecificZones ...
30E394:  STR             R1, [R0]; CGangWars::NumSpecificZones
30E396:  MOVS            R0, #0; this
30E398:  B.W             sub_199EE4
