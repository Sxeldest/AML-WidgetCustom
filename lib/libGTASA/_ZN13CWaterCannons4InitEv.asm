; =========================================================
; Game Engine Function: _ZN13CWaterCannons4InitEv
; Address            : 0x5CB7C0 - 0x5CB8E4
; =========================================================

5CB7C0:  PUSH            {R4-R7,LR}
5CB7C2:  ADD             R7, SP, #0xC
5CB7C4:  PUSH.W          {R8-R11}
5CB7C8:  SUB             SP, SP, #4
5CB7CA:  VPUSH           {D8-D11}
5CB7CE:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CB7DE)
5CB7D0:  VMOV.I32        Q4, #0
5CB7D4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5CB7E2)
5CB7D6:  MOV.W           R9, #0
5CB7DA:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CB7DC:  LDR             R6, =(unk_A7D080 - 0x5CB7EE)
5CB7DE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5CB7E0:  ADR             R2, dword_5CB8F0
5CB7E2:  LDR             R4, [R0]; CWaterCannons::aCannons ...
5CB7E4:  ADR             R0, dword_5CB900
5CB7E6:  VLD1.64         {D16-D17}, [R0@128]
5CB7EA:  ADD             R6, PC; unk_A7D080
5CB7EC:  ADD.W           R0, R4, #0x31C
5CB7F0:  LDR.W           R10, [R1]; CTimer::m_snTimeInMilliseconds ...
5CB7F4:  MOV             R5, R6
5CB7F6:  STRH.W          R9, [R4,#(word_A7C364 - 0xA7C360)]
5CB7FA:  MOV             R1, R4; CWaterCannon *
5CB7FC:  VST1.32         {D8-D9}, [R0]
5CB800:  MOVS            R0, #0xA000B
5CB806:  STR             R0, [R6,#(dword_A7D0A0 - 0xA7D080)]
5CB808:  MOV             R8, R0
5CB80A:  LDR.W           R0, [R10]; CTimer::m_snTimeInMilliseconds
5CB80E:  VLD1.64         {D10-D11}, [R2@128]
5CB812:  STR.W           R9, [R4]; CWaterCannons::aCannons
5CB816:  STR             R0, [R4,#(dword_A7C368 - 0xA7C360)]
5CB818:  ADD.W           R0, R4, #0x30C
5CB81C:  VST1.16         {D10-D11}, [R5@128]!
5CB820:  VST1.32         {D8-D9}, [R0]
5CB824:  ADD.W           R0, R4, #0x32C; this
5CB828:  VST1.64         {D16-D17}, [R5@128]
5CB82C:  BLX.W           j__ZN25CAEWaterCannonAudioEntity10InitialiseEP12CWaterCannon; CAEWaterCannonAudioEntity::Initialise(CWaterCannon *)
5CB830:  ADD.W           R0, R4, #0x6E8
5CB834:  MOVS            R1, #:lower16:(stru_5FFF8.st_shndx+1)
5CB836:  MOVW            R11, #:lower16:(aMpg123SeekFram+8); "eek_frame"
5CB83A:  MOVT            R1, #:upper16:(stru_5FFF8.st_shndx+1)
5CB83E:  VST1.32         {D8-D9}, [R0]
5CB842:  ADD.W           R0, R4, #0x6D8
5CB846:  MOVT            R11, #:upper16:(aMpg123SeekFram+8); "eek_frame"
5CB84A:  VST1.32         {D8-D9}, [R0]
5CB84E:  LDR.W           R0, [R10]; CTimer::m_snTimeInMilliseconds
5CB852:  STRH.W          R9, [R4,#(word_A7C730 - 0xA7C360)]
5CB856:  STR.W           R9, [R4,#(dword_A7C72C - 0xA7C360)]
5CB85A:  STR.W           R0, [R4,#(dword_A7C734 - 0xA7C360)]
5CB85E:  MOVS            R0, #0x90008
5CB864:  VST1.64         {D10-D11}, [R6@128]
5CB868:  STRD.W          R1, R0, [R6,#(dword_A7D094 - 0xA7D080)]
5CB86C:  ADD.W           R0, R4, #0x6F8; this
5CB870:  STRD.W          R11, R8, [R6,#(dword_A7D09C - 0xA7D080)]
5CB874:  MOVW            R8, #:lower16:stru_4FFF8.st_shndx
5CB878:  ADD.W           R1, R4, #0x3CC; CWaterCannon *
5CB87C:  MOVT            R8, #:upper16:stru_4FFF8.st_shndx
5CB880:  STR.W           R8, [R5]
5CB884:  BLX.W           j__ZN25CAEWaterCannonAudioEntity10InitialiseEP12CWaterCannon; CAEWaterCannonAudioEntity::Initialise(CWaterCannon *)
5CB888:  ADDW            R0, R4, #0xAB4
5CB88C:  VST1.64         {D10-D11}, [R6@128]
5CB890:  ADD.W           R1, R4, #0x798
5CB894:  VST1.32         {D8-D9}, [R0]
5CB898:  ADDW            R0, R4, #0xAA4
5CB89C:  VST1.32         {D8-D9}, [R0]
5CB8A0:  LDR.W           R0, [R10]; CTimer::m_snTimeInMilliseconds
5CB8A4:  STRH.W          R9, [R4,#(word_A7CAFC - 0xA7C360)]
5CB8A8:  STR.W           R9, [R4,#(dword_A7CAF8 - 0xA7C360)]
5CB8AC:  STR.W           R0, [R4,#(dword_A7CB00 - 0xA7C360)]
5CB8B0:  MOVS            R0, #0x60007
5CB8B6:  STR             R0, [R6,#(dword_A7D094 - 0xA7D080)]
5CB8B8:  MOVS            R0, #0x90008
5CB8BE:  STRD.W          R0, R11, [R6,#(dword_A7D098 - 0xA7D080)]
5CB8C2:  MOVS            R0, #0xA000B
5CB8C8:  STR             R0, [R6,#(dword_A7D0A0 - 0xA7D080)]
5CB8CA:  ADDW            R0, R4, #0xAC4
5CB8CE:  STR.W           R8, [R5]
5CB8D2:  VPOP            {D8-D11}
5CB8D6:  ADD             SP, SP, #4
5CB8D8:  POP.W           {R8-R11}
5CB8DC:  POP.W           {R4-R7,LR}
5CB8E0:  B.W             sub_193CA8
