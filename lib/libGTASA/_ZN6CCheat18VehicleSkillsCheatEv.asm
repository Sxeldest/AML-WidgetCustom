; =========================================================
; Game Engine Function: _ZN6CCheat18VehicleSkillsCheatEv
; Address            : 0x2FE620 - 0x2FE64E
; =========================================================

2FE620:  PUSH            {R4,R6,R7,LR}
2FE622:  ADD             R7, SP, #8
2FE624:  MOVS            R4, #0
2FE626:  MOVS            R0, #dword_A0; this
2FE628:  MOVT            R4, #0x447A
2FE62C:  MOV             R1, R4; unsigned __int16
2FE62E:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE632:  MOVS            R0, #(off_DC+3); this
2FE634:  MOV             R1, R4; unsigned __int16
2FE636:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE63A:  MOVS            R0, #(dword_E4+1); this
2FE63C:  MOV             R1, R4; unsigned __int16
2FE63E:  BLX             j__ZN6CStats12SetStatValueEtf; CStats::SetStatValue(ushort,float)
2FE642:  MOVS            R0, #(dword_E4+2); this
2FE644:  MOV             R1, R4; unsigned __int16
2FE646:  POP.W           {R4,R6,R7,LR}
2FE64A:  B.W             sub_195D60
