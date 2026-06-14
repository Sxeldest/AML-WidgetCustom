; =========================================================
; Game Engine Function: _ZN9CGangWars27CalculateTimeTillNextAttackEv
; Address            : 0x30B194 - 0x30B1CE
; =========================================================

30B194:  PUSH            {R7,LR}
30B196:  MOV             R7, SP
30B198:  BLX             rand
30B19C:  VMOV            S0, R0
30B1A0:  VLDR            S2, =4.6566e-10
30B1A4:  VCVT.F32.S32    S0, S0
30B1A8:  VMUL.F32        S0, S0, S2
30B1AC:  VLDR            S2, =0.9
30B1B0:  VMUL.F32        S0, S0, S2
30B1B4:  VLDR            S2, =0.6
30B1B8:  VADD.F32        S0, S0, S2
30B1BC:  VLDR            S2, =1080000.0
30B1C0:  VMUL.F32        S0, S0, S2
30B1C4:  VCVT.U32.F32    S0, S0
30B1C8:  VMOV            R0, S0
30B1CC:  POP             {R7,PC}
