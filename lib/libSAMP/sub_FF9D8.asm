; =========================================================
; Game Engine Function: sub_FF9D8
; Address            : 0xFF9D8 - 0xFFA02
; =========================================================

FF9D8:  PUSH            {R7,LR}
FF9DA:  MOV             R7, SP
FF9DC:  CBZ             R1, loc_FF9F0
FF9DE:  LDR.W           R2, [R1,#0x590]
FF9E2:  CBZ             R2, loc_FF9F0
FF9E4:  LDR             R2, =(off_25B1F0 - 0xFF9EA)
FF9E6:  ADD             R2, PC; off_25B1F0
FF9E8:  LDR             R2, [R2]
FF9EA:  POP.W           {R7,LR}
FF9EE:  BX              R2
FF9F0:  LDR             R1, =(aAxl - 0xFF9FA); "AXL" ...
FF9F2:  MOVS            R0, #6; prio
FF9F4:  LDR             R2, =(aCtaskcomplexca - 0xFF9FC); "CTaskComplexCarSlowBeDraggedOutAndStand"... ...
FF9F6:  ADD             R1, PC; "AXL"
FF9F8:  ADD             R2, PC; "CTaskComplexCarSlowBeDraggedOutAndStand"...
FF9FA:  BLX             __android_log_print
FF9FE:  MOVS            R0, #0
FFA00:  POP             {R7,PC}
