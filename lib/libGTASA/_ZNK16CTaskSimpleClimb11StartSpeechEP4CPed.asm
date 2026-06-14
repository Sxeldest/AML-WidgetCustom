; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleClimb11StartSpeechEP4CPed
; Address            : 0x52E508 - 0x52E54C
; =========================================================

52E508:  PUSH            {R4,R5,R7,LR}
52E50A:  ADD             R7, SP, #8
52E50C:  SUB             SP, SP, #0x10
52E50E:  MOV             R4, R1
52E510:  MOV             R5, R0
52E512:  MOV             R0, R4; this
52E514:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52E518:  CMP             R0, #1
52E51A:  BNE             loc_52E548
52E51C:  LDRSB.W         R0, [R5,#0xD]
52E520:  CMP             R0, #3
52E522:  BEQ             loc_52E530
52E524:  CMP             R0, #2
52E526:  BNE             loc_52E548
52E528:  MOVS            R0, #0
52E52A:  MOV.W           R1, #0x162
52E52E:  B               loc_52E536
52E530:  MOVS            R0, #0
52E532:  MOVW            R1, #0x163; unsigned __int16
52E536:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
52E53A:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
52E53C:  MOV             R0, R4; this
52E53E:  MOVS            R2, #0; unsigned int
52E540:  MOV.W           R3, #0x3F800000; float
52E544:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
52E548:  ADD             SP, SP, #0x10
52E54A:  POP             {R4,R5,R7,PC}
