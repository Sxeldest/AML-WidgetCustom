; =========================================================
; Game Engine Function: sub_615E4
; Address            : 0x615E4 - 0x6161E
; =========================================================

615E4:  PUSH            {R4,R6,R7,LR}
615E6:  ADD             R7, SP, #8
615E8:  LDR             R4, =(off_114B08 - 0x615EE)
615EA:  ADD             R4, PC; off_114B08
615EC:  LDR             R4, [R4]; dword_1A4488
615EE:  LDR             R4, [R4]
615F0:  SUB.W           R12, R4, #1
615F4:  CMP.W           R12, #6
615F8:  BHI             loc_61608
615FA:  LDR             R3, =(unk_5094C - 0x61600)
615FC:  ADD             R3, PC; unk_5094C
615FE:  ADD.W           R3, R3, R12,LSL#2
61602:  VLDR            S0, [R3]
61606:  B               loc_6160C
61608:  VMOV            S0, R3
6160C:  LDR             R4, =(off_117648 - 0x61616)
6160E:  VMOV            R3, S0
61612:  ADD             R4, PC; off_117648
61614:  LDR.W           R12, [R4]
61618:  POP.W           {R4,R6,R7,LR}
6161C:  BX              R12
