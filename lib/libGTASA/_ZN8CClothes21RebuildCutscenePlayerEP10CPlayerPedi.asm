; =========================================================
; Game Engine Function: _ZN8CClothes21RebuildCutscenePlayerEP10CPlayerPedi
; Address            : 0x457DF8 - 0x457E36
; =========================================================

457DF8:  PUSH            {R4-R7,LR}
457DFA:  ADD             R7, SP, #0xC
457DFC:  PUSH.W          {R11}
457E00:  MOV             R5, R0
457E02:  MOV             R4, R1
457E04:  LDR.W           R0, [R5,#0x444]
457E08:  LDR             R6, [R0,#4]
457E0A:  MOVS            R0, #(dword_14+1); this
457E0C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457E10:  STR             R0, [R6,#0x70]
457E12:  LDR.W           R0, [R5,#0x444]
457E16:  LDR             R6, [R0,#4]
457E18:  MOVS            R0, #(dword_14+3); this
457E1A:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457E1E:  STR             R0, [R6,#0x74]
457E20:  MOVS            R2, #0; CPedClothesDesc *
457E22:  LDR.W           R0, [R5,#0x444]
457E26:  MOVS            R3, #(stderr+1); CPedClothesDesc *
457E28:  LDR             R1, [R0,#4]; unsigned int
457E2A:  MOV             R0, R4; this
457E2C:  POP.W           {R11}
457E30:  POP.W           {R4-R7,LR}
457E34:  B               _ZN8CClothes17ConstructPedModelEjR15CPedClothesDescPKS0_b; CClothes::ConstructPedModel(uint,CPedClothesDesc &,CPedClothesDesc const*,bool)
