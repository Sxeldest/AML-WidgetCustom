; =========================================================
; Game Engine Function: _ZN49CTaskComplexObserveTrafficLightsAndAchieveHeading13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F3158 - 0x4F3172
; =========================================================

4F3158:  SUB.W           R12, R2, #1
4F315C:  CMP.W           R12, #1
4F3160:  ITT HI
4F3162:  MOVHI           R0, #0
4F3164:  BXHI            LR
4F3166:  LDR             R0, [R0,#8]
4F3168:  LDR.W           R12, [R0]
4F316C:  LDR.W           R12, [R12,#0x1C]
4F3170:  BX              R12
