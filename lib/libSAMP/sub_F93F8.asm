; =========================================================
; Game Engine Function: sub_F93F8
; Address            : 0xF93F8 - 0xF9434
; =========================================================

F93F8:  PUSH            {R7,LR}
F93FA:  MOV             R7, SP
F93FC:  LDR             R1, =(aAxl - 0xF9406); "AXL" ...
F93FE:  MOVS            R0, #4; prio
F9400:  LDR             R2, =(aCgameInitializ - 0xF9408); "CGame initializing.." ...
F9402:  ADD             R1, PC; "AXL"
F9404:  ADD             R2, PC; "CGame initializing.."
F9406:  BLX             __android_log_print
F940A:  LDR             R0, =(off_23494C - 0xF9418)
F940C:  MOV             R1, #0x2A92F1
F9414:  ADD             R0, PC; off_23494C
F9416:  LDR             R0, [R0]; dword_23DF24
F9418:  LDR             R0, [R0]
F941A:  ADD             R0, R1
F941C:  BLX             R0
F941E:  MOVW            R0, #0x201; size
F9422:  BLX             malloc
F9426:  LDR             R1, =(dword_24735C - 0xF942C)
F9428:  ADD             R1, PC; dword_24735C
F942A:  STR             R0, [R1]
F942C:  POP.W           {R7,LR}
F9430:  B.W             sub_107138
