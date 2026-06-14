; =========================================================
; Game Engine Function: _ZN6CCheat11SkinnyCheatEv
; Address            : 0x2FDC2C - 0x2FDC64
; =========================================================

2FDC2C:  PUSH            {R7,LR}
2FDC2E:  MOV             R7, SP
2FDC30:  MOVS            R0, #(dword_14+1); this
2FDC32:  MOVS            R1, #0; unsigned __int16
2FDC34:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FDC38:  MOVS            R0, #(dword_14+3); this
2FDC3A:  MOVS            R1, #0; unsigned __int16
2FDC3C:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FDC40:  MOV.W           R0, #0xFFFFFFFF; int
2FDC44:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDC48:  LDR.W           R0, [R0,#0x44C]
2FDC4C:  CMP             R0, #0x32 ; '2'
2FDC4E:  IT EQ
2FDC50:  POPEQ           {R7,PC}
2FDC52:  MOV.W           R0, #0xFFFFFFFF; int
2FDC56:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDC5A:  MOVS            R1, #0; CPlayerPed *
2FDC5C:  POP.W           {R7,LR}
2FDC60:  B.W             j_j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; j_CClothes::RebuildPlayer(CPlayerPed *,bool)
