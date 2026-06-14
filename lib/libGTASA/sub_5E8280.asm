; =========================================================
; Game Engine Function: sub_5E8280
; Address            : 0x5E8280 - 0x5E8320
; =========================================================

5E8280:  CBZ             R0, loc_5E8288
5E8282:  CMP             R1, #0x7F
5E8284:  BHI             loc_5E828E
5E8286:  STRB            R1, [R0]
5E8288:  MOVS            R2, #1
5E828A:  MOV             R0, R2
5E828C:  BX              LR
5E828E:  MOVS            R2, #0
5E8290:  CMP.W           R2, R1,LSR#11
5E8294:  BNE             loc_5E82AA
5E8296:  MOVS            R2, #2
5E8298:  MOV             R3, R1
5E829A:  BFI.W           R3, R2, #6, #0x1A
5E829E:  STRB            R3, [R0,#1]
5E82A0:  MOVS            R3, #0xC0
5E82A2:  ORR.W           R1, R3, R1,LSR#6
5E82A6:  STRB            R1, [R0]
5E82A8:  B               loc_5E828A
5E82AA:  CMP.W           R1, #0xD800
5E82AE:  BCC             loc_5E82EE
5E82B0:  MOVW            R2, #0x1FFF
5E82B4:  BIC.W           R2, R1, R2
5E82B8:  CMP.W           R2, #0xE000
5E82BC:  BEQ             loc_5E82EE
5E82BE:  SUB.W           R2, R1, #0x10000
5E82C2:  MOVS            R3, #0
5E82C4:  CMP.W           R3, R2,LSR#20
5E82C8:  BNE             loc_5E830A
5E82CA:  LSRS            R2, R1, #0xC
5E82CC:  MOVS            R3, #2
5E82CE:  BFI.W           R2, R3, #6, #0x1A
5E82D2:  STRB            R2, [R0,#1]
5E82D4:  MOVS            R2, #0xF0
5E82D6:  ORR.W           R2, R2, R1,LSR#18
5E82DA:  STRB            R2, [R0]
5E82DC:  LSRS            R2, R1, #6
5E82DE:  BFI.W           R1, R3, #6, #0x1A
5E82E2:  BFI.W           R2, R3, #6, #0x1A
5E82E6:  STRB            R2, [R0,#2]
5E82E8:  STRB            R1, [R0,#3]
5E82EA:  MOVS            R2, #4
5E82EC:  B               loc_5E828A
5E82EE:  LSRS            R2, R1, #6
5E82F0:  MOVS            R3, #2
5E82F2:  BFI.W           R2, R3, #6, #0x1A
5E82F6:  STRB            R2, [R0,#1]
5E82F8:  MOVS            R2, #0xE0
5E82FA:  ORR.W           R2, R2, R1,LSR#12
5E82FE:  STRB            R2, [R0]
5E8300:  BFI.W           R1, R3, #6, #0x1A
5E8304:  STRB            R1, [R0,#2]
5E8306:  MOVS            R2, #3
5E8308:  B               loc_5E828A
5E830A:  PUSH            {R7,LR}
5E830C:  MOV             R7, SP
5E830E:  BLX.W           __errno
5E8312:  MOVS            R1, #0x54 ; 'T'
5E8314:  MOV.W           R2, #0xFFFFFFFF
5E8318:  STR             R1, [R0]
5E831A:  POP.W           {R7,LR}
5E831E:  B               loc_5E828A
