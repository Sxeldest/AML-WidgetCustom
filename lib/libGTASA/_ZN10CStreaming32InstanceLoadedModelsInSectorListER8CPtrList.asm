; =========================================================
; Game Engine Function: _ZN10CStreaming32InstanceLoadedModelsInSectorListER8CPtrList
; Address            : 0x2D2DB4 - 0x2D2DEE
; =========================================================

2D2DB4:  PUSH            {R4,R5,R7,LR}
2D2DB6:  ADD             R7, SP, #8
2D2DB8:  LDR             R4, [R0]
2D2DBA:  CMP             R4, #0
2D2DBC:  IT EQ
2D2DBE:  POPEQ           {R4,R5,R7,PC}
2D2DC0:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2D2DC6)
2D2DC2:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2D2DC4:  LDR             R5, [R0]; CGame::currArea ...
2D2DC6:  LDRD.W          R0, R4, [R4]
2D2DCA:  LDRB.W          R1, [R0,#0x33]
2D2DCE:  CMP             R1, #0xD
2D2DD0:  ITT NE
2D2DD2:  LDRNE           R2, [R5]; CGame::currArea
2D2DD4:  CMPNE           R2, R1
2D2DD6:  BNE             loc_2D2DDC
2D2DD8:  LDR             R1, [R0,#0x18]
2D2DDA:  CBZ             R1, loc_2D2DE2
2D2DDC:  CMP             R4, #0
2D2DDE:  BNE             loc_2D2DC6
2D2DE0:  B               locret_2D2DEC
2D2DE2:  LDR             R1, [R0]
2D2DE4:  LDR             R1, [R1,#0x20]
2D2DE6:  BLX             R1
2D2DE8:  CMP             R4, #0
2D2DEA:  BNE             loc_2D2DC6
2D2DEC:  POP             {R4,R5,R7,PC}
