; =========================================================
; Game Engine Function: _ZN10Interior_c22Shop_GetRandomUnitTypeEv
; Address            : 0x44E56C - 0x44E5B0
; =========================================================

44E56C:  PUSH            {R7,LR}
44E56E:  MOV             R7, SP
44E570:  BLX             rand
44E574:  UXTH            R0, R0
44E576:  VLDR            S2, =0.000015259
44E57A:  VMOV            S0, R0
44E57E:  VCVT.F32.S32    S0, S0
44E582:  VMUL.F32        S0, S0, S2
44E586:  VLDR            S2, =100.0
44E58A:  VMUL.F32        S0, S0, S2
44E58E:  VCVT.S32.F32    S0, S0
44E592:  VMOV            R1, S0
44E596:  CMP             R1, #0x32 ; '2'
44E598:  ITT GT
44E59A:  MOVGT           R0, #0
44E59C:  POPGT           {R7,PC}
44E59E:  CMP             R1, #0x19
44E5A0:  ITT GT
44E5A2:  MOVGT           R0, #3
44E5A4:  POPGT           {R7,PC}
44E5A6:  MOVS            R0, #9
44E5A8:  CMP             R1, #0xA
44E5AA:  IT GT
44E5AC:  MOVGT           R0, #6
44E5AE:  POP             {R7,PC}
