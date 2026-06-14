; =========================================================
; Game Engine Function: sub_108480
; Address            : 0x108480 - 0x1084CE
; =========================================================

108480:  PUSH            {R7,LR}
108482:  MOV             R7, SP
108484:  MOV             R3, R0
108486:  MOVW            R0, #0x4E20
10848A:  CMP             R3, R0
10848C:  BHI             loc_1084CA
10848E:  LDR             R0, =(off_23494C - 0x10849C)
108490:  MOV             R1, #0x6796D4
108498:  ADD             R0, PC; off_23494C
10849A:  LDR             R0, [R0]; dword_23DF24
10849C:  LDR             R0, [R0]
10849E:  LDR             R1, [R0,R1]
1084A0:  LDR.W           R1, [R1,R3,LSL#2]
1084A4:  CBZ             R1, loc_1084BC
1084A6:  LDR             R1, [R1]
1084A8:  SUBS            R0, R1, R0
1084AA:  MOV             R1, #0xFF998998
1084B2:  ADD             R0, R1
1084B4:  CLZ.W           R0, R0
1084B8:  LSRS            R0, R0, #5
1084BA:  POP             {R7,PC}
1084BC:  LDR             R1, =(aAxl - 0x1084C6); "AXL" ...
1084BE:  MOVS            R0, #5; prio
1084C0:  LDR             R2, =(aCanTGetModelIn - 0x1084C8); "Can't get model info for skin %d" ...
1084C2:  ADD             R1, PC; "AXL"
1084C4:  ADD             R2, PC; "Can't get model info for skin %d"
1084C6:  BLX             __android_log_print
1084CA:  MOVS            R0, #0
1084CC:  POP             {R7,PC}
