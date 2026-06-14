; =========================================================
; Game Engine Function: _ZN12CUserDisplay7ProcessEv
; Address            : 0x4213AC - 0x42142C
; =========================================================

4213AC:  PUSH            {R7,LR}
4213AE:  MOV             R7, SP
4213B0:  LDR             R0, =(_ZN12CUserDisplay9PlaceNameE_ptr - 0x4213B6)
4213B2:  ADD             R0, PC; _ZN12CUserDisplay9PlaceNameE_ptr
4213B4:  LDR             R0, [R0]; CUserDisplay::PlaceName ...
4213B6:  NOP
4213B8:  NOP
4213BA:  LDR             R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x4213C0)
4213BC:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
4213BE:  LDR             R0, [R0]; this
4213C0:  BLX             j__ZN14COnscreenTimer7ProcessEv; COnscreenTimer::Process(void)
4213C4:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4213D0)
4213C6:  MOV.W           R2, #0x194
4213CA:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4213D2)
4213CC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4213CE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4213D0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4213D2:  LDR             R1, [R1]; CWorld::Players ...
4213D4:  LDR             R0, [R0]; CWorld::PlayerInFocus
4213D6:  SMULBB.W        R0, R0, R2
4213DA:  LDR             R0, [R1,R0]
4213DC:  LDRB.W          R1, [R0,#0x485]
4213E0:  LSLS            R1, R1, #0x1F
4213E2:  BNE             loc_4213F0
4213E4:  LDR             R0, =(_ZN12CUserDisplay14CurrentVehicleE_ptr - 0x4213EC)
4213E6:  MOVS            R1, #0; unsigned __int16 *
4213E8:  ADD             R0, PC; _ZN12CUserDisplay14CurrentVehicleE_ptr
4213EA:  LDR             R0, [R0]; CUserDisplay::CurrentVehicle ...
4213EC:  STR             R1, [R0]; CUserDisplay::CurrentVehicle
4213EE:  B               loc_421422
4213F0:  LDR             R1, =(_ZN12CUserDisplay14CurrentVehicleE_ptr - 0x4213FA)
4213F2:  LDR.W           R0, [R0,#0x590]
4213F6:  ADD             R1, PC; _ZN12CUserDisplay14CurrentVehicleE_ptr
4213F8:  CMP             R0, #0
4213FA:  LDR             R1, [R1]; CUserDisplay::CurrentVehicle ...
4213FC:  STR             R0, [R1]; CUserDisplay::CurrentVehicle
4213FE:  BEQ             loc_421422
421400:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x421408)
421402:  LDR             R2, =(TheText_ptr - 0x42140E)
421404:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
421406:  LDRSH.W         R0, [R0,#0x26]
42140A:  ADD             R2, PC; TheText_ptr
42140C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
42140E:  LDR.W           R1, [R1,R0,LSL#2]
421412:  LDR             R0, [R2]; TheText ; this
421414:  ADDS            R1, #0x4A ; 'J'; CKeyGen *
421416:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42141A:  POP.W           {R7,LR}
42141E:  B.W             sub_18E4AC
421422:  MOVS            R0, #0; this
421424:  POP.W           {R7,LR}
421428:  B.W             sub_18E4AC
