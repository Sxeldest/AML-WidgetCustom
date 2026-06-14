; =========================================================
; Game Engine Function: _Z7d3dToRQjh
; Address            : 0x1B3CBC - 0x1B3D10
; =========================================================

1B3CBC:  MOV             R2, #0x33545843
1B3CC4:  CMP             R0, R2
1B3CC6:  BGT             loc_1B3CD4
1B3CC8:  SUB.W           R2, R0, #0x15
1B3CCC:  CMP             R2, #2
1B3CCE:  BCS             loc_1B3CF8
1B3CD0:  MOVS            R0, #0
1B3CD2:  BX              LR
1B3CD4:  MOV             R1, #0x33545844
1B3CDC:  CMP             R0, R1
1B3CDE:  ITT EQ
1B3CE0:  MOVEQ           R0, #9
1B3CE2:  BXEQ            LR
1B3CE4:  MOV             R1, #0x35545844
1B3CEC:  CMP             R0, R1
1B3CEE:  ITT EQ
1B3CF0:  MOVEQ           R0, #0xA
1B3CF2:  BXEQ            LR
1B3CF4:  MOVS            R0, #0
1B3CF6:  BX              LR
1B3CF8:  MOV             R2, #0x31545844
1B3D00:  CMP             R0, R2
1B3D02:  ITTT EQ
1B3D04:  ANDEQ.W         R0, R1, #1
1B3D08:  ADDEQ           R0, #7
1B3D0A:  BXEQ            LR
1B3D0C:  MOVS            R0, #0
1B3D0E:  BX              LR
