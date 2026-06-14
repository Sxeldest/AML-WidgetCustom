; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop20LookForStolenCopCarsEP4CPed
; Address            : 0x523E20 - 0x523E70
; =========================================================

523E20:  PUSH            {R7,LR}
523E22:  MOV             R7, SP
523E24:  MOV.W           R0, #0xFFFFFFFF; int
523E28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523E2C:  LDR.W           R0, [R0,#0x444]
523E30:  LDR             R0, [R0]
523E32:  LDR             R0, [R0,#0x2C]
523E34:  CBNZ            R0, locret_523E5C
523E36:  MOV.W           R0, #0xFFFFFFFF; int
523E3A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523E3E:  LDR.W           R0, [R0,#0x590]
523E42:  CMP             R0, #0
523E44:  IT EQ
523E46:  POPEQ           {R7,PC}
523E48:  MOV.W           R0, #0xFFFFFFFF; int
523E4C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523E50:  LDR.W           R0, [R0,#0x590]
523E54:  LDRB.W          R0, [R0,#0x42C]
523E58:  LSLS            R0, R0, #0x1F
523E5A:  BNE             loc_523E5E
523E5C:  POP             {R7,PC}
523E5E:  MOV.W           R0, #0xFFFFFFFF; int
523E62:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523E66:  MOVS            R1, #1; int
523E68:  POP.W           {R7,LR}
523E6C:  B.W             sub_190E38
