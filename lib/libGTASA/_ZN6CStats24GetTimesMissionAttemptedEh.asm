; =========================================================
; Game Engine Function: _ZN6CStats24GetTimesMissionAttemptedEh
; Address            : 0x416278 - 0x416284
; =========================================================

416278:  LDR             R1, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x41627E)
41627A:  ADD             R1, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
41627C:  LDR             R1, [R1]; CStats::TimesMissionAttempted ...
41627E:  LDRB.W          R0, [R1,R0,LSL#2]
416282:  BX              LR
