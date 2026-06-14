; =========================================================
; Game Engine Function: sub_1FE3D0
; Address            : 0x1FE3D0 - 0x1FE3E6
; =========================================================

1FE3D0:  LDR             R2, [R2]
1FE3D2:  CMP             R0, R1
1FE3D4:  BEQ             loc_1FE3E2
1FE3D6:  LDR             R3, [R0]
1FE3D8:  CMP             R3, R2
1FE3DA:  BEQ             loc_1FE3E0
1FE3DC:  ADDS            R0, #4
1FE3DE:  B               loc_1FE3D2
1FE3E0:  MOV             R1, R0
1FE3E2:  MOV             R0, R1
1FE3E4:  BX              LR
