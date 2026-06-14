; =========================================================
; Game Engine Function: _ZN8CPedList32RemovePedsThatDontListenToPlayerEv
; Address            : 0x5484D4 - 0x548536
; =========================================================

5484D4:  LDR             R1, [R0]
5484D6:  CMP             R1, #1
5484D8:  BLT             loc_5484FA
5484DA:  ADDS            R2, R0, #4
5484DC:  MOV.W           R12, #0
5484E0:  LDR             R3, [R2]
5484E2:  LDRB.W          R3, [R3,#0x48C]
5484E6:  LSLS            R3, R3, #0x1A
5484E8:  ITTTT MI
5484EA:  STRMI.W         R12, [R2]
5484EE:  LDRMI           R3, [R0]
5484F0:  SUBMI           R3, #1
5484F2:  STRMI           R3, [R0]
5484F4:  ADDS            R2, #4
5484F6:  SUBS            R1, #1
5484F8:  BNE             loc_5484E0
5484FA:  MOV.W           R12, #0
5484FE:  MOVS            R2, #1
548500:  LDR.W           R3, [R0,R2,LSL#2]
548504:  ADDS            R2, #1
548506:  CMP             R3, #0
548508:  ITTT NE
54850A:  ADDNE.W         R1, R0, R12,LSL#2
54850E:  STRNE           R3, [R1,#4]
548510:  ADDNE.W         R12, R12, #1
548514:  CMP             R2, #0x1F
548516:  BNE             loc_548500
548518:  CMP.W           R12, #0x1D
54851C:  IT GT
54851E:  BXGT            LR
548520:  PUSH            {R7,LR}
548522:  MOV             R7, SP
548524:  ADD.W           R0, R0, R12,LSL#2
548528:  RSB.W           R1, R12, #0x1E
54852C:  ADDS            R0, #4
54852E:  LSLS            R1, R1, #2
548530:  BLX             j___aeabi_memclr8_0
548534:  POP             {R7,PC}
