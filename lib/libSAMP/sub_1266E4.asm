; =========================================================
; Game Engine Function: sub_1266E4
; Address            : 0x1266E4 - 0x12670A
; =========================================================

1266E4:  PUSH            {R4,R6,R7,LR}
1266E6:  ADD             R7, SP, #8
1266E8:  LDR             R1, =(aAxl - 0x1266F4); "AXL" ...
1266EA:  MOV             R4, R0
1266EC:  LDR             R2, =(aCvehiclesoundh_1 - 0x1266F6); "CVehicleSoundHook: call SetupCommonData"... ...
1266EE:  MOVS            R0, #4; prio
1266F0:  ADD             R1, PC; "AXL"
1266F2:  ADD             R2, PC; "CVehicleSoundHook: call SetupCommonData"...
1266F4:  BLX             __android_log_print
1266F8:  LDR             R0, =(off_263E0C - 0x1266FE)
1266FA:  ADD             R0, PC; off_263E0C
1266FC:  LDR             R1, [R0]
1266FE:  MOV             R0, R4
126700:  BLX             R1
126702:  POP.W           {R4,R6,R7,LR}
126706:  B.W             sub_126764
