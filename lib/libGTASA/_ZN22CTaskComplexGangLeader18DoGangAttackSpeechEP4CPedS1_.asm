; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader18DoGangAttackSpeechEP4CPedS1_
; Address            : 0x516380 - 0x5163E6
; =========================================================

516380:  PUSH            {R4,R5,R7,LR}
516382:  ADD             R7, SP, #8
516384:  SUB             SP, SP, #0x10
516386:  MOV             R4, R0
516388:  CMP             R4, #0
51638A:  MOV             R5, R1
51638C:  IT NE
51638E:  CMPNE           R5, #0
516390:  BEQ             loc_5163E2
516392:  LDR.W           R0, [R4,#0x59C]
516396:  SUBS            R0, #7
516398:  CMP             R0, #9
51639A:  BHI             loc_5163E2
51639C:  LDR.W           R0, [R5,#0x59C]
5163A0:  SUBS            R1, R0, #7
5163A2:  CMP             R1, #0xA
5163A4:  BCC             loc_5163B4
5163A6:  MOVS            R0, #0; int
5163A8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5163AC:  CMP             R0, R5
5163AE:  BNE             loc_5163E2
5163B0:  LDR.W           R0, [R5,#0x59C]
5163B4:  CMP             R0, #0xE
5163B6:  BEQ             loc_5163C6
5163B8:  CMP             R0, #9
5163BA:  BEQ             loc_5163CC
5163BC:  CMP             R0, #7
5163BE:  BNE             loc_5163E2
5163C0:  MOVS            R0, #0
5163C2:  MOVS            R1, #0x11
5163C4:  B               loc_5163D0
5163C6:  MOVS            R0, #0
5163C8:  MOVS            R1, #0x13
5163CA:  B               loc_5163D0
5163CC:  MOVS            R0, #0
5163CE:  MOVS            R1, #0x12; unsigned __int16
5163D0:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
5163D4:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
5163D6:  MOV             R0, R4; this
5163D8:  MOVS            R2, #0; unsigned int
5163DA:  MOV.W           R3, #0x3F800000; float
5163DE:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5163E2:  ADD             SP, SP, #0x10
5163E4:  POP             {R4,R5,R7,PC}
