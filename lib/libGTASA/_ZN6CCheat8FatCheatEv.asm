; =========================================================
; Game Engine Function: _ZN6CCheat8FatCheatEv
; Address            : 0x2FDBB8 - 0x2FDBEC
; =========================================================

2FDBB8:  PUSH            {R7,LR}
2FDBBA:  MOV             R7, SP
2FDBBC:  MOVS            R1, #0
2FDBBE:  MOVS            R0, #(dword_14+1); this
2FDBC0:  MOVT            R1, #0x447A; unsigned __int16
2FDBC4:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FDBC8:  MOV.W           R0, #0xFFFFFFFF; int
2FDBCC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDBD0:  LDR.W           R0, [R0,#0x44C]
2FDBD4:  CMP             R0, #0x32 ; '2'
2FDBD6:  IT EQ
2FDBD8:  POPEQ           {R7,PC}
2FDBDA:  MOV.W           R0, #0xFFFFFFFF; int
2FDBDE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDBE2:  MOVS            R1, #0; CPlayerPed *
2FDBE4:  POP.W           {R7,LR}
2FDBE8:  B.W             j_j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; j_CClothes::RebuildPlayer(CPlayerPed *,bool)
