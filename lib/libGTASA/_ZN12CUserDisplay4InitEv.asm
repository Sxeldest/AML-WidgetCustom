; =========================================================
; Game Engine Function: _ZN12CUserDisplay4InitEv
; Address            : 0x42137C - 0x4213A0
; =========================================================

42137C:  PUSH            {R4,R6,R7,LR}
42137E:  ADD             R7, SP, #8
421380:  LDR             R0, =(_ZN12CUserDisplay9PlaceNameE_ptr - 0x42138A)
421382:  MOVS            R4, #0
421384:  LDR             R1, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x42138C)
421386:  ADD             R0, PC; _ZN12CUserDisplay9PlaceNameE_ptr
421388:  ADD             R1, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
42138A:  LDR             R2, [R0]; CUserDisplay::PlaceName ...
42138C:  LDR             R0, [R1]; this
42138E:  STRH            R4, [R2,#(word_96B53C - 0x96B538)]
421390:  STR             R4, [R2]; CUserDisplay::PlaceName
421392:  BLX             j__ZN14COnscreenTimer4InitEv; COnscreenTimer::Init(void)
421396:  LDR             R0, =(_ZN12CUserDisplay14CurrentVehicleE_ptr - 0x42139C)
421398:  ADD             R0, PC; _ZN12CUserDisplay14CurrentVehicleE_ptr
42139A:  LDR             R0, [R0]; CUserDisplay::CurrentVehicle ...
42139C:  STR             R4, [R0]; CUserDisplay::CurrentVehicle
42139E:  POP             {R4,R6,R7,PC}
