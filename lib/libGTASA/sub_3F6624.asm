; =========================================================
; Game Engine Function: sub_3F6624
; Address            : 0x3F6624 - 0x3F6634
; =========================================================

3F6624:  PUSH.W          {R0-R11,LR}
3F6628:  BLX             j__ZN10CEntryExit19GenerateAmbientPedsERK7CVector; CEntryExit::GenerateAmbientPeds(CVector const&)
3F662C:  VMOV            S0, R0
3F6630:  POP.W           {R0-R11,PC}
