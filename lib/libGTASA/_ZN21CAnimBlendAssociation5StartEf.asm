; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation5StartEf
; Address            : 0x38A020 - 0x38A02A
; =========================================================

38A020:  LDRH            R2, [R0,#0x2E]
38A022:  ORR.W           R2, R2, #1
38A026:  STRH            R2, [R0,#0x2E]
38A028:  B               _ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
