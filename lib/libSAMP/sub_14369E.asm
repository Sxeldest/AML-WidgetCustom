; =========================================================
; Game Engine Function: sub_14369E
; Address            : 0x14369E - 0x1436C8
; =========================================================

14369E:  PUSH            {R4,R5,R7,LR}
1436A0:  ADD             R7, SP, #8
1436A2:  MOV             R4, R0
1436A4:  LDR.W           R0, [R0,#0x3B0]
1436A8:  LDR             R0, [R0,#0x20]
1436AA:  CBZ             R0, loc_1436B4
1436AC:  BL              nullsub_12
1436B0:  BLX             j__ZdlPv; operator delete(void *)
1436B4:  MOVS            R0, #1; unsigned int
1436B6:  BLX             j__Znwj; operator new(uint)
1436BA:  MOV             R5, R0
1436BC:  BL              nullsub_11
1436C0:  LDR.W           R0, [R4,#0x3B0]
1436C4:  STR             R5, [R0,#0x20]
1436C6:  POP             {R4,R5,R7,PC}
