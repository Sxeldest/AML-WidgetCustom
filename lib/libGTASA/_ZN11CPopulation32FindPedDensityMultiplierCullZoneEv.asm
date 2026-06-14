; =========================================================
; Game Engine Function: _ZN11CPopulation32FindPedDensityMultiplierCullZoneEv
; Address            : 0x4CE8C4 - 0x4CE8E2
; =========================================================

4CE8C4:  PUSH            {R7,LR}
4CE8C6:  MOV             R7, SP
4CE8C8:  BLX             j__ZN10CCullZones9FewerPedsEv; CCullZones::FewerPeds(void)
4CE8CC:  VLDR            S2, =0.6
4CE8D0:  VMOV.F32        S0, #1.0
4CE8D4:  CMP             R0, #0
4CE8D6:  IT NE
4CE8D8:  VMOVNE.F32      S0, S2
4CE8DC:  VMOV            R0, S0
4CE8E0:  POP             {R7,PC}
