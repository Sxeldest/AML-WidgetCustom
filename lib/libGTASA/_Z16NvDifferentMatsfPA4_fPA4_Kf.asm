; =========================================================
; Game Engine Function: _Z16NvDifferentMatsfPA4_fPA4_Kf
; Address            : 0x2771C8 - 0x2771E8
; =========================================================

2771C8:  ADD.W           R2, R1, #0x3C ; '<'
2771CC:  MOVS            R3, #0
2771CE:  CMP             R2, R0
2771D0:  MOV.W           R2, #0
2771D4:  ADD.W           R0, R0, #0x3C ; '<'
2771D8:  IT CC
2771DA:  MOVCC           R2, #1
2771DC:  CMP             R0, R1
2771DE:  IT CC
2771E0:  MOVCC           R3, #1
2771E2:  ORR.W           R0, R3, R2
2771E6:  BX              LR
