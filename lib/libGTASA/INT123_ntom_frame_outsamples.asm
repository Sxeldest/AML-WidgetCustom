; =========================================================
; Game Engine Function: INT123_ntom_frame_outsamples
; Address            : 0x2265B4 - 0x226608
; =========================================================

2265B4:  MOVW            R1, #0x92D8
2265B8:  LDR             R2, [R0,R1]
2265BA:  MOVW            R1, #0x9188
2265BE:  LDR             R1, [R0,R1]
2265C0:  CMP             R2, #1
2265C2:  BEQ             loc_2265CE
2265C4:  CMP             R2, #2
2265C6:  BNE             loc_2265D4
2265C8:  MOV.W           R2, #0x480
2265CC:  B               loc_2265F4
2265CE:  MOV.W           R2, #0x180
2265D2:  B               loc_2265F4
2265D4:  MOVW            R2, #0x92C8
2265D8:  LDR             R2, [R0,R2]
2265DA:  CBZ             R2, loc_2265E2
2265DC:  MOV.W           R2, #0x240
2265E0:  B               loc_2265F4
2265E2:  MOVW            R2, #0x92CC
2265E6:  LDR             R3, [R0,R2]
2265E8:  MOV.W           R2, #0x480
2265EC:  CMP             R3, #0
2265EE:  IT NE
2265F0:  MOVNE.W         R2, #0x240
2265F4:  MOVW            R3, #0x9190
2265F8:  LDR             R0, [R0,R3]
2265FA:  MLA.W           R0, R0, R2, R1
2265FE:  ASRS            R1, R0, #0x1F
226600:  ADD.W           R0, R0, R1,LSR#17
226604:  ASRS            R0, R0, #0xF
226606:  BX              LR
