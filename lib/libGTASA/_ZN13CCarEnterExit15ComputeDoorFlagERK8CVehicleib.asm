; =========================================================
; Game Engine Function: _ZN13CCarEnterExit15ComputeDoorFlagERK8CVehicleib
; Address            : 0x508518 - 0x508558
; =========================================================

508518:  CMP             R2, #1
50851A:  BNE             loc_508530
50851C:  LDR.W           R2, [R0,#0x5A0]
508520:  CMP             R2, #9
508522:  BEQ             loc_508542
508524:  LDR.W           R0, [R0,#0x388]
508528:  LDRB.W          R0, [R0,#0xCD]
50852C:  LSLS            R0, R0, #0x1E
50852E:  BMI             loc_508542
508530:  SUB.W           R0, R1, #8
508534:  CMP             R0, #0xB
508536:  ITTT CC
508538:  ADRCC           R1, dword_508558
50853A:  LDRCC.W         R0, [R1,R0,LSL#2]
50853E:  BXCC            LR
508540:  B               loc_508554
508542:  SUB.W           R0, R1, #8
508546:  CMP             R0, #0xB
508548:  BCS             loc_508554
50854A:  LDR             R1, =(unk_61E700 - 0x508550)
50854C:  ADD             R1, PC; unk_61E700
50854E:  LDR.W           R0, [R1,R0,LSL#2]
508552:  BX              LR
508554:  MOVS            R0, #0
508556:  BX              LR
