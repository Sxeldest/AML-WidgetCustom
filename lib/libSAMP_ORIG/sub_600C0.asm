; =========================================================
; Game Engine Function: sub_600C0
; Address            : 0x600C0 - 0x60132
; =========================================================

600C0:  PUSH            {R4-R7,LR}
600C2:  ADD             R7, SP, #0xC
600C4:  PUSH.W          {R8}
600C8:  MOV             R4, R0
600CA:  LDR             R0, =(off_114A98 - 0x600D4)
600CC:  LDR             R1, =(dword_117394 - 0x600D6)
600CE:  MOVS            R2, #0
600D0:  ADD             R0, PC; off_114A98
600D2:  ADD             R1, PC; dword_117394
600D4:  LDR             R0, [R0]; off_1ABEDC
600D6:  STR             R2, [R1]
600D8:  LDR             R0, [R0]
600DA:  BLX             R0
600DC:  LDR             R0, =(off_114A9C - 0x600E8)
600DE:  MOVW            R1, #0xAC44
600E2:  MOVS            R2, #0
600E4:  ADD             R0, PC; off_114A9C
600E6:  LDR             R0, [R0]; off_1ABED8
600E8:  LDR             R3, [R0]
600EA:  MOV.W           R0, #0xFFFFFFFF
600EE:  BLX             R3
600F0:  MOV             R5, R0
600F2:  CBZ             R0, loc_60124
600F4:  LDR             R0, =(off_114AA0 - 0x600FC)
600F6:  LDR             R1, =(aSaMp03 - 0x600FE); "SA-MP/0.3" ...
600F8:  ADD             R0, PC; off_114AA0
600FA:  ADD             R1, PC; "SA-MP/0.3"
600FC:  LDR             R0, [R0]; off_1ABEE0
600FE:  LDR             R2, [R0]
60100:  MOVS            R0, #0x10
60102:  BLX             R2
60104:  LDR             R0, =(off_114AA4 - 0x60110)
60106:  MOVS            R1, #1
60108:  MOV.W           R8, #1
6010C:  ADD             R0, PC; off_114AA4
6010E:  LDR             R6, [R0]; off_1ABEE4
60110:  MOVS            R0, #0x15
60112:  LDR             R2, [R6]
60114:  BLX             R2
60116:  LDR             R2, [R6]
60118:  MOVS            R0, #0xB
6011A:  MOVW            R1, #0x2710
6011E:  BLX             R2
60120:  STRB.W          R8, [R4]
60124:  CMP             R5, #0
60126:  IT NE
60128:  MOVNE           R5, #1
6012A:  MOV             R0, R5
6012C:  POP.W           {R8}
60130:  POP             {R4-R7,PC}
