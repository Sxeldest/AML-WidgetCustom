; =========================================================
; Game Engine Function: _ZN8CCarCtrl37ScriptGenerateOneEmergencyServicesCarEj7CVector
; Address            : 0x2FB61C - 0x2FB678
; =========================================================

2FB61C:  PUSH            {R4,R6,R7,LR}
2FB61E:  ADD             R7, SP, #8
2FB620:  SUB             SP, SP, #0x10; bool
2FB622:  LDR             R4, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2FB62C)
2FB624:  STMEA.W         SP, {R1-R3}
2FB628:  ADD             R4, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2FB62A:  LDR.W           R12, [R4]; CStreaming::ms_aInfoForModel ...
2FB62E:  ADD.W           R4, R0, R0,LSL#2
2FB632:  ADD.W           R4, R12, R4,LSL#2
2FB636:  LDRB            R4, [R4,#0x10]
2FB638:  CMP             R4, #1
2FB63A:  BNE             loc_2FB672
2FB63C:  BLX             j__ZN8CCarCtrl31GenerateOneEmergencyServicesCarEj7CVector; CCarCtrl::GenerateOneEmergencyServicesCar(uint,CVector)
2FB640:  MOV             R4, R0
2FB642:  CBZ             R4, loc_2FB672
2FB644:  VLDR            D16, [SP,#0x18+var_18]
2FB648:  MOV             R1, SP; CVehicle *
2FB64A:  LDR             R0, [SP,#0x18+var_10]
2FB64C:  MOVS            R2, #0; CVector *
2FB64E:  STR.W           R0, [R4,#0x3F8]
2FB652:  MOV             R0, R4; this
2FB654:  MOVS            R3, #0; bool
2FB656:  VSTR            D16, [R4,#0x3F0]
2FB65A:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2FB65E:  CMP             R0, #0
2FB660:  MOV.W           R1, #8
2FB664:  IT NE
2FB666:  MOVNE           R1, #9
2FB668:  MOVS            R0, #1
2FB66A:  STRB.W          R1, [R4,#0x3BE]
2FB66E:  ADD             SP, SP, #0x10
2FB670:  POP             {R4,R6,R7,PC}
2FB672:  MOVS            R0, #0
2FB674:  ADD             SP, SP, #0x10
2FB676:  POP             {R4,R6,R7,PC}
