; =========================================================
; Game Engine Function: sub_18D328
; Address            : 0x18D328 - 0x18D352
; =========================================================

18D328:  PUSH            {R7,LR}
18D32A:  MOV             R7, SP
18D32C:  LDR             R0, =(dword_382760 - 0x18D332)
18D32E:  ADD             R0, PC; dword_382760
18D330:  LDR             R1, [R0]
18D332:  ADD.W           R2, R1, #1
18D336:  STR             R2, [R0]
18D338:  CBZ             R1, loc_18D33C
18D33A:  POP             {R7,PC}
18D33C:  MOVS            R0, #0xC; unsigned int
18D33E:  BLX             j__Znwj; operator new(uint)
18D342:  LDR             R1, =(dword_38275C - 0x18D34E)
18D344:  MOVS            R2, #0
18D346:  STRD.W          R2, R2, [R0]
18D34A:  ADD             R1, PC; dword_38275C
18D34C:  STR             R2, [R0,#8]
18D34E:  STR             R0, [R1]
18D350:  POP             {R7,PC}
