; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText10ClearQueueEb
; Address            : 0x2B8554 - 0x2B8724
; =========================================================

2B8554:  PUSH            {R4-R7,LR}
2B8556:  ADD             R7, SP, #0xC
2B8558:  PUSH.W          {R8}
2B855C:  LDR             R6, =(byte_61CD7E - 0x2B856A)
2B855E:  MOV             R8, R1
2B8560:  MOV             R4, R0
2B8562:  ADD.W           R1, R4, #0x3EC; unsigned __int16 *
2B8566:  ADD             R6, PC; byte_61CD7E
2B8568:  MOV             R0, R6; char *
2B856A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B856E:  ADD.W           R1, R4, #0x720; unsigned __int16 *
2B8572:  MOVS            R5, #0
2B8574:  MOV             R0, R6; char *
2B8576:  STRH.W          R5, [R4,#0x710]
2B857A:  STR.W           R5, [R4,#0x70C]
2B857E:  STR.W           R5, [R4,#0x714]
2B8582:  STR.W           R5, [R4,#0x718]
2B8586:  STR.W           R5, [R4,#0x71C]
2B858A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B858E:  ADDW            R1, R4, #0xA54; unsigned __int16 *
2B8592:  MOV             R0, R6; char *
2B8594:  STRH.W          R5, [R4,#0xA44]
2B8598:  STR.W           R5, [R4,#0xA40]
2B859C:  STR.W           R5, [R4,#0xA48]
2B85A0:  STR.W           R5, [R4,#0xA4C]
2B85A4:  STR.W           R5, [R4,#0xA50]
2B85A8:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B85AC:  ADDW            R1, R4, #0xD88; unsigned __int16 *
2B85B0:  MOV             R0, R6; char *
2B85B2:  STRH.W          R5, [R4,#0xD78]
2B85B6:  STR.W           R5, [R4,#0xD74]
2B85BA:  STR.W           R5, [R4,#0xD7C]
2B85BE:  STR.W           R5, [R4,#0xD80]
2B85C2:  STR.W           R5, [R4,#0xD84]
2B85C6:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B85CA:  MOVW            R0, #0x10AC
2B85CE:  STRH            R5, [R4,R0]
2B85D0:  MOVW            R0, #0x10A8
2B85D4:  STR             R5, [R4,R0]
2B85D6:  MOVW            R0, #0x10B0
2B85DA:  STR             R5, [R4,R0]
2B85DC:  MOVW            R0, #0x10B4
2B85E0:  STR             R5, [R4,R0]
2B85E2:  MOVW            R0, #0x10B8
2B85E6:  STR             R5, [R4,R0]
2B85E8:  MOVW            R0, #0x10BC
2B85EC:  ADDS            R1, R4, R0; unsigned __int16 *
2B85EE:  MOV             R0, R6; char *
2B85F0:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B85F4:  MOV.W           R0, #0x13E0
2B85F8:  STRH            R5, [R4,R0]
2B85FA:  MOVW            R0, #0x13DC
2B85FE:  STR             R5, [R4,R0]
2B8600:  MOVW            R0, #0x13E4
2B8604:  STR             R5, [R4,R0]
2B8606:  MOVW            R0, #0x13E8
2B860A:  STR             R5, [R4,R0]
2B860C:  MOVW            R0, #0x13EC
2B8610:  STR             R5, [R4,R0]
2B8612:  MOVW            R0, #0x13F0
2B8616:  ADDS            R1, R4, R0; unsigned __int16 *
2B8618:  MOV             R0, R6; char *
2B861A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B861E:  MOVW            R0, #0x1714
2B8622:  STRH            R5, [R4,R0]
2B8624:  MOVW            R0, #0x1710
2B8628:  STR             R5, [R4,R0]
2B862A:  MOVW            R0, #0x1718
2B862E:  STR             R5, [R4,R0]
2B8630:  MOVW            R0, #0x171C
2B8634:  STR             R5, [R4,R0]
2B8636:  MOV.W           R0, #0x1720
2B863A:  STR             R5, [R4,R0]
2B863C:  MOVW            R0, #0x1724
2B8640:  ADDS            R1, R4, R0; unsigned __int16 *
2B8642:  MOV             R0, R6; char *
2B8644:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B8648:  MOVW            R0, #0x1A48
2B864C:  STRH            R5, [R4,R0]
2B864E:  MOVW            R0, #0x1A44
2B8652:  STR             R5, [R4,R0]
2B8654:  MOVW            R0, #0x1A4C
2B8658:  STR             R5, [R4,R0]
2B865A:  MOVW            R0, #0x1A50
2B865E:  STR             R5, [R4,R0]
2B8660:  MOVW            R0, #0x1A54
2B8664:  STR             R5, [R4,R0]
2B8666:  MOVW            R0, #0x1A58
2B866A:  ADDS            R1, R4, R0; unsigned __int16 *
2B866C:  MOV             R0, R6; char *
2B866E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B8672:  MOVW            R0, #0x1D7C
2B8676:  STRH            R5, [R4,R0]
2B8678:  MOVW            R0, #0x1D78
2B867C:  STR             R5, [R4,R0]
2B867E:  MOV.W           R0, #0x1D80
2B8682:  STR             R5, [R4,R0]
2B8684:  MOVW            R0, #0x1D84
2B8688:  STR             R5, [R4,R0]
2B868A:  MOVW            R0, #0x1D88
2B868E:  STR             R5, [R4,R0]
2B8690:  MOVW            R0, #0x1D8C
2B8694:  ADDS            R1, R4, R0; unsigned __int16 *
2B8696:  MOV             R0, R6; char *
2B8698:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B869C:  MOVW            R0, #0x20B0
2B86A0:  ADD.W           R6, R4, #0xB8
2B86A4:  STRH            R5, [R4,R0]
2B86A6:  MOVW            R0, #0x20AC
2B86AA:  CMP.W           R8, #0
2B86AE:  STR             R5, [R4,R0]
2B86B0:  MOVW            R0, #0x20B4
2B86B4:  STR             R5, [R4,R0]
2B86B6:  MOVW            R0, #0x20B8
2B86BA:  STR             R5, [R4,R0]
2B86BC:  MOVW            R0, #0x20BC
2B86C0:  STR             R5, [R4,R0]
2B86C2:  BNE             loc_2B86F2
2B86C4:  MOV             R0, R6; this
2B86C6:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B86CA:  CBZ             R0, loc_2B86F2
2B86CC:  LDR.W           R0, [R4,#0x9C]
2B86D0:  CMP             R0, #2
2B86D2:  BNE             loc_2B8716
2B86D4:  VMOV.F32        S0, #-0.125
2B86D8:  VLDR            S4, [R4,#0x3D8]
2B86DC:  VLDR            S2, [R4,#0x98]
2B86E0:  VADD.F32        S0, S4, S0
2B86E4:  VMAX.F32        D0, D1, D0
2B86E8:  VSTR            S0, [R4,#0x98]
2B86EC:  POP.W           {R8}
2B86F0:  POP             {R4-R7,PC}
2B86F2:  LDR             R0, =(byte_61CD7E - 0x2B86FA)
2B86F4:  MOV             R1, R6; unsigned __int16 *
2B86F6:  ADD             R0, PC; byte_61CD7E ; char *
2B86F8:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B86FC:  STRH.W          R5, [R4,#0x3DC]
2B8700:  STR.W           R5, [R4,#0x3D8]
2B8704:  STRD.W          R5, R5, [R4,#0x3E0]
2B8708:  STR.W           R5, [R4,#0x3E8]
2B870C:  STRD.W          R5, R5, [R4,#0x98]
2B8710:  POP.W           {R8}
2B8714:  POP             {R4-R7,PC}
2B8716:  MOV.W           R0, #0x3E000000
2B871A:  STR.W           R0, [R4,#0x3D8]
2B871E:  POP.W           {R8}
2B8722:  POP             {R4-R7,PC}
