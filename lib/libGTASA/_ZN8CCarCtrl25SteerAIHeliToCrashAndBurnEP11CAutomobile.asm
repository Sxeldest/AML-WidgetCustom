; =========================================================
; Game Engine Function: _ZN8CCarCtrl25SteerAIHeliToCrashAndBurnEP11CAutomobile
; Address            : 0x2F65F8 - 0x2F6642
; =========================================================

2F65F8:  ADDW            R1, R0, #0xA28
2F65FC:  VMOV.F32        S6, #1.0
2F6600:  VMOV.F32        S0, #-1.0
2F6604:  VLDR            S2, [R1]
2F6608:  LDRH            R1, [R0,#0x24]
2F660A:  VNEG.F32        S4, S2
2F660E:  ANDS.W          R1, R1, #1
2F6612:  MOV             R1, #0xBE99999A
2F661A:  ITT NE
2F661C:  VMOVNE.F32      S0, S6
2F6620:  VMOVNE.F32      S4, S2
2F6624:  STR.W           R1, [R0,#0x9A4]
2F6628:  MOV.W           R1, #0xBF000000
2F662C:  STR.W           R1, [R0,#0x9AC]
2F6630:  ADDW            R1, R0, #0x9A8
2F6634:  ADD.W           R0, R0, #0x9A0
2F6638:  VSTR            S0, [R1]
2F663C:  VSTR            S4, [R0]
2F6640:  BX              LR
