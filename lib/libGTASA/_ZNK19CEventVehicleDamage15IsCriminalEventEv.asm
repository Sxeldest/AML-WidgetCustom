; =========================================================
; Game Engine Function: _ZNK19CEventVehicleDamage15IsCriminalEventEv
; Address            : 0x377114 - 0x377156
; =========================================================

377114:  PUSH            {R4,R6,R7,LR}
377116:  ADD             R7, SP, #8
377118:  MOV             R4, R0
37711A:  LDR             R0, [R4,#0x14]; this
37711C:  CBZ             R0, loc_37714E
37711E:  LDRB.W          R1, [R0,#0x3A]
377122:  AND.W           R2, R1, #7
377126:  CMP             R2, #3
377128:  BNE             loc_377136
37712A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37712E:  CBNZ            R0, loc_377152
377130:  LDR             R0, [R4,#0x14]
377132:  LDRB.W          R1, [R0,#0x3A]
377136:  AND.W           R1, R1, #7
37713A:  CMP             R1, #2
37713C:  BNE             loc_37714E
37713E:  LDR.W           R4, [R0,#0x464]
377142:  MOV.W           R0, #0xFFFFFFFF; int
377146:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
37714A:  CMP             R4, R0
37714C:  BEQ             loc_377152
37714E:  MOVS            R0, #0
377150:  POP             {R4,R6,R7,PC}
377152:  MOVS            R0, #1
377154:  POP             {R4,R6,R7,PC}
