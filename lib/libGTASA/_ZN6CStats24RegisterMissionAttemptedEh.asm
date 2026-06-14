; =========================================================
; Game Engine Function: _ZN6CStats24RegisterMissionAttemptedEh
; Address            : 0x416288 - 0x4162A4
; =========================================================

416288:  LDR             R1, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x41628E)
41628A:  ADD             R1, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
41628C:  LDR             R1, [R1]; CStats::TimesMissionAttempted ...
41628E:  LDR.W           R1, [R1,R0,LSL#2]
416292:  ADDS            R1, #1
416294:  IT EQ
416296:  BXEQ            LR
416298:  LDR             R2, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x41629E)
41629A:  ADD             R2, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
41629C:  LDR             R2, [R2]; CStats::TimesMissionAttempted ...
41629E:  STR.W           R1, [R2,R0,LSL#2]
4162A2:  BX              LR
