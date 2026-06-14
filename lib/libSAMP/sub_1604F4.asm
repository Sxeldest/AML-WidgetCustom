; =========================================================
; Game Engine Function: sub_1604F4
; Address            : 0x1604F4 - 0x160562
; =========================================================

1604F4:  PUSH            {R4-R7,LR}
1604F6:  ADD             R7, SP, #0xC
1604F8:  PUSH.W          {R8}
1604FC:  SUB             SP, SP, #0x18
1604FE:  MOV             R5, R1
160500:  MOVS            R1, #0
160502:  MOVS            R2, #0xF
160504:  MOVS            R3, #0
160506:  ADD.W           R8, SP, #0x28+var_20
16050A:  STR.W           R8, [SP,#0x28+var_28]
16050E:  MOVS            R4, #0
160510:  BLX             sub_221D60
160514:  LDR             R0, [SP,#0x28+var_20]
160516:  BIC.W           R6, R0, #1
16051A:  CBZ             R6, loc_160558
16051C:  LDRD.W          R0, R1, [R5]
160520:  CMP             R0, R1
160522:  BNE             loc_160528
160524:  MOVS            R4, #5
160526:  B               loc_160558
160528:  VMOV.I32        Q8, #0
16052C:  ADDS            R0, #1
16052E:  STR             R0, [R5]
160530:  MOV             R0, R6
160532:  MOV             R1, R8
160534:  VST1.64         {D16-D17}, [R8]
160538:  BLX             dladdr
16053C:  LDR             R0, =(dword_381A54 - 0x160544)
16053E:  LDR             R1, [R5,#8]
160540:  ADD             R0, PC; dword_381A54
160542:  SUBS            R1, R6, R1
160544:  LDR             R0, [R0]
160546:  CLZ.W           R1, R1
16054A:  LSRS            R3, R1, #5
16054C:  MOV             R1, R6
16054E:  LDR             R2, [R0]
160550:  LDR             R5, [R2,#0xC]
160552:  MOV             R2, R8
160554:  BLX             R5
160556:  MOVS            R4, #0
160558:  MOV             R0, R4
16055A:  ADD             SP, SP, #0x18
16055C:  POP.W           {R8}
160560:  POP             {R4-R7,PC}
