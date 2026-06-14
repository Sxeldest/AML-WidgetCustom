; =========================================================
; Game Engine Function: _ZN6CCheat11MuscleCheatEv
; Address            : 0x2FDBEC - 0x2FDC20
; =========================================================

2FDBEC:  PUSH            {R7,LR}
2FDBEE:  MOV             R7, SP
2FDBF0:  MOVS            R1, #0
2FDBF2:  MOVS            R0, #(dword_14+3); this
2FDBF4:  MOVT            R1, #0x447A; unsigned __int16
2FDBF8:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FDBFC:  MOV.W           R0, #0xFFFFFFFF; int
2FDC00:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDC04:  LDR.W           R0, [R0,#0x44C]
2FDC08:  CMP             R0, #0x32 ; '2'
2FDC0A:  IT EQ
2FDC0C:  POPEQ           {R7,PC}
2FDC0E:  MOV.W           R0, #0xFFFFFFFF; int
2FDC12:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDC16:  MOVS            R1, #0; CPlayerPed *
2FDC18:  POP.W           {R7,LR}
2FDC1C:  B.W             j_j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; j_CClothes::RebuildPlayer(CPlayerPed *,bool)
