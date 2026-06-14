; =========================================================
; Game Engine Function: _ZN6CCheat15xboxHelperCheatEv
; Address            : 0x2FEA54 - 0x2FEA84
; =========================================================

2FEA54:  PUSH            {R7,LR}
2FEA56:  MOV             R7, SP
2FEA58:  MOVS            R1, #0
2FEA5A:  MOVS            R0, #(dword_84+1); this
2FEA5C:  MOVT            R1, #0x4244; unsigned __int16
2FEA60:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FEA64:  MOVW            R1, #0xC000
2FEA68:  MOVS            R0, #(dword_1C+2); this
2FEA6A:  MOVT            R1, #0x45D9; unsigned __int16
2FEA6E:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FEA72:  MOVW            R1, #0xF000
2FEA76:  MOVS            R0, #(dword_78+1); this
2FEA78:  MOVT            R1, #0x4579; unsigned __int16
2FEA7C:  POP.W           {R7,LR}
2FEA80:  B.W             sub_195D60
