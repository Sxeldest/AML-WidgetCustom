; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUp17CreateNextSubTaskEP4CPed
; Address            : 0x50B358 - 0x50B3C8
; =========================================================

50B358:  PUSH            {R4,R5,R7,LR}
50B35A:  ADD             R7, SP, #8
50B35C:  MOV             R4, R0
50B35E:  MOV             R5, R1
50B360:  LDR             R0, [R4,#8]
50B362:  LDR             R1, [R0]
50B364:  LDR             R1, [R1,#0x14]
50B366:  BLX             R1
50B368:  CMP.W           R0, #0x1F6
50B36C:  BGT             loc_50B37C
50B36E:  CMP             R0, #0xCA
50B370:  BEQ             loc_50B396
50B372:  CMP             R0, #0xCD
50B374:  BNE             loc_50B392
50B376:  MOVW            R1, #0x516
50B37A:  B               loc_50B3C0
50B37C:  MOVW            R1, #0x1F7
50B380:  CMP             R0, R1
50B382:  BEQ             loc_50B3BE
50B384:  MOVW            R1, #0x386
50B388:  CMP             R0, R1
50B38A:  BNE             loc_50B392
50B38C:  MOVW            R1, #0x1F7
50B390:  B               loc_50B3C0
50B392:  MOVS            R0, #0
50B394:  POP             {R4,R5,R7,PC}
50B396:  LDR.W           R0, [R5,#0x55C]; this
50B39A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
50B39E:  VMOV            S2, R0
50B3A2:  VLDR            S0, =-1.5708
50B3A6:  ADDW            R0, R5, #0x55C
50B3AA:  MOVS            R1, #0xCD
50B3AC:  VADD.F32        S0, S2, S0
50B3B0:  VSTR            S0, [R0]
50B3B4:  ADD.W           R0, R5, #0x560
50B3B8:  VSTR            S0, [R0]
50B3BC:  B               loc_50B3C0
50B3BE:  MOVS            R1, #0xCA; int
50B3C0:  MOV             R0, R4; this
50B3C2:  POP.W           {R4,R5,R7,LR}
50B3C6:  B               _ZNK31CTaskComplexEvasiveDiveAndGetUp13CreateSubTaskEi; CTaskComplexEvasiveDiveAndGetUp::CreateSubTask(int)
