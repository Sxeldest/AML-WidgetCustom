; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespond17CreateNextSubTaskEP4CPed
; Address            : 0x51B1D0 - 0x51B23C
; =========================================================

51B1D0:  PUSH            {R4,R6,R7,LR}
51B1D2:  ADD             R7, SP, #8
51B1D4:  SUB             SP, SP, #8
51B1D6:  MOV             R4, R0
51B1D8:  LDR             R0, [R4,#8]
51B1DA:  LDR             R1, [R0]
51B1DC:  LDR             R1, [R1,#0x14]
51B1DE:  BLX             R1
51B1E0:  CMP.W           R0, #0x190
51B1E4:  BNE             loc_51B1EC
51B1E6:  MOVS            R0, #0
51B1E8:  ADD             SP, SP, #8
51B1EA:  POP             {R4,R6,R7,PC}
51B1EC:  LDRB            R0, [R4,#0xD]
51B1EE:  CBZ             R0, loc_51B216
51B1F0:  MOVS            R0, #dword_20; this
51B1F2:  LDRB            R4, [R4,#0xC]
51B1F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B1F8:  MOVS            R1, #0
51B1FA:  CMP             R4, #1
51B1FC:  STR             R1, [SP,#0x10+var_10]
51B1FE:  ITE EQ
51B200:  MOVEQ.W         R2, #0x132
51B204:  MOVWNE          R2, #0x133
51B208:  MOVS            R1, #0x34 ; '4'
51B20A:  MOV.W           R3, #0x40800000
51B20E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
51B212:  ADD             SP, SP, #8
51B214:  POP             {R4,R6,R7,PC}
51B216:  LDR             R0, [R4,#0x10]
51B218:  CMP             R0, #9
51B21A:  ADD.W           R1, R0, #1; unsigned int
51B21E:  STR             R1, [R4,#0x10]
51B220:  BGT             loc_51B1E6
51B222:  MOVS            R0, #dword_20; this
51B224:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B228:  MOV.W           R1, #0x41000000
51B22C:  MOVS            R2, #0; bool
51B22E:  STR             R1, [SP,#0x10+var_10]; float
51B230:  MOVS            R1, #0xFA; int
51B232:  MOVS            R3, #0; bool
51B234:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
51B238:  ADD             SP, SP, #8
51B23A:  POP             {R4,R6,R7,PC}
