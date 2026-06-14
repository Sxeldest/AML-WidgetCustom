; =========================================================
; Game Engine Function: _ZN4llmo3mem3lib6symbolEPKcS3_
; Address            : 0x1E2CC0 - 0x1E2CDA
; =========================================================

1E2CC0:  PUSH            {R4,R6,R7,LR}
1E2CC2:  ADD             R7, SP, #8
1E2CC4:  MOV             R4, R1
1E2CC6:  MOVS            R1, #4; mode
1E2CC8:  BLX             dlopen
1E2CCC:  CBZ             R0, loc_1E2CD6
1E2CCE:  MOV             R1, R4; name
1E2CD0:  BLX             dlsym
1E2CD4:  POP             {R4,R6,R7,PC}
1E2CD6:  MOVS            R0, #0
1E2CD8:  POP             {R4,R6,R7,PC}
