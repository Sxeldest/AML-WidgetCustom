; =========================================================
; Game Engine Function: _ZN29CTaskComplexEnterBoatAsDriver17CreateNextSubTaskEP4CPed
; Address            : 0x4F83F4 - 0x4F8440
; =========================================================

4F83F4:  PUSH            {R4,R6,R7,LR}
4F83F6:  ADD             R7, SP, #8
4F83F8:  MOV             R4, R0
4F83FA:  LDR             R0, [R4,#8]
4F83FC:  LDR             R1, [R0]
4F83FE:  LDR             R1, [R1,#0x14]
4F8400:  BLX             R1
4F8402:  MOVW            R1, #0x33F
4F8406:  CMP             R0, R1
4F8408:  BEQ             loc_4F8422
4F840A:  MOVW            R1, #0x33E
4F840E:  CMP             R0, R1
4F8410:  BEQ             loc_4F8428
4F8412:  CMP.W           R0, #0x32C
4F8416:  ITT NE
4F8418:  MOVNE           R0, #0
4F841A:  POPNE           {R4,R6,R7,PC}
4F841C:  MOVW            R1, #0x516
4F8420:  B               loc_4F8438
4F8422:  MOV.W           R1, #0x32C
4F8426:  B               loc_4F8438
4F8428:  LDR             R0, [R4,#8]
4F842A:  MOVW            R1, #0x516
4F842E:  LDRB            R0, [R0,#0x1C]
4F8430:  CMP             R0, #0
4F8432:  IT NE
4F8434:  MOVWNE          R1, #0x33F; int
4F8438:  MOV             R0, R4; this
4F843A:  POP.W           {R4,R6,R7,LR}
4F843E:  B               _ZNK29CTaskComplexEnterBoatAsDriver13CreateSubTaskEi; CTaskComplexEnterBoatAsDriver::CreateSubTask(int)
