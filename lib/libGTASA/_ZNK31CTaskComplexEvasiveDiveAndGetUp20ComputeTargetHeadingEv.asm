; =========================================================
; Game Engine Function: _ZNK31CTaskComplexEvasiveDiveAndGetUp20ComputeTargetHeadingEv
; Address            : 0x50B348 - 0x50B356
; =========================================================

50B348:  LDRD.W          R2, R1, [R0,#0x14]; float
50B34C:  MOVS            R3, #0; float
50B34E:  MOV             R0, R2; this
50B350:  MOVS            R2, #0; float
50B352:  B.W             sub_1991A8
