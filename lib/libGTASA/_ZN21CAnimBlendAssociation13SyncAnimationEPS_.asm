; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation13SyncAnimationEPS_
; Address            : 0x389FF6 - 0x38A014
; =========================================================

389FF6:  LDR             R2, [R1,#0x14]
389FF8:  VLDR            S0, [R1,#0x20]
389FFC:  LDR             R1, [R0,#0x14]
389FFE:  VLDR            S2, [R2,#0x10]
38A002:  VDIV.F32        S0, S0, S2
38A006:  VLDR            S2, [R1,#0x10]
38A00A:  VMUL.F32        S0, S0, S2
38A00E:  VMOV            R1, S0; float
38A012:  B               _ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
