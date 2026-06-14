; =========================================================
; Game Engine Function: _ZN8CPedList11FillUpHolesEv
; Address            : 0x548536 - 0x548576
; =========================================================

548536:  MOV.W           R12, #0
54853A:  MOVS            R2, #1
54853C:  LDR.W           R3, [R0,R2,LSL#2]
548540:  ADDS            R2, #1
548542:  CMP             R3, #0
548544:  ITTT NE
548546:  ADDNE.W         R1, R0, R12,LSL#2
54854A:  STRNE           R3, [R1,#4]
54854C:  ADDNE.W         R12, R12, #1
548550:  CMP             R2, #0x1F
548552:  BNE             loc_54853C
548554:  CMP.W           R12, #0x1D
548558:  IT GT
54855A:  BXGT            LR
54855C:  PUSH            {R7,LR}
54855E:  MOV             R7, SP
548560:  ADD.W           R0, R0, R12,LSL#2
548564:  RSB.W           R1, R12, #0x1E
548568:  ADDS            R0, #4
54856A:  LSLS            R1, R1, #2
54856C:  BLX             j___aeabi_memclr8_0
548570:  POP.W           {R7,LR}
548574:  BX              LR
