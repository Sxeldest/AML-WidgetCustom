; =========================================================
; Game Engine Function: sub_F82F8
; Address            : 0xF82F8 - 0xF8336
; =========================================================

F82F8:  LDR             R1, =(unk_242B4C - 0xF8302)
F82FA:  VLDR            S0, =35.0
F82FE:  ADD             R1, PC; unk_242B4C
F8300:  ADD.W           R1, R1, R0,LSL#2
F8304:  VLDR            S2, [R1]
F8308:  LDR             R1, =(dword_2402D4 - 0xF8314)
F830A:  VMLA.F32        S0, S2, S0
F830E:  LDR             R2, =(unk_242E94 - 0xF831A)
F8310:  ADD             R1, PC; dword_2402D4
F8312:  VMOV.F32        S2, #1.0
F8316:  ADD             R2, PC; unk_242E94
F8318:  LDR             R1, [R1]
F831A:  ADD.W           R0, R2, R0,LSL#2
F831E:  VSTR            S0, [R1]
F8322:  VLDR            S0, [R0]
F8326:  LDR             R0, =(dword_2402D8 - 0xF8330)
F8328:  VADD.F32        S0, S0, S2
F832C:  ADD             R0, PC; dword_2402D8
F832E:  LDR             R0, [R0]
F8330:  VSTR            S0, [R0]
F8334:  BX              LR
