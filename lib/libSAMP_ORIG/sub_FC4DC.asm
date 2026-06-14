; =========================================================
; Game Engine Function: sub_FC4DC
; Address            : 0xFC4DC - 0xFC50C
; =========================================================

FC4DC:  PUSH            {R4,R6,R7,LR}
FC4DE:  ADD             R7, SP, #8
FC4E0:  ORR.W           R1, R0, #1
FC4E4:  LDR             R4, =(unk_5E1B0 - 0xFC4F6)
FC4E6:  CLZ.W           R1, R1
FC4EA:  MOVW            R2, #0x4D1
FC4EE:  RSB.W           R1, R1, #0x20 ; ' '
FC4F2:  ADD             R4, PC; unk_5E1B0
FC4F4:  MULS            R1, R2
FC4F6:  MOV.W           R2, #0xFFFFFFFF
FC4FA:  LSRS            R3, R1, #0xC
FC4FC:  LDR.W           R4, [R4,R3,LSL#2]
FC500:  CMP             R4, R0
FC502:  IT HI
FC504:  ADDHI.W         R3, R2, R1,LSR#12
FC508:  ADDS            R0, R3, #1
FC50A:  POP             {R4,R6,R7,PC}
