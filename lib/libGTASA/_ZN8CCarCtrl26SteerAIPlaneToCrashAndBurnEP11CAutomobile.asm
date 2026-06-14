; =========================================================
; Game Engine Function: _ZN8CCarCtrl26SteerAIPlaneToCrashAndBurnEP11CAutomobile
; Address            : 0x2F65BE - 0x2F65F8
; =========================================================

2F65BE:  VMOV.F32        S2, #1.0
2F65C2:  LDRH            R1, [R0,#0x24]
2F65C4:  VMOV.F32        S0, #-1.0
2F65C8:  TST.W           R1, #1
2F65CC:  MOV             R1, #0xBE99999A
2F65D4:  IT NE
2F65D6:  VMOVNE.F32      S0, S2
2F65DA:  STR.W           R1, [R0,#0x9A0]
2F65DE:  MOV.W           R1, #0x80000000
2F65E2:  STR.W           R1, [R0,#0x9A8]
2F65E6:  ADDW            R1, R0, #0x99C
2F65EA:  ADDW            R0, R0, #0x9A4
2F65EE:  VSTR            S0, [R1]
2F65F2:  VSTR            S0, [R0]
2F65F6:  BX              LR
