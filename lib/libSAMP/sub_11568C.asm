; =========================================================
; Game Engine Function: sub_11568C
; Address            : 0x11568C - 0x1156CC
; =========================================================

11568C:  PUSH            {R7,LR}
11568E:  MOV             R7, SP
115690:  LDR             R0, =(byte_263490 - 0x115696)
115692:  ADD             R0, PC; byte_263490
115694:  LDRB            R0, [R0]
115696:  DMB.W           ISH
11569A:  LSLS            R0, R0, #0x1F
11569C:  IT NE
11569E:  POPNE           {R7,PC}
1156A0:  LDR             R0, =(byte_263490 - 0x1156A6)
1156A2:  ADD             R0, PC; byte_263490 ; __guard *
1156A4:  BLX             j___cxa_guard_acquire
1156A8:  CBZ             R0, locret_1156CA
1156AA:  LDR             R1, =(unk_263478 - 0x1156B6)
1156AC:  MOVS            R3, #0
1156AE:  LDR             R0, =(sub_1152E8+1 - 0x1156B8)
1156B0:  LDR             R2, =(off_22A540 - 0x1156BA)
1156B2:  ADD             R1, PC; unk_263478 ; obj
1156B4:  ADD             R0, PC; sub_1152E8 ; lpfunc
1156B6:  ADD             R2, PC; off_22A540 ; lpdso_handle
1156B8:  STR             R3, [R1,#(dword_263488 - 0x263478)]
1156BA:  BLX             __cxa_atexit
1156BE:  LDR             R0, =(byte_263490 - 0x1156C4)
1156C0:  ADD             R0, PC; byte_263490
1156C2:  POP.W           {R7,LR}
1156C6:  B.W             sub_2242B0
1156CA:  POP             {R7,PC}
