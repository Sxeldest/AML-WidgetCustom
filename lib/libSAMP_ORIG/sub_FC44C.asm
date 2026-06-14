; =========================================================
; Game Engine Function: sub_FC44C
; Address            : 0xFC44C - 0xFC47C
; =========================================================

FC44C:  PUSH            {R4,R6,R7,LR}
FC44E:  ADD             R7, SP, #8
FC450:  ORR.W           R1, R0, #1
FC454:  LDR             R4, =(unk_5E1B0 - 0xFC466)
FC456:  CLZ.W           R1, R1
FC45A:  MOVW            R2, #0x4D1
FC45E:  RSB.W           R1, R1, #0x20 ; ' '
FC462:  ADD             R4, PC; unk_5E1B0
FC464:  MULS            R1, R2
FC466:  MOV.W           R2, #0xFFFFFFFF
FC46A:  LSRS            R3, R1, #0xC
FC46C:  LDR.W           R4, [R4,R3,LSL#2]
FC470:  CMP             R4, R0
FC472:  IT HI
FC474:  ADDHI.W         R3, R2, R1,LSR#12
FC478:  ADDS            R0, R3, #1
FC47A:  POP             {R4,R6,R7,PC}
