; =========================================================
; Game Engine Function: sub_1435C2
; Address            : 0x1435C2 - 0x1435EE
; =========================================================

1435C2:  PUSH            {R4,R5,R7,LR}
1435C4:  ADD             R7, SP, #8
1435C6:  MOV             R4, R0
1435C8:  LDR.W           R0, [R0,#0x3B0]
1435CC:  LDR             R0, [R0,#8]
1435CE:  CBZ             R0, loc_1435D8
1435D0:  BL              sub_13E73A
1435D4:  BLX             j__ZdlPv; operator delete(void *)
1435D8:  MOV.W           R0, #0x1400; unsigned int
1435DC:  BLX             j__Znwj; operator new(uint)
1435E0:  MOV             R5, R0
1435E2:  BL              sub_13E728
1435E6:  LDR.W           R0, [R4,#0x3B0]
1435EA:  STR             R5, [R0,#8]
1435EC:  POP             {R4,R5,R7,PC}
