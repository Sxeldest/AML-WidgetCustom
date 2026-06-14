; =========================================================
; Game Engine Function: sub_12B778
; Address            : 0x12B778 - 0x12B7E6
; =========================================================

12B778:  PUSH            {R4,R6,R7,LR}
12B77A:  ADD             R7, SP, #8
12B77C:  LDR             R0, =(off_234A8C - 0x12B784)
12B77E:  MOVS            R1, #0
12B780:  ADD             R0, PC; off_234A8C
12B782:  LDR             R4, [R0]; off_263758
12B784:  MOVS            R0, #6
12B786:  LDR             R2, [R4]
12B788:  BLX             R2
12B78A:  LDR             R2, [R4]
12B78C:  MOVS            R0, #8
12B78E:  MOVS            R1, #0
12B790:  BLX             R2
12B792:  LDR             R2, [R4]
12B794:  MOVS            R0, #0xC
12B796:  MOVS            R1, #1
12B798:  BLX             R2
12B79A:  LDR             R2, [R4]
12B79C:  MOVS            R0, #0xA
12B79E:  MOVS            R1, #5
12B7A0:  BLX             R2
12B7A2:  LDR             R2, [R4]
12B7A4:  MOVS            R0, #0xB
12B7A6:  MOVS            R1, #6
12B7A8:  BLX             R2
12B7AA:  LDR             R2, [R4]
12B7AC:  MOVS            R0, #0xE
12B7AE:  MOVS            R1, #0
12B7B0:  BLX             R2
12B7B2:  LDR             R2, [R4]
12B7B4:  MOVS            R0, #0x14
12B7B6:  MOVS            R1, #1
12B7B8:  BLX             R2
12B7BA:  LDR             R2, [R4]
12B7BC:  MOVS            R0, #0xD
12B7BE:  MOVS            R1, #0
12B7C0:  BLX             R2
12B7C2:  LDR             R2, [R4]
12B7C4:  MOVS            R0, #0x1D
12B7C6:  MOVS            R1, #5
12B7C8:  BLX             R2
12B7CA:  LDR             R2, [R4]
12B7CC:  MOVS            R0, #0x1E
12B7CE:  MOVS            R1, #2
12B7D0:  BLX             R2
12B7D2:  LDR             R2, [R4]
12B7D4:  MOVS            R0, #9
12B7D6:  MOVS            R1, #2
12B7D8:  BLX             R2
12B7DA:  LDR             R2, [R4]
12B7DC:  MOVS            R0, #2
12B7DE:  MOVS            R1, #3
12B7E0:  POP.W           {R4,R6,R7,LR}
12B7E4:  BX              R2
