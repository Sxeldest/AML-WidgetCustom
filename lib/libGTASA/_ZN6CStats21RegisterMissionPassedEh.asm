; =========================================================
; Game Engine Function: _ZN6CStats21RegisterMissionPassedEh
; Address            : 0x4162AC - 0x4162BC
; =========================================================

4162AC:  LDR             R1, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x4162B6)
4162AE:  MOV.W           R2, #0xFFFFFFFF
4162B2:  ADD             R1, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
4162B4:  LDR             R1, [R1]; CStats::TimesMissionAttempted ...
4162B6:  STR.W           R2, [R1,R0,LSL#2]
4162BA:  BX              LR
