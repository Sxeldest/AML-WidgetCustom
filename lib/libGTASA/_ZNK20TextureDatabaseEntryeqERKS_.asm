; =========================================================
; Game Engine Function: _ZNK20TextureDatabaseEntryeqERKS_
; Address            : 0x1E7478 - 0x1E74CE
; =========================================================

1E7478:  PUSH            {R4,R5,R7,LR}
1E747A:  ADD             R7, SP, #8
1E747C:  MOV             R5, R1
1E747E:  MOV             R4, R0
1E7480:  LDR             R1, [R5]; char *
1E7482:  LDR             R0, [R4]; char *
1E7484:  BLX             strcmp
1E7488:  CBNZ            R0, loc_1E74C6
1E748A:  LDRH            R0, [R4,#8]
1E748C:  LDRH            R1, [R5,#8]
1E748E:  EORS            R0, R1
1E7490:  LSLS            R0, R0, #0x14
1E7492:  BNE             loc_1E74C6
1E7494:  LDRH            R0, [R4,#0xA]
1E7496:  LDRH            R1, [R5,#0xA]
1E7498:  CMP             R0, R1
1E749A:  BNE             loc_1E74C6
1E749C:  LDRH.W          R1, [R5,#0xF]
1E74A0:  LDRH.W          R2, [R4,#0xF]
1E74A4:  CMP             R2, R1
1E74A6:  BNE             loc_1E74C6
1E74A8:  LDRH.W          R1, [R5,#0x11]
1E74AC:  LDRH.W          R2, [R4,#0x11]
1E74B0:  CMP             R2, R1
1E74B2:  BNE             loc_1E74C6
1E74B4:  LSLS            R0, R0, #0x1D
1E74B6:  BPL             loc_1E74CA
1E74B8:  LDR.W           R1, [R5,#0x13]; char *
1E74BC:  LDR.W           R0, [R4,#0x13]; char *
1E74C0:  BLX             strcmp
1E74C4:  CBZ             R0, loc_1E74CA
1E74C6:  MOVS            R0, #0
1E74C8:  POP             {R4,R5,R7,PC}
1E74CA:  MOVS            R0, #1
1E74CC:  POP             {R4,R5,R7,PC}
