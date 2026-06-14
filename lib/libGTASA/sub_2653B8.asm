; =========================================================
; Game Engine Function: sub_2653B8
; Address            : 0x2653B8 - 0x2654BA
; =========================================================

2653B8:  PUSH            {R4-R7,LR}
2653BA:  ADD             R7, SP, #0xC
2653BC:  PUSH.W          {R8-R11}
2653C0:  SUB             SP, SP, #4
2653C2:  MOV             R4, R0
2653C4:  ADD.W           R9, R4, #0xBC
2653C8:  MOVS            R1, #0x24 ; '$'
2653CA:  MOVS            R2, #0xFF
2653CC:  MOV             R0, R9
2653CE:  BLX             j___aeabi_memset8_0
2653D2:  LDR             R6, [R4,#0x1C]
2653D4:  MOV.W           R11, #3
2653D8:  MOV.W           R12, #5
2653DC:  MOV.W           LR, #4
2653E0:  SUB.W           R1, R6, #0x1500; switch 7 cases
2653E4:  MOVS            R0, #1
2653E6:  MOV.W           R8, #0
2653EA:  MOVS            R2, #2
2653EC:  CMP             R1, #6
2653EE:  BHI             def_2653F8; jumptable 002653F8 default case
2653F0:  MOV.W           R10, #1
2653F4:  MOVS            R6, #0
2653F6:  MOVS            R3, #1
2653F8:  TBB.W           [PC,R1]; switch jump
2653FC:  DCB 0x56; jump table for switch statement
2653FD:  DCB 0x50
2653FE:  DCB 0x5A
2653FF:  DCB 0x48
265400:  DCB 4
265401:  DCB 0x20
265402:  DCB 0x32
265403:  ALIGN 2
265404:  MOV.W           R12, #5; jumptable 002653F8 case 5380
265408:  MOV.W           LR, #4
26540C:  MOVS            R0, #3
26540E:  MOV.W           R8, #2
265412:  MOVS            R1, #1
265414:  MOVS            R3, #0
265416:  B               loc_265430
265418:  CMP.W           R6, #0x80000000; jumptable 002653F8 default case
26541C:  BNE             loc_2654B0; jumptable 002653F8 case 5378
26541E:  MOV.W           R12, #8
265422:  MOV.W           LR, #7
265426:  MOVS            R3, #0
265428:  MOVS            R1, #1
26542A:  MOV.W           R8, #2
26542E:  MOVS            R0, #3
265430:  MOV.W           R10, #3
265434:  MOVS            R2, #4
265436:  MOV.W           R11, #5
26543A:  B               loc_265484
26543C:  MOVS            R0, #0; jumptable 002653F8 case 5381
26543E:  MOV.W           R12, #8
265442:  STR.W           R0, [R9]
265446:  MOVS            R2, #5
265448:  MOV.W           LR, #7
26544C:  MOV.W           R10, #4
265450:  MOVS            R0, #6
265452:  MOV.W           R8, #3
265456:  MOVS            R1, #2
265458:  MOVS            R3, #1
26545A:  MOV.W           R11, #6
26545E:  B               loc_265484
265460:  MOVS            R0, #1; jumptable 002653F8 case 5382
265462:  MOVS            R1, #0
265464:  STRD.W          R1, R0, [R4,#0xBC]
265468:  MOV.W           R12, #8
26546C:  MOVS            R2, #6
26546E:  MOV.W           LR, #7
265472:  MOVS            R0, #5
265474:  MOV.W           R8, #4
265478:  MOVS            R1, #3
26547A:  MOVS            R3, #2
26547C:  MOV.W           R10, #5
265480:  MOV.W           R11, #7
265484:  STR.W           R3, [R9,R3,LSL#2]
265488:  STR.W           R1, [R9,R1,LSL#2]
26548C:  STR.W           R8, [R9,R8,LSL#2]; jumptable 002653F8 case 5379
265490:  MOV             R8, LR
265492:  MOV             R6, R2
265494:  STR.W           R10, [R9,R0,LSL#2]
265498:  MOV             R0, R12
26549A:  MOV             R3, R11
26549C:  ADD.W           R1, R4, R8,LSL#2; jumptable 002653F8 case 5377
2654A0:  MOV             R2, R0
2654A2:  MOV             R8, R3
2654A4:  STR.W           R6, [R1,#0xBC]
2654A8:  ADD.W           R0, R4, R2,LSL#2; jumptable 002653F8 case 5376
2654AC:  STR.W           R8, [R0,#0xBC]
2654B0:  MOVS            R0, #1; jumptable 002653F8 case 5378
2654B2:  ADD             SP, SP, #4
2654B4:  POP.W           {R8-R11}
2654B8:  POP             {R4-R7,PC}
