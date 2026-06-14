; =========================================================
; Game Engine Function: _ZN23CTaskComplexSignalAtPed18CreateFirstSubTaskEP4CPed
; Address            : 0x51A044 - 0x51A124
; =========================================================

51A044:  PUSH            {R4-R7,LR}
51A046:  ADD             R7, SP, #0xC
51A048:  PUSH.W          {R8,R9,R11}
51A04C:  SUB             SP, SP, #0x20
51A04E:  MOV             R4, R0
51A050:  MOV             R5, R1
51A052:  LDR             R0, [R4,#0xC]
51A054:  CBZ             R0, loc_51A0AE
51A056:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x51A062)
51A058:  MOV.W           R2, #0x194
51A05C:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x51A064)
51A05E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
51A060:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
51A062:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
51A064:  LDR             R1, [R1]; CWorld::Players ...
51A066:  LDR             R0, [R0]; CWorld::PlayerInFocus
51A068:  SMULBB.W        R0, R0, R2
51A06C:  LDR             R1, [R1,R0]
51A06E:  LDR.W           R0, [R1,#0x590]; this
51A072:  CMP             R0, #0
51A074:  ITT NE
51A076:  LDRNE.W         R1, [R1,#0x484]
51A07A:  ANDSNE.W        R1, R1, #0x100
51A07E:  BEQ             loc_51A0B2
51A080:  VLDR            S0, [R0,#0x48]
51A084:  VLDR            S2, [R0,#0x4C]
51A088:  VMUL.F32        S0, S0, S0
51A08C:  VLDR            S4, [R0,#0x50]
51A090:  VMUL.F32        S2, S2, S2
51A094:  VMUL.F32        S4, S4, S4
51A098:  VADD.F32        S0, S0, S2
51A09C:  VLDR            S2, =0.04
51A0A0:  VADD.F32        S0, S0, S4
51A0A4:  VCMPE.F32       S0, S2
51A0A8:  VMRS            APSR_nzcv, FPSCR
51A0AC:  BLE             loc_51A0B2
51A0AE:  MOVS            R6, #0
51A0B0:  B               loc_51A11A
51A0B2:  MOVS            R6, #0
51A0B4:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
51A0B8:  CBNZ            R0, loc_51A11A
51A0BA:  MOV             R0, R5; this
51A0BC:  BLX             j__ZN4CPed21StopPlayingHandSignalEv; CPed::StopPlayingHandSignal(void)
51A0C0:  LDR             R0, =(g_ikChainMan_ptr - 0x51A0CE)
51A0C2:  MOVS            R1, #5
51A0C4:  LDR             R3, [R4,#0xC]; int
51A0C6:  MOVW            R2, #0x1388
51A0CA:  ADD             R0, PC; g_ikChainMan_ptr
51A0CC:  MOVW            R8, #0x999A
51A0D0:  STRD.W          R2, R1, [SP,#0x38+var_38]; int
51A0D4:  ADR             R1, aTasksignalatpe; "TaskSignalAtPed"
51A0D6:  LDR             R0, [R0]; g_ikChainMan ; int
51A0D8:  MOV.W           R9, #1
51A0DC:  MOV             R2, R5; CPed *
51A0DE:  MOV.W           R12, #3
51A0E2:  MOV.W           LR, #0x1F4
51A0E6:  MOVT            R8, #0x3E19
51A0EA:  STRD.W          R6, R9, [SP,#0x38+var_30]; int
51A0EE:  STRD.W          R8, LR, [SP,#0x38+var_28]; float
51A0F2:  STRD.W          R12, R6, [SP,#0x38+var_20]; int
51A0F6:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
51A0FA:  MOVS            R0, #word_28; this
51A0FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51A100:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x51A10A)
51A102:  MOV             R6, R0
51A104:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51A10C)
51A106:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
51A108:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
51A10A:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51A10C:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51A10E:  LDR             R1, [R4,#0xC]; CEntity *
51A110:  LDR             R3, [R3]; float
51A112:  LDR             R2, [R0]; float
51A114:  MOV             R0, R6; this
51A116:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
51A11A:  MOV             R0, R6
51A11C:  ADD             SP, SP, #0x20 ; ' '
51A11E:  POP.W           {R8,R9,R11}
51A122:  POP             {R4-R7,PC}
