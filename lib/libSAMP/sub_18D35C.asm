; =========================================================
; Game Engine Function: sub_18D35C
; Address            : 0x18D35C - 0x18D388
; =========================================================

18D35C:  PUSH            {R4,R6,R7,LR}
18D35E:  ADD             R7, SP, #8
18D360:  LDR             R0, =(dword_382760 - 0x18D366)
18D362:  ADD             R0, PC; dword_382760
18D364:  LDR             R1, [R0]
18D366:  CMP             R1, #1
18D368:  BLT             locret_18D386
18D36A:  SUBS            R1, #1
18D36C:  STR             R1, [R0]
18D36E:  IT NE
18D370:  POPNE           {R4,R6,R7,PC}
18D372:  LDR             R4, =(dword_38275C - 0x18D378)
18D374:  ADD             R4, PC; dword_38275C
18D376:  LDR             R0, [R4]
18D378:  CBZ             R0, loc_18D382
18D37A:  BL              sub_18D2DA
18D37E:  BLX             j__ZdlPv; operator delete(void *)
18D382:  MOVS            R0, #0
18D384:  STR             R0, [R4]
18D386:  POP             {R4,R6,R7,PC}
