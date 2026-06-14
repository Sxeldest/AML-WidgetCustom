; =========================================================
; Game Engine Function: _ZN8CClothes21RebuildPlayerIfNeededEP10CPlayerPed
; Address            : 0x457EE4 - 0x457F40
; =========================================================

457EE4:  PUSH            {R4,R6,R7,LR}
457EE6:  ADD             R7, SP, #8
457EE8:  VPUSH           {D8}
457EEC:  MOV             R4, R0
457EEE:  LDR.W           R0, [R4,#0x444]
457EF2:  LDR             R0, [R0,#4]
457EF4:  VLDR            S16, [R0,#0x70]
457EF8:  MOVS            R0, #(dword_14+1); this
457EFA:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457EFE:  VMOV            S0, R0
457F02:  VCMP.F32        S16, S0
457F06:  VMRS            APSR_nzcv, FPSCR
457F0A:  BNE             loc_457F30
457F0C:  LDR.W           R0, [R4,#0x444]
457F10:  LDR             R0, [R0,#4]
457F12:  VLDR            S16, [R0,#0x74]
457F16:  MOVS            R0, #(dword_14+3); this
457F18:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457F1C:  VMOV            S0, R0
457F20:  VCMP.F32        S16, S0
457F24:  VMRS            APSR_nzcv, FPSCR
457F28:  ITT EQ
457F2A:  VPOPEQ          {D8}
457F2E:  POPEQ           {R4,R6,R7,PC}
457F30:  MOV             R0, R4; this
457F32:  MOVS            R1, #0; CPlayerPed *
457F34:  VPOP            {D8}
457F38:  POP.W           {R4,R6,R7,LR}
457F3C:  B.W             _ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
