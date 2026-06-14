; =========================================================
; Game Engine Function: _ZN6CCheat17WeaponSkillsCheatEv
; Address            : 0x2FE5BA - 0x2FE620
; =========================================================

2FE5BA:  PUSH            {R4,R6,R7,LR}
2FE5BC:  ADD             R7, SP, #8
2FE5BE:  MOVS            R4, #0
2FE5C0:  MOVS            R0, #(dword_44+1); this
2FE5C2:  MOVT            R4, #0x447A
2FE5C6:  MOV             R1, R4; unsigned __int16
2FE5C8:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5CC:  MOVS            R0, #(dword_44+2); this
2FE5CE:  MOV             R1, R4; unsigned __int16
2FE5D0:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5D4:  MOVS            R0, #(dword_44+3); this
2FE5D6:  MOV             R1, R4; unsigned __int16
2FE5D8:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5DC:  MOVS            R0, #dword_48; this
2FE5DE:  MOV             R1, R4; unsigned __int16
2FE5E0:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5E4:  MOVS            R0, #(dword_48+1); this
2FE5E6:  MOV             R1, R4; unsigned __int16
2FE5E8:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5EC:  MOVS            R0, #(dword_48+2); this
2FE5EE:  MOV             R1, R4; unsigned __int16
2FE5F0:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5F4:  MOVS            R0, #(dword_48+3); this
2FE5F6:  MOV             R1, R4; unsigned __int16
2FE5F8:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE5FC:  MOVS            R0, #dword_4C; this
2FE5FE:  MOV             R1, R4; unsigned __int16
2FE600:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE604:  MOVS            R0, #(dword_4C+1); this
2FE606:  MOV             R1, R4; unsigned __int16
2FE608:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE60C:  MOVS            R0, #(dword_4C+2); this
2FE60E:  MOV             R1, R4; unsigned __int16
2FE610:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE614:  MOVS            R0, #(dword_4C+3); this
2FE616:  MOV             R1, R4; unsigned __int16
2FE618:  POP.W           {R4,R6,R7,LR}
2FE61C:  B.W             sub_195D60
