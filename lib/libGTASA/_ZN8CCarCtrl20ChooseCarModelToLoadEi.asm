; =========================================================
; Game Engine Function: _ZN8CCarCtrl20ChooseCarModelToLoadEi
; Address            : 0x2EC420 - 0x2EC4A0
; =========================================================

2EC420:  PUSH            {R4-R7,LR}
2EC422:  ADD             R7, SP, #0xC
2EC424:  PUSH.W          {R8-R10}
2EC428:  VPUSH           {D8}
2EC42C:  MOV             R9, R0
2EC42E:  LDR             R0, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2EC43A)
2EC430:  MOVS            R1, #0x2E ; '.'
2EC432:  VLDR            S16, =0.000015259
2EC436:  ADD             R0, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2EC438:  MOV.W           R5, #0xFFFFFFFF
2EC43C:  LDR.W           R8, [R0]; CPopulation::m_nNumCarsInGroup ...
2EC440:  LDR             R0, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2EC446)
2EC442:  ADD             R0, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2EC444:  LDR             R0, [R0]; CPopulation::m_CarGroups ...
2EC446:  MLA.W           R10, R9, R1, R0
2EC44A:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2EC450)
2EC44C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2EC44E:  LDR             R4, [R0]; CStreaming::ms_aInfoForModel ...
2EC450:  LDRSH.W         R6, [R8,R9,LSL#1]
2EC454:  BLX             rand
2EC458:  UXTH            R0, R0
2EC45A:  VMOV            S2, R6
2EC45E:  VMOV            S0, R0
2EC462:  VCVT.F32.S32    S0, S0
2EC466:  VCVT.F32.S32    S2, S2
2EC46A:  VMUL.F32        S0, S0, S16
2EC46E:  VMUL.F32        S0, S0, S2
2EC472:  VCVT.S32.F32    S0, S0
2EC476:  VMOV            R0, S0
2EC47A:  LDRH.W          R0, [R10,R0,LSL#1]
2EC47E:  ADD.W           R1, R0, R0,LSL#2
2EC482:  ADD.W           R1, R4, R1,LSL#2
2EC486:  LDRB            R1, [R1,#0x10]
2EC488:  CMP             R1, #1
2EC48A:  BNE             loc_2EC496
2EC48C:  ADDS            R5, #1
2EC48E:  CMP             R5, #0xE
2EC490:  BLE             loc_2EC450
2EC492:  MOV.W           R0, #0xFFFFFFFF
2EC496:  VPOP            {D8}
2EC49A:  POP.W           {R8-R10}
2EC49E:  POP             {R4-R7,PC}
