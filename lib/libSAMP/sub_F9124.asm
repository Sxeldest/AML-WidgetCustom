; =========================================================
; Game Engine Function: sub_F9124
; Address            : 0xF9124 - 0xF9158
; =========================================================

F9124:  PUSH            {R7,LR}
F9126:  MOV             R7, SP
F9128:  LDR             R0, [R0,#4]
F912A:  CBZ             R0, loc_F9146
F912C:  LDR             R1, =(off_23494C - 0xF913C)
F912E:  MOV             R2, #0x5D1021
F9136:  LDR             R0, [R0,#0x18]
F9138:  ADD             R1, PC; off_23494C
F913A:  LDR             R1, [R1]; dword_23DF24
F913C:  LDR             R1, [R1]
F913E:  ADD             R1, R2
F9140:  POP.W           {R7,LR}
F9144:  BX              R1
F9146:  LDR             R1, =(aAxl - 0xF9150); "AXL" ...
F9148:  MOVS            R0, #6; prio
F914A:  LDR             R2, =(aCentityCanTCal - 0xF9152); "CEntity: Can't call `GetAnimHierarchyFr"... ...
F914C:  ADD             R1, PC; "AXL"
F914E:  ADD             R2, PC; "CEntity: Can't call `GetAnimHierarchyFr"...
F9150:  BLX             __android_log_print
F9154:  MOVS            R0, #0
F9156:  POP             {R7,PC}
