; =========================================================
; Game Engine Function: _ZN6CCheat12StaminaCheatEv
; Address            : 0x2FE59C - 0x2FE5BA
; =========================================================

2FE59C:  PUSH            {R4,R6,R7,LR}
2FE59E:  ADD             R7, SP, #8
2FE5A0:  MOVS            R4, #0
2FE5A2:  MOVS            R0, #(dword_14+2); this
2FE5A4:  MOVT            R4, #0x447A
2FE5A8:  MOV             R1, R4; unsigned __int16
2FE5AA:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5AE:  MOVS            R0, #(dword_E0+1); this
2FE5B0:  MOV             R1, R4; unsigned __int16
2FE5B2:  POP.W           {R4,R6,R7,LR}
2FE5B6:  B.W             sub_195D60
