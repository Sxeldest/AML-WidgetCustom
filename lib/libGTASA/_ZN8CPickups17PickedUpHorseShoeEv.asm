; =========================================================
; Game Engine Function: _ZN8CPickups17PickedUpHorseShoeEv
; Address            : 0x321540 - 0x321612
; =========================================================

321540:  PUSH            {R7,LR}
321542:  MOV             R7, SP
321544:  VPUSH           {D8}; __int16
321548:  LDR             R0, =(AudioEngine_ptr - 0x321556)
32154A:  MOVS            R1, #0xD; int
32154C:  MOVS            R2, #0; float
32154E:  MOV.W           R3, #0x3F800000; float
321552:  ADD             R0, PC; AudioEngine_ptr
321554:  LDR             R0, [R0]; AudioEngine ; this
321556:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
32155A:  MOVS            R0, #(dword_F0+1); this
32155C:  MOV.W           R1, #0x3F800000; unsigned __int16
321560:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
321564:  MOVS            R0, #(dword_F0+2); this
321566:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
32156A:  VMOV            S2, R0
32156E:  VLDR            S0, =1000.0
321572:  MOVS            R0, #(dword_E8+1); this
321574:  VDIV.F32        S0, S0, S2
321578:  VMOV            R1, S0; unsigned __int16
32157C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
321580:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x321586)
321582:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
321584:  LDR             R0, [R0]; CWorld::Players ...
321586:  LDR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
32158A:  ADDS            R1, #0x64 ; 'd'; unsigned __int16
32158C:  STR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
321590:  MOVS            R0, #(dword_F0+1); this
321592:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
321596:  VMOV            S16, R0
32159A:  MOVS            R0, #(dword_F0+2); this
32159C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3215A0:  VMOV            S0, R0
3215A4:  VCMP.F32        S16, S0
3215A8:  VMRS            APSR_nzcv, FPSCR
3215AC:  BNE             loc_3215DC
3215AE:  ADR             R0, aHoAll; "HO_ALL"
3215B0:  MOV.W           R1, #0xFFFFFFFF; char *
3215B4:  MOVW            R2, #0x1388; __int16
3215B8:  MOV.W           R3, #0xFFFFFFFF; unsigned __int16
3215BC:  BLX             j__ZN8CGarages14TriggerMessageEPcsts; CGarages::TriggerMessage(char *,short,ushort,short)
3215C0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3215C6)
3215C2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3215C4:  LDR             R0, [R0]; CWorld::Players ...
3215C6:  LDR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
3215CA:  ADD.W           R1, R1, #0x18000
3215CE:  ADD.W           R1, R1, #0x6A0
3215D2:  STR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
3215D6:  VPOP            {D8}
3215DA:  POP             {R7,PC}
3215DC:  MOVS            R0, #(dword_F0+1); this
3215DE:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3215E2:  VMOV            S16, R0
3215E6:  MOVS            R0, #(dword_F0+2); this
3215E8:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3215EC:  VMOV            S0, R0
3215F0:  ADR             R0, aHoOne; "HO_ONE"
3215F2:  VCVT.S32.F32    S2, S16
3215F6:  MOVW            R2, #0x1388; __int16
3215FA:  VCVT.S32.F32    S0, S0
3215FE:  VMOV            R1, S2; char *
321602:  VMOV            R3, S0; unsigned __int16
321606:  VPOP            {D8}
32160A:  POP.W           {R7,LR}
32160E:  B.W             sub_19BFAC
