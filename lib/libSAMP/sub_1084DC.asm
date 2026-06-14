; =========================================================
; Game Engine Function: sub_1084DC
; Address            : 0x1084DC - 0x10852A
; =========================================================

1084DC:  PUSH            {R7,LR}
1084DE:  MOV             R7, SP
1084E0:  MOV             R3, R0
1084E2:  MOVW            R0, #0x4E20
1084E6:  CMP             R3, R0
1084E8:  BHI             loc_108526
1084EA:  LDR             R0, =(off_23494C - 0x1084F8)
1084EC:  MOV             R1, #0x6796D4
1084F4:  ADD             R0, PC; off_23494C
1084F6:  LDR             R0, [R0]; dword_23DF24
1084F8:  LDR             R0, [R0]
1084FA:  LDR             R1, [R0,R1]
1084FC:  LDR.W           R1, [R1,R3,LSL#2]
108500:  CBZ             R1, loc_108518
108502:  LDR             R1, [R1]
108504:  SUBS            R0, R1, R0
108506:  MOV             R1, #0xFF998948
10850E:  ADD             R0, R1
108510:  CLZ.W           R0, R0
108514:  LSRS            R0, R0, #5
108516:  POP             {R7,PC}
108518:  LDR             R1, =(aAxl - 0x108522); "AXL" ...
10851A:  MOVS            R0, #5; prio
10851C:  LDR             R2, =(aCanTGetModelIn_0 - 0x108524); "Can't get model info for model %d" ...
10851E:  ADD             R1, PC; "AXL"
108520:  ADD             R2, PC; "Can't get model info for model %d"
108522:  BLX             __android_log_print
108526:  MOVS            R0, #0
108528:  POP             {R7,PC}
