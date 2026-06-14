; =========================================================
; Game Engine Function: _Z9SayJackedP4CPedP8CVehiclej
; Address            : 0x504510 - 0x504554
; =========================================================

504510:  PUSH            {R4-R7,LR}
504512:  ADD             R7, SP, #0xC
504514:  PUSH.W          {R11}
504518:  SUB             SP, SP, #0x10
50451A:  MOV             R5, R0
50451C:  ADD.W           R0, R1, #0x13C; this
504520:  MOV             R4, R2
504522:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
504526:  MOVS            R6, #0
504528:  CMP             R0, #0
50452A:  MOV.W           R1, #0x77 ; 'w'
50452E:  STRD.W          R6, R6, [SP,#0x20+var_20]; unsigned __int8
504532:  STR             R6, [SP,#0x20+var_18]; unsigned __int8
504534:  IT EQ
504536:  MOVEQ           R1, #0x76 ; 'v'; unsigned __int16
504538:  MOV             R0, R5; this
50453A:  MOV             R2, R4; unsigned int
50453C:  MOV.W           R3, #0x3F800000; float
504540:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
504544:  ADDS            R0, #1
504546:  IT NE
504548:  MOVNE           R6, #1
50454A:  MOV             R0, R6
50454C:  ADD             SP, SP, #0x10
50454E:  POP.W           {R11}
504552:  POP             {R4-R7,PC}
