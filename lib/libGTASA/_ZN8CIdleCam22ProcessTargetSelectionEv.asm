; =========================================================
; Game Engine Function: _ZN8CIdleCam22ProcessTargetSelectionEv
; Address            : 0x3D38A0 - 0x3D3A0A
; =========================================================

3D38A0:  PUSH            {R4-R7,LR}
3D38A2:  ADD             R7, SP, #0xC
3D38A4:  PUSH.W          {R8,R9,R11}
3D38A8:  VPUSH           {D8}
3D38AC:  MOV             R4, R0
3D38AE:  MOV.W           R0, #0xFFFFFFFF; int
3D38B2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D38B6:  MOV             R8, R0
3D38B8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D38BE)
3D38BA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D38BC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3D38BE:  VLDR            S0, [R0]
3D38C2:  VCVT.F32.U32    S0, S0
3D38C6:  VLDR            S2, [R4,#0x34]
3D38CA:  LDR             R0, [R4,#0x58]
3D38CC:  CMP             R0, #3
3D38CE:  VSUB.F32        S16, S0, S2
3D38D2:  BEQ             loc_3D38E2
3D38D4:  LDR             R0, [R4,#0x54]
3D38D6:  CMP             R0, #0
3D38D8:  BGT             loc_3D38E2
3D38DA:  VLDR            S0, [R4,#0x84]
3D38DE:  VDIV.F32        S16, S16, S0
3D38E2:  VLDR            S0, [R4,#0x38]
3D38E6:  VCMPE.F32       S16, S0
3D38EA:  VMRS            APSR_nzcv, FPSCR
3D38EE:  BLE             loc_3D3972
3D38F0:  LDR             R0, =(g_InterestingEvents_ptr - 0x3D38F6)
3D38F2:  ADD             R0, PC; g_InterestingEvents_ptr
3D38F4:  LDR             R5, [R0]; g_InterestingEvents
3D38F6:  MOV             R0, R5; this
3D38F8:  BLX             j__ZN18CInterestingEvents26InvalidateNonVisibleEventsEv; CInterestingEvents::InvalidateNonVisibleEvents(void)
3D38FC:  MOV             R0, R5; this
3D38FE:  BLX             j__ZN18CInterestingEvents19GetInterestingEventEv; CInterestingEvents::GetInterestingEvent(void)
3D3902:  MOV             R6, R0
3D3904:  CBZ             R6, loc_3D392C
3D3906:  LDR             R5, [R6,#8]
3D3908:  MOV             R0, R4; this
3D390A:  LDR.W           R9, [R4]
3D390E:  MOV             R1, R5; CEntity *
3D3910:  BLX             j__ZN8CIdleCam13IsTargetValidEP7CEntity; CIdleCam::IsTargetValid(CEntity *)
3D3914:  CMP             R9, R5
3D3916:  BEQ             loc_3D3940
3D3918:  CMP             R0, #1
3D391A:  BNE             loc_3D3972
3D391C:  LDR             R0, [R4,#0x58]
3D391E:  CMP             R0, #3
3D3920:  BNE             loc_3D396C
3D3922:  MOV             R0, R4; this
3D3924:  MOV             R1, R5; CEntity *
3D3926:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D392A:  B               loc_3D3972
3D392C:  LDR             R1, [R4]; CEntity *
3D392E:  CBZ             R1, loc_3D3950
3D3930:  MOV             R0, R4; this
3D3932:  BLX             j__ZN8CIdleCam13IsTargetValidEP7CEntity; CIdleCam::IsTargetValid(CEntity *)
3D3936:  CBNZ            R0, loc_3D3972
3D3938:  LDR             R0, [R4]
3D393A:  CMP             R0, R8
3D393C:  BNE             loc_3D3956
3D393E:  B               loc_3D3972
3D3940:  CBNZ            R0, loc_3D3972
3D3942:  LDR             R0, =(g_InterestingEvents_ptr - 0x3D394A)
3D3944:  MOV             R1, R6
3D3946:  ADD             R0, PC; g_InterestingEvents_ptr
3D3948:  LDR             R0, [R0]; g_InterestingEvents
3D394A:  BLX             j__ZN18CInterestingEvents15InvalidateEventEPK17TInterestingEvent; CInterestingEvents::InvalidateEvent(TInterestingEvent const*)
3D394E:  B               loc_3D3972
3D3950:  MOVS            R0, #0
3D3952:  CMP             R0, R8
3D3954:  BEQ             loc_3D3972
3D3956:  LDR             R0, [R4,#0x58]
3D3958:  CMP             R0, #3
3D395A:  BNE             loc_3D396C
3D395C:  MOV.W           R0, #0xFFFFFFFF; int
3D3960:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D3964:  MOV             R1, R0; CEntity *
3D3966:  MOV             R0, R4; this
3D3968:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D396C:  MOVS            R0, #1
3D396E:  STRB.W          R0, [R4,#0x78]
3D3972:  LDR             R1, [R4]
3D3974:  CBNZ            R1, loc_3D3996
3D3976:  MOV.W           R0, #0xFFFFFFFF; int
3D397A:  MOVS            R5, #1
3D397C:  STR.W           R8, [R4]
3D3980:  STRB.W          R5, [R4,#0x78]
3D3984:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D3988:  MOV             R1, R0; CEntity *
3D398A:  MOV             R0, R4; this
3D398C:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D3990:  LDR             R1, [R4]; CEntity *
3D3992:  STRB.W          R5, [R4,#0x78]
3D3996:  MOV             R0, R4; this
3D3998:  BLX             j__ZN8CIdleCam13IsTargetValidEP7CEntity; CIdleCam::IsTargetValid(CEntity *)
3D399C:  CBNZ            R0, loc_3D39E2
3D399E:  VLDR            S0, [R4,#0x38]
3D39A2:  VCMPE.F32       S16, S0
3D39A6:  VMRS            APSR_nzcv, FPSCR
3D39AA:  BLE             loc_3D39E2
3D39AC:  LDR             R0, [R4,#0x58]
3D39AE:  CMP             R0, #3
3D39B0:  BNE             loc_3D39C2
3D39B2:  MOV.W           R0, #0xFFFFFFFF; int
3D39B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D39BA:  MOV             R1, R0; CEntity *
3D39BC:  MOV             R0, R4; this
3D39BE:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D39C2:  LDR             R0, [R4,#0x54]
3D39C4:  MOVS            R5, #1
3D39C6:  STRB.W          R5, [R4,#0x78]
3D39CA:  CMP             R0, #1
3D39CC:  BLT             loc_3D39E2
3D39CE:  MOV.W           R0, #0xFFFFFFFF; int
3D39D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D39D6:  MOV             R1, R0; CEntity *
3D39D8:  MOV             R0, R4; this
3D39DA:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D39DE:  STRB.W          R5, [R4,#0x78]
3D39E2:  LDRD.W          R0, R1, [R4,#0x50]
3D39E6:  CMP             R1, R0
3D39E8:  BLE             loc_3D3A00
3D39EA:  MOV.W           R0, #0xFFFFFFFF; int
3D39EE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D39F2:  MOV             R1, R0; CEntity *
3D39F4:  MOV             R0, R4; this
3D39F6:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D39FA:  MOVS            R0, #1
3D39FC:  STRB.W          R0, [R4,#0x78]
3D3A00:  VPOP            {D8}
3D3A04:  POP.W           {R8,R9,R11}
3D3A08:  POP             {R4-R7,PC}
