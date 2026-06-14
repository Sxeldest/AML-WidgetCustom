; =========================================================
; Game Engine Function: _ZN8CRestart10InitialiseEv
; Address            : 0x324824 - 0x324930
; =========================================================

324824:  PUSH            {R4-R7,LR}
324826:  ADD             R7, SP, #0xC
324828:  PUSH.W          {R11}
32482C:  LDR             R0, =(_ZN8CRestart21HospitalRestartPointsE_ptr - 0x32483A)
32482E:  VMOV.I32        Q8, #0
324832:  LDR             R1, =(_ZN8CRestart23HospitalRestartHeadingsE_ptr - 0x32483C)
324834:  LDR             R2, =(_ZN8CRestart19PoliceRestartPointsE_ptr - 0x324840)
324836:  ADD             R0, PC; _ZN8CRestart21HospitalRestartPointsE_ptr
324838:  ADD             R1, PC; _ZN8CRestart23HospitalRestartHeadingsE_ptr
32483A:  LDR             R3, =(_ZN8CRestart26ExtraHospitalRestartRadiusE_ptr - 0x324846)
32483C:  ADD             R2, PC; _ZN8CRestart19PoliceRestartPointsE_ptr
32483E:  LDR             R5, [R0]; CRestart::HospitalRestartPoints ...
324840:  LDR             R0, [R1]; CRestart::HospitalRestartHeadings ...
324842:  ADD             R3, PC; _ZN8CRestart26ExtraHospitalRestartRadiusE_ptr
324844:  LDR             R1, [R2]; CRestart::PoliceRestartPoints ...
324846:  LDR.W           R12, [R3]; CRestart::ExtraHospitalRestartRadius ...
32484A:  LDR             R4, =(_ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr - 0x324858)
32484C:  MOV             R3, R1
32484E:  LDR             R6, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x32485A)
324850:  VST1.32         {D16-D17}, [R3]!
324854:  ADD             R4, PC; _ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr
324856:  ADD             R6, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324858:  VST1.32         {D16-D17}, [R3]
32485C:  MOV             R3, R5
32485E:  VST1.32         {D16-D17}, [R3]!
324862:  VST1.32         {D16-D17}, [R3]
324866:  MOVS            R3, #0
324868:  STRD.W          R3, R3, [R0,#(dword_7B6E00 - 0x7B6DE0)]
32486C:  VST1.32         {D16-D17}, [R0]!
324870:  VST1.32         {D16-D17}, [R0]
324874:  ADD.W           R0, R5, #0x60 ; '`'
324878:  VST1.32         {D16-D17}, [R0]
32487C:  ADD.W           R0, R5, #0x50 ; 'P'
324880:  VST1.32         {D16-D17}, [R0]
324884:  ADD.W           R0, R5, #0x40 ; '@'
324888:  VST1.32         {D16-D17}, [R0]
32488C:  ADD.W           R0, R5, #0x30 ; '0'
324890:  VST1.32         {D16-D17}, [R0]
324894:  LDR             R0, =(_ZN8CRestart21bFadeInAfterNextDeathE_ptr - 0x3248A0)
324896:  LDR.W           LR, [R4]; CRestart::ExtraPoliceStationRestartRadius ...
32489A:  LDR             R4, =(_ZN8CRestart22bFadeInAfterNextArrestE_ptr - 0x3248A4)
32489C:  ADD             R0, PC; _ZN8CRestart21bFadeInAfterNextDeathE_ptr
32489E:  LDR             R2, [R6]; CRestart::bOverrideRespawnBasePointForMission ...
3248A0:  ADD             R4, PC; _ZN8CRestart22bFadeInAfterNextArrestE_ptr
3248A2:  STRD.W          R3, R3, [R5,#(dword_7B6DD8 - 0x7B6D68)]
3248A6:  LDR             R6, [R4]; CRestart::bFadeInAfterNextArrest ...
3248A8:  LDR             R4, [R0]; CRestart::bFadeInAfterNextDeath ...
3248AA:  ADD.W           R0, R5, #0x20 ; ' '
3248AE:  VST1.32         {D16-D17}, [R0]
3248B2:  ADD.W           R0, R1, #0x60 ; '`'
3248B6:  VST1.32         {D16-D17}, [R0]
3248BA:  ADD.W           R0, R1, #0x50 ; 'P'
3248BE:  VST1.32         {D16-D17}, [R0]
3248C2:  ADD.W           R0, R1, #0x40 ; '@'
3248C6:  VST1.32         {D16-D17}, [R0]
3248CA:  ADD.W           R0, R1, #0x30 ; '0'
3248CE:  VST1.32         {D16-D17}, [R0]
3248D2:  LDR             R0, =(_ZN8CRestart21PoliceRestartHeadingsE_ptr - 0x3248DE)
3248D4:  STRD.W          R3, R3, [R1,#(dword_7B6EA0 - 0x7B6E30)]
3248D8:  ADDS            R1, #0x20 ; ' '
3248DA:  ADD             R0, PC; _ZN8CRestart21PoliceRestartHeadingsE_ptr
3248DC:  VST1.32         {D16-D17}, [R1]
3248E0:  LDR             R0, [R0]; CRestart::PoliceRestartHeadings ...
3248E2:  LDR             R1, =(_ZN8CRestart15OverrideHeadingE_ptr - 0x3248EC)
3248E4:  STRD.W          R3, R3, [R0,#(dword_7B6EC8 - 0x7B6EA8)]
3248E8:  ADD             R1, PC; _ZN8CRestart15OverrideHeadingE_ptr
3248EA:  VST1.32         {D16-D17}, [R0]!
3248EE:  VST1.32         {D16-D17}, [R0]
3248F2:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x3248FA)
3248F4:  LDR             R1, [R1]; CRestart::OverrideHeading ...
3248F6:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
3248F8:  LDR             R0, [R0]; CRestart::NumberOfHospitalRestarts ...
3248FA:  STRH            R3, [R0]; CRestart::NumberOfHospitalRestarts
3248FC:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x324902)
3248FE:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
324900:  LDR             R0, [R0]; CRestart::NumberOfPoliceRestarts ...
324902:  STRH            R3, [R0]; CRestart::NumberOfPoliceRestarts
324904:  LDR             R0, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x32490A)
324906:  ADD             R0, PC; _ZN8CRestart16bOverrideRestartE_ptr
324908:  LDR             R0, [R0]; CRestart::bOverrideRestart ...
32490A:  STRB            R3, [R0]; CRestart::bOverrideRestart
32490C:  LDR             R0, =(_ZN8CRestart16OverridePositionE_ptr - 0x324912)
32490E:  ADD             R0, PC; _ZN8CRestart16OverridePositionE_ptr
324910:  LDR             R0, [R0]; CRestart::OverridePosition ...
324912:  STRD.W          R3, R3, [R0]; CRestart::OverridePosition
324916:  STR             R3, [R0,#(dword_7B6F08 - 0x7B6F00)]
324918:  MOVS            R0, #1
32491A:  STR             R3, [R1]; CRestart::OverrideHeading
32491C:  STRB            R0, [R4]; CRestart::bFadeInAfterNextDeath
32491E:  STRB            R0, [R6]; CRestart::bFadeInAfterNextArrest
324920:  STR.W           R3, [R12]; CRestart::ExtraHospitalRestartRadius
324924:  STR.W           R3, [LR]; CRestart::ExtraPoliceStationRestartRadius
324928:  STRB            R3, [R2]; CRestart::bOverrideRespawnBasePointForMission
32492A:  POP.W           {R11}
32492E:  POP             {R4-R7,PC}
