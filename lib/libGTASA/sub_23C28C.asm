; =========================================================
; Game Engine Function: sub_23C28C
; Address            : 0x23C28C - 0x23C2C4
; =========================================================

23C28C:  MOVW            R1, #0xB334
23C290:  MOVS            R2, #0
23C292:  STR             R2, [R0,R1]
23C294:  MOVW            R1, #0xB330
23C298:  VMOV.I32        Q8, #0
23C29C:  STR             R2, [R0,R1]
23C29E:  MOVW            R1, #0xB2E8
23C2A2:  STR             R2, [R0,R1]
23C2A4:  MOVW            R1, #0xB2E4
23C2A8:  STR             R2, [R0,R1]
23C2AA:  MOVW            R2, #0xB320
23C2AE:  MOVW            R1, #0xB2F4
23C2B2:  LDR             R3, [R0,R1]
23C2B4:  ADD             R2, R0
23C2B6:  VST1.32         {D16-D17}, [R2]
23C2BA:  ORR.W           R2, R3, #8
23C2BE:  STR             R2, [R0,R1]
23C2C0:  MOVS            R0, #0
23C2C2:  BX              LR
