; =========================================================
; Game Engine Function: _ZN10CPlayerPed19ControlButtonSprintE11eSprintType
; Address            : 0x4CA3A4 - 0x4CA5E2
; =========================================================

4CA3A4:  PUSH            {R4-R7,LR}
4CA3A6:  ADD             R7, SP, #0xC
4CA3A8:  PUSH.W          {R11}
4CA3AC:  VPUSH           {D8-D10}
4CA3B0:  MOV             R5, R0
4CA3B2:  MOV             R4, R1
4CA3B4:  LDR.W           R1, [R5,#0x444]; int
4CA3B8:  VLDR            S16, =0.0
4CA3BC:  CMP             R1, #0
4CA3BE:  BEQ.W           loc_4CA534
4CA3C2:  LDR.W           R0, [R5,#0x59C]
4CA3C6:  CMP             R0, #1
4CA3C8:  BEQ             loc_4CA3D0
4CA3CA:  CBNZ            R0, loc_4CA3DE
4CA3CC:  MOVS            R0, #0
4CA3CE:  B               loc_4CA3D2
4CA3D0:  MOVS            R0, #(stderr+1); this
4CA3D2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4CA3D6:  LDR.W           R1, [R5,#0x444]
4CA3DA:  MOV             R6, R0
4CA3DC:  B               loc_4CA3E0
4CA3DE:  MOVS            R6, #0
4CA3E0:  LDRB.W          R0, [R1,#0x84]
4CA3E4:  CBZ             R0, loc_4CA420
4CA3E6:  MOVS            R0, #0
4CA3E8:  VLDR            S0, [R1,#0x1C]
4CA3EC:  VCMPE.F32       S0, #0.0
4CA3F0:  VMRS            APSR_nzcv, FPSCR
4CA3F4:  BLE             loc_4CA478
4CA3F6:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4CA3FE)
4CA3F8:  LDR             R3, =(PLAYER_SPRINT_SET_ptr - 0x4CA400)
4CA3FA:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4CA3FC:  ADD             R3, PC; PLAYER_SPRINT_SET_ptr
4CA3FE:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4CA400:  LDR             R3, [R3]; PLAYER_SPRINT_SET
4CA402:  VLDR            S2, [R2]
4CA406:  ADD.W           R2, R3, R4,LSL#5
4CA40A:  VLDR            S4, [R2,#8]
4CA40E:  VMUL.F32        S2, S4, S2
4CA412:  VLDR            S4, =0.0
4CA416:  VSUB.F32        S0, S0, S2
4CA41A:  VMAX.F32        D0, D0, D2
4CA41E:  B               loc_4CA46C
4CA420:  VLDR            S0, [R1,#0x1C]
4CA424:  VCMPE.F32       S0, #0.0
4CA428:  VMRS            APSR_nzcv, FPSCR
4CA42C:  BGT             loc_4CA43C
4CA42E:  VLDR            S0, [R1,#0x18]
4CA432:  VCMPE.F32       S0, #0.0
4CA436:  VMRS            APSR_nzcv, FPSCR
4CA43A:  BLE             loc_4CA3E6
4CA43C:  MOV             R0, R6; this
4CA43E:  BLX             j__ZN4CPad14SprintJustDownEv; CPad::SprintJustDown(void)
4CA442:  CMP             R0, #1
4CA444:  BNE.W           loc_4CA586
4CA448:  LDR             R0, =(PLAYER_SPRINT_SET_ptr - 0x4CA452)
4CA44A:  LDR.W           R1, [R5,#0x444]
4CA44E:  ADD             R0, PC; PLAYER_SPRINT_SET_ptr
4CA450:  LDR             R0, [R0]; PLAYER_SPRINT_SET
4CA452:  VLDR            S0, [R1,#0x1C]
4CA456:  ADD.W           R0, R0, R4,LSL#5
4CA45A:  VLDR            S2, [R0]
4CA45E:  VLDR            S4, [R0,#0x10]
4CA462:  MOVS            R0, #1
4CA464:  VADD.F32        S0, S0, S2
4CA468:  VMIN.F32        D0, D2, D0
4CA46C:  VSTR            S0, [R1,#0x1C]
4CA470:  LDR.W           R1, [R5,#0x444]
4CA474:  VLDR            S0, [R1,#0x1C]
4CA478:  LDR             R1, =(PLAYER_SPRINT_SET_ptr - 0x4CA47E)
4CA47A:  ADD             R1, PC; PLAYER_SPRINT_SET_ptr
4CA47C:  LDR             R1, [R1]; PLAYER_SPRINT_SET
4CA47E:  ADD.W           R1, R1, R4,LSL#5
4CA482:  VLDR            S2, [R1,#0xC]
4CA486:  VCMPE.F32       S0, S2
4CA48A:  VMRS            APSR_nzcv, FPSCR
4CA48E:  BLE             loc_4CA4A2
4CA490:  LDR             R0, =(PLAYER_SPRINT_SET_ptr - 0x4CA49A)
4CA492:  VDIV.F32        S18, S0, S2
4CA496:  ADD             R0, PC; PLAYER_SPRINT_SET_ptr
4CA498:  LDR             R0, [R0]; PLAYER_SPRINT_SET
4CA49A:  ADD.W           R0, R0, R4,LSL#5
4CA49E:  ADDS            R0, #0x18
4CA4A0:  B               loc_4CA4CA
4CA4A2:  VMOV.F32        S20, #1.0
4CA4A6:  VLDR            S18, =0.0
4CA4AA:  VCMPE.F32       S0, #0.0
4CA4AE:  VMRS            APSR_nzcv, FPSCR
4CA4B2:  BLE             loc_4CA4CE
4CA4B4:  EORS.W          R0, R0, #1
4CA4B8:  BNE             loc_4CA4CE
4CA4BA:  LDR             R0, =(PLAYER_SPRINT_SET_ptr - 0x4CA4C4)
4CA4BC:  VMOV.F32        S18, #1.0
4CA4C0:  ADD             R0, PC; PLAYER_SPRINT_SET_ptr
4CA4C2:  LDR             R0, [R0]; PLAYER_SPRINT_SET
4CA4C4:  ADD.W           R0, R0, R4,LSL#5
4CA4C8:  ADDS            R0, #0x14
4CA4CA:  VLDR            S20, [R0]
4CA4CE:  MOV.W           R0, #0xFFFFFFFF; int
4CA4D2:  MOVS            R1, #0; bool
4CA4D4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CA4D8:  CBNZ            R0, loc_4CA4E4
4CA4DA:  MOV             R0, R6; this
4CA4DC:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
4CA4E0:  CMP             R0, #0
4CA4E2:  BEQ             loc_4CA5C2
4CA4E4:  VCMPE.F32       S18, #0.0
4CA4E8:  VMRS            APSR_nzcv, FPSCR
4CA4EC:  BLE             loc_4CA534
4CA4EE:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4CA4FA)
4CA4F0:  MOV.W           R2, #0x194
4CA4F4:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4CA4FC)
4CA4F6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4CA4F8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4CA4FA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4CA4FC:  LDR             R1, [R1]; CWorld::Players ...
4CA4FE:  LDR             R0, [R0]; CWorld::PlayerInFocus
4CA500:  SMLABB.W        R0, R0, R2, R1
4CA504:  LDRB.W          R0, [R0,#0x14C]
4CA508:  CBZ             R0, loc_4CA542
4CA50A:  VMOV.F32        S0, #-1.0
4CA50E:  LDR             R0, =(PLAYER_SPRINT_SET_ptr - 0x4CA518)
4CA510:  VLDR            S2, =0.0
4CA514:  ADD             R0, PC; PLAYER_SPRINT_SET_ptr
4CA516:  LDR             R0, [R0]; PLAYER_SPRINT_SET
4CA518:  ADD.W           R0, R0, R4,LSL#5
4CA51C:  VADD.F32        S0, S18, S0
4CA520:  VLDR            S4, [R0,#0x1C]
4CA524:  VMAX.F32        D0, D0, D1
4CA528:  VMOV.F32        S2, #1.0
4CA52C:  VMUL.F32        S0, S0, S4
4CA530:  VADD.F32        S16, S0, S2
4CA534:  VMOV            R0, S16
4CA538:  VPOP            {D8-D10}
4CA53C:  POP.W           {R11}
4CA540:  POP             {R4-R7,PC}
4CA542:  VCMP.F32        S20, #0.0
4CA546:  VMRS            APSR_nzcv, FPSCR
4CA54A:  BEQ             loc_4CA50A
4CA54C:  LDR.W           R0, [R5,#0x444]
4CA550:  LDRH            R1, [R0,#0x34]
4CA552:  ANDS.W          R1, R1, #2
4CA556:  BNE             loc_4CA50A
4CA558:  VLDR            S0, =-150.0
4CA55C:  VLDR            S2, [R0,#0x18]
4CA560:  VCMPE.F32       S2, S0
4CA564:  VMRS            APSR_nzcv, FPSCR
4CA568:  BLE             loc_4CA5DC
4CA56A:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4CA570)
4CA56C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4CA56E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4CA570:  VLDR            S4, [R1]
4CA574:  VMUL.F32        S4, S20, S4
4CA578:  VSUB.F32        S2, S2, S4
4CA57C:  VMAX.F32        D0, D1, D0
4CA580:  VSTR            S0, [R0,#0x18]
4CA584:  B               loc_4CA50A
4CA586:  MOV             R0, R6; this
4CA588:  MOV             R1, R4; int
4CA58A:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
4CA58E:  LDR.W           R1, [R5,#0x444]
4CA592:  CMP             R0, #1
4CA594:  BNE             loc_4CA5D8
4CA596:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4CA5A2)
4CA598:  VMOV.F32        S4, #1.0
4CA59C:  LDR             R2, =(PLAYER_SPRINT_SET_ptr - 0x4CA5A4)
4CA59E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4CA5A0:  ADD             R2, PC; PLAYER_SPRINT_SET_ptr
4CA5A2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4CA5A4:  LDR             R2, [R2]; PLAYER_SPRINT_SET
4CA5A6:  VLDR            S0, [R0]
4CA5AA:  ADD.W           R0, R2, R4,LSL#5
4CA5AE:  VLDR            S2, [R0,#4]
4CA5B2:  MOVS            R0, #1
4CA5B4:  VMUL.F32        S0, S2, S0
4CA5B8:  VLDR            S2, [R1,#0x1C]
4CA5BC:  VSUB.F32        S0, S2, S0
4CA5C0:  B               loc_4CA41A
4CA5C2:  MOV             R0, R6; this
4CA5C4:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
4CA5C8:  VCMPE.F32       S18, #0.0
4CA5CC:  VMRS            APSR_nzcv, FPSCR
4CA5D0:  BLE             loc_4CA534
4CA5D2:  CMP             R0, #0
4CA5D4:  BNE             loc_4CA4EE
4CA5D6:  B               loc_4CA534
4CA5D8:  MOVS            R0, #1
4CA5DA:  B               loc_4CA3E8
4CA5DC:  MOVS            R1, #0
4CA5DE:  STR             R1, [R0,#0x1C]
4CA5E0:  B               loc_4CA534
