; =========================================================
; Game Engine Function: sub_107328
; Address            : 0x107328 - 0x107344
; =========================================================

107328:  PUSH            {R7,LR}
10732A:  MOV             R7, SP
10732C:  MOV.W           R0, #0x100; unsigned int
107330:  BLX             j__Znwj; operator new(uint)
107334:  LDR             R1, =(dword_25D988 - 0x10733A)
107336:  ADD             R1, PC; dword_25D988
107338:  STR             R0, [R1]
10733A:  MOV.W           R1, #0x100; n
10733E:  BLX             sub_22178C
107342:  POP             {R7,PC}
