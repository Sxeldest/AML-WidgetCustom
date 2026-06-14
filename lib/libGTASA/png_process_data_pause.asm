; =========================================================
; Game Engine Function: png_process_data_pause
; Address            : 0x1F42C6 - 0x1F42F4
; =========================================================

1F42C6:  CBZ             R0, loc_1F42D6
1F42C8:  CBZ             R1, loc_1F42DA
1F42CA:  PUSH            {R7,LR}
1F42CC:  MOV             R7, SP
1F42CE:  BLX             j_png_push_save_buffer
1F42D2:  POP.W           {R7,LR}
1F42D6:  MOVS            R0, #0
1F42D8:  BX              LR
1F42DA:  LDR.W           R1, [R0,#0x2A8]
1F42DE:  MOVS            R3, #0
1F42E0:  LDR.W           R2, [R0,#0x2B0]
1F42E4:  STR.W           R3, [R0,#0x2B0]
1F42E8:  CMP             R2, R1
1F42EA:  ITT HI
1F42EC:  SUBHI           R0, R2, R1
1F42EE:  BXHI            LR
1F42F0:  MOVS            R0, #0
1F42F2:  BX              LR
