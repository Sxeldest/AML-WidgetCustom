; =========================================================
; Game Engine Function: _ZN8CPickups14PickedUpOysterEv
; Address            : 0x32146C - 0x321522
; =========================================================

32146C:  PUSH            {R7,LR}
32146E:  MOV             R7, SP
321470:  VPUSH           {D8}; __int16
321474:  LDR             R0, =(AudioEngine_ptr - 0x321482)
321476:  MOVS            R1, #0xD; int
321478:  MOVS            R2, #0; float
32147A:  MOV.W           R3, #0x3F800000; float
32147E:  ADD             R0, PC; AudioEngine_ptr
321480:  LDR             R0, [R0]; AudioEngine ; this
321482:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
321486:  MOVS            R0, #(dword_F0+3); this
321488:  MOV.W           R1, #0x3F800000; unsigned __int16
32148C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
321490:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x321496)
321492:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
321494:  LDR             R0, [R0]; CWorld::Players ...
321496:  LDR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
32149A:  ADDS            R1, #0x64 ; 'd'; unsigned __int16
32149C:  STR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
3214A0:  MOVS            R0, #(dword_F0+3); this
3214A2:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3214A6:  VMOV            S16, R0
3214AA:  MOVS            R0, #elf_hash_nbucket; this
3214AC:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3214B0:  VMOV            S0, R0
3214B4:  VCMP.F32        S16, S0
3214B8:  VMRS            APSR_nzcv, FPSCR
3214BC:  BNE             loc_3214EC
3214BE:  ADR             R0, aOyAll; "OY_ALL"
3214C0:  MOV.W           R1, #0xFFFFFFFF; char *
3214C4:  MOVW            R2, #0x1388; __int16
3214C8:  MOV.W           R3, #0xFFFFFFFF; unsigned __int16
3214CC:  BLX             j__ZN8CGarages14TriggerMessageEPcsts; CGarages::TriggerMessage(char *,short,ushort,short)
3214D0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3214D6)
3214D2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3214D4:  LDR             R0, [R0]; CWorld::Players ...
3214D6:  LDR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
3214DA:  ADD.W           R1, R1, #0x18000
3214DE:  ADD.W           R1, R1, #0x6A0
3214E2:  STR.W           R1, [R0,#(dword_96B754 - 0x96B69C)]
3214E6:  VPOP            {D8}
3214EA:  POP             {R7,PC}
3214EC:  MOVS            R0, #(dword_F0+3); this
3214EE:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3214F2:  VMOV            S16, R0
3214F6:  MOVS            R0, #elf_hash_nbucket; this
3214F8:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3214FC:  VMOV            S0, R0
321500:  ADR             R0, aOyOne; "OY_ONE"
321502:  VCVT.S32.F32    S2, S16
321506:  MOVW            R2, #0x1388; __int16
32150A:  VCVT.S32.F32    S0, S0
32150E:  VMOV            R1, S2; char *
321512:  VMOV            R3, S0; unsigned __int16
321516:  VPOP            {D8}
32151A:  POP.W           {R7,LR}
32151E:  B.W             sub_19BFAC
