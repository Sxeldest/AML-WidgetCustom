; =========================================================
; Game Engine Function: _ZN8CProfile10InitialiseEv
; Address            : 0x40D5C0 - 0x40D658
; =========================================================

40D5C0:  PUSH            {R4,R5,R7,LR}
40D5C2:  ADD             R7, SP, #8
40D5C4:  ADR             R0, aInitialisingCp; "Initialising CProfile...\n"
40D5C6:  BLX             j__ZN6CDebug8DebugLogEPKcz; CDebug::DebugLog(char const*,...)
40D5CA:  LDR             R0, =(aCollision_0 - 0x40D5D8); "Collision"
40D5CC:  VMOV.I32        Q10, #0
40D5D0:  LDR             R2, =(aFrameRate - 0x40D5DE); "Frame rate"
40D5D2:  ADR             R5, dword_40D660
40D5D4:  ADD             R0, PC; "Collision"
40D5D6:  LDR.W           LR, =(aPedAi - 0x40D5EC); "Ped AI"
40D5DA:  ADD             R2, PC; "Frame rate"
40D5DC:  LDR             R3, =(_ZN8CProfile15ms_afMaxEndTimeE_ptr - 0x40D5F8)
40D5DE:  VMOV.32         D17[0], R0
40D5E2:  LDR.W           R12, =(_ZN8CProfile22ms_afMaxCumulativeTimeE_ptr - 0x40D5FA)
40D5E6:  LDR             R0, =(_ZN8CProfile17ms_pProfileStringE_ptr - 0x40D5F6)
40D5E8:  ADD             LR, PC; "Ped AI"
40D5EA:  VMOV.32         D16[0], R2
40D5EE:  LDR             R4, =(aPhysics - 0x40D5FC); "Physics"
40D5F0:  LDR             R1, =(_ZN8CProfile14ms_aBarColoursE_ptr - 0x40D602)
40D5F2:  ADD             R0, PC; _ZN8CProfile17ms_pProfileStringE_ptr
40D5F4:  ADD             R3, PC; _ZN8CProfile15ms_afMaxEndTimeE_ptr
40D5F6:  ADD             R12, PC; _ZN8CProfile22ms_afMaxCumulativeTimeE_ptr
40D5F8:  ADD             R4, PC; "Physics"
40D5FA:  VMOV.32         D17[1], LR
40D5FE:  ADD             R1, PC; _ZN8CProfile14ms_aBarColoursE_ptr
40D600:  LDR             R2, [R3]; CProfile::ms_afMaxEndTime ...
40D602:  LDR.W           R3, [R12]; CProfile::ms_afMaxCumulativeTime ...
40D606:  VMOV.32         D16[1], R4
40D60A:  LDR             R0, [R0]; CProfile::ms_pProfileString ...
40D60C:  ADR             R4, aTotal; "Total"
40D60E:  VLD1.64         {D18-D19}, [R5@128]
40D612:  ADR             R5, aRenderingTime; "Rendering time"
40D614:  LDR             R1, [R1]; CProfile::ms_aBarColours ...
40D616:  VST1.32         {D20-D21}, [R2]
40D61A:  VST1.32         {D20-D21}, [R3]
40D61E:  STRD.W          R5, R4, [R0,#(dword_95AD00 - 0x95ACEC)]
40D622:  MOVS            R5, #0xFFFF0000
40D628:  MOV.W           R4, #0xFFFFFFFF
40D62C:  STRD.W          R5, R4, [R1,#(dword_95ACE4 - 0x95ACD0)]
40D630:  ADDS            R1, #4
40D632:  VST1.32         {D16-D17}, [R0]!
40D636:  VST1.32         {D18-D19}, [R1]
40D63A:  ADD.W           R1, R2, #0xC
40D63E:  VST1.32         {D20-D21}, [R1]
40D642:  ADD.W           R1, R3, #0xC
40D646:  VST1.32         {D20-D21}, [R1]
40D64A:  ADR             R1, aProcessingTime; "Processing time"
40D64C:  STR             R1, [R0]
40D64E:  ADR             R0, aCprofileReady; "CProfile ready\n"
40D650:  POP.W           {R4,R5,R7,LR}
40D654:  B.W             j_j__ZN6CDebug8DebugLogEPKcz; j_CDebug::DebugLog(char const*,...)
