; =========================================================
; Game Engine Function: _Z21Menu_DontRetryMissionPv
; Address            : 0x29B310 - 0x29B31C
; =========================================================

29B310:  LDR             R0, =(AllowMissionReplay_ptr - 0x29B318)
29B312:  MOVS            R1, #0
29B314:  ADD             R0, PC; AllowMissionReplay_ptr
29B316:  LDR             R0, [R0]; AllowMissionReplay
29B318:  STR             R1, [R0]
29B31A:  BX              LR
