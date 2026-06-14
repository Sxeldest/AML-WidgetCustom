; =========================================================
; Game Engine Function: sub_15A384
; Address            : 0x15A384 - 0x15A39C
; =========================================================

15A384:  LDR             R1, =(dword_381A30 - 0x15A390)
15A386:  MOVS            R3, #0
15A388:  LDR             R0, =(sub_EC9DC+1 - 0x15A392)
15A38A:  LDR             R2, =(off_22A540 - 0x15A394)
15A38C:  ADD             R1, PC; dword_381A30
15A38E:  ADD             R0, PC; sub_EC9DC
15A390:  ADD             R2, PC; off_22A540
15A392:  STRD.W          R3, R3, [R1]
15A396:  STR             R3, [R1,#(dword_381A38 - 0x381A30)]
15A398:  B.W             sub_224250
