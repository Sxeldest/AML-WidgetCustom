; =========================================================
; Game Engine Function: _Z10SayJackingP4CPedS0_P8CVehiclej
; Address            : 0x5044AC - 0x504510
; =========================================================

5044AC:  PUSH            {R4-R7,LR}
5044AE:  ADD             R7, SP, #0xC
5044B0:  PUSH.W          {R8}
5044B4:  SUB             SP, SP, #0x10
5044B6:  ADD.W           R4, R2, #0x13C
5044BA:  MOV             R5, R0
5044BC:  MOV             R8, R3
5044BE:  MOV             R6, R1
5044C0:  MOV             R0, R4; this
5044C2:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5044C6:  CMP             R0, #1
5044C8:  BNE             loc_5044CE
5044CA:  MOVS            R1, #0x79 ; 'y'
5044CC:  B               loc_5044EA
5044CE:  MOV             R0, R4; this
5044D0:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5044D4:  CBZ             R0, loc_5044DA
5044D6:  MOVS            R1, #0x7C ; '|'
5044D8:  B               loc_5044EA
5044DA:  ADD.W           R0, R6, #0x298; this
5044DE:  BLX             j__ZN23CAEPedSpeechAudioEntity19IsPedFemaleForAudioEv; CAEPedSpeechAudioEntity::IsPedFemaleForAudio(void)
5044E2:  MOVS            R1, #0x7A ; 'z'
5044E4:  CMP             R0, #0
5044E6:  IT EQ
5044E8:  MOVEQ           R1, #0x7B ; '{'
5044EA:  MOVS            R4, #0
5044EC:  UXTH            R1, R1; unsigned __int16
5044EE:  MOV             R0, R5; this
5044F0:  MOV             R2, R8; unsigned int
5044F2:  MOV.W           R3, #0x3F800000; float
5044F6:  STRD.W          R4, R4, [SP,#0x20+var_20]; unsigned __int8
5044FA:  STR             R4, [SP,#0x20+var_18]; unsigned __int8
5044FC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
504500:  ADDS            R0, #1
504502:  IT NE
504504:  MOVNE           R4, #1
504506:  MOV             R0, R4
504508:  ADD             SP, SP, #0x10
50450A:  POP.W           {R8}
50450E:  POP             {R4-R7,PC}
