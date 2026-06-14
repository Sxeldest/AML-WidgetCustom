; =========================================================
; Game Engine Function: sub_1217A0
; Address            : 0x1217A0 - 0x1217E0
; =========================================================

1217A0:  PUSH            {R7,LR}
1217A2:  MOV             R7, SP
1217A4:  LDR             R0, =(byte_263988 - 0x1217AA)
1217A6:  ADD             R0, PC; byte_263988
1217A8:  LDRB            R0, [R0]
1217AA:  DMB.W           ISH
1217AE:  LSLS            R0, R0, #0x1F
1217B0:  IT NE
1217B2:  POPNE           {R7,PC}
1217B4:  LDR             R0, =(byte_263988 - 0x1217BA)
1217B6:  ADD             R0, PC; byte_263988 ; __guard *
1217B8:  BLX             j___cxa_guard_acquire
1217BC:  CBZ             R0, locret_1217DE
1217BE:  LDR             R1, =(unk_263970 - 0x1217CA)
1217C0:  MOVS            R3, #0
1217C2:  LDR             R0, =(sub_1216D8+1 - 0x1217CC)
1217C4:  LDR             R2, =(off_22A540 - 0x1217CE)
1217C6:  ADD             R1, PC; unk_263970 ; obj
1217C8:  ADD             R0, PC; sub_1216D8 ; lpfunc
1217CA:  ADD             R2, PC; off_22A540 ; lpdso_handle
1217CC:  STR             R3, [R1,#(dword_263980 - 0x263970)]
1217CE:  BLX             __cxa_atexit
1217D2:  LDR             R0, =(byte_263988 - 0x1217D8)
1217D4:  ADD             R0, PC; byte_263988
1217D6:  POP.W           {R7,LR}
1217DA:  B.W             sub_2242B0
1217DE:  POP             {R7,PC}
