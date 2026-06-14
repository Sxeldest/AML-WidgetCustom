; =========================================================
; Game Engine Function: _ZN29CTaskComplexWaitForDryWeather9SerializeEv
; Address            : 0x4F366C - 0x4F36D0
; =========================================================

4F366C:  PUSH            {R4-R7,LR}
4F366E:  ADD             R7, SP, #0xC
4F3670:  PUSH.W          {R11}
4F3674:  MOV             R4, R0
4F3676:  LDR             R0, [R4]
4F3678:  LDR             R1, [R0,#0x14]
4F367A:  MOV             R0, R4
4F367C:  BLX             R1
4F367E:  MOV             R5, R0
4F3680:  LDR             R0, =(UseDataFence_ptr - 0x4F3686)
4F3682:  ADD             R0, PC; UseDataFence_ptr
4F3684:  LDR             R0, [R0]; UseDataFence
4F3686:  LDRB            R0, [R0]
4F3688:  CMP             R0, #0
4F368A:  IT NE
4F368C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3690:  MOVS            R0, #4; byte_count
4F3692:  BLX             malloc
4F3696:  MOV             R6, R0
4F3698:  MOVS            R1, #byte_4; void *
4F369A:  STR             R5, [R6]
4F369C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F36A0:  MOV             R0, R6; p
4F36A2:  BLX             free
4F36A6:  LDR             R0, [R4]
4F36A8:  LDR             R1, [R0,#0x14]
4F36AA:  MOV             R0, R4
4F36AC:  BLX             R1
4F36AE:  CMP             R0, #0xEC
4F36B0:  ITT EQ
4F36B2:  POPEQ.W         {R11}
4F36B6:  POPEQ           {R4-R7,PC}
4F36B8:  LDR             R0, [R4]
4F36BA:  LDR             R1, [R0,#0x14]
4F36BC:  MOV             R0, R4
4F36BE:  BLX             R1
4F36C0:  MOV             R1, R0; int
4F36C2:  MOVS            R0, #0xEC; int
4F36C4:  POP.W           {R11}
4F36C8:  POP.W           {R4-R7,LR}
4F36CC:  B.W             sub_1941D4
