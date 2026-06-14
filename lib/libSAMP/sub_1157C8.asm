; =========================================================
; Game Engine Function: sub_1157C8
; Address            : 0x1157C8 - 0x115808
; =========================================================

1157C8:  PUSH            {R7,LR}
1157CA:  MOV             R7, SP
1157CC:  LDR             R0, =(byte_2634B0 - 0x1157D2)
1157CE:  ADD             R0, PC; byte_2634B0
1157D0:  LDRB            R0, [R0]
1157D2:  DMB.W           ISH
1157D6:  LSLS            R0, R0, #0x1F
1157D8:  IT NE
1157DA:  POPNE           {R7,PC}
1157DC:  LDR             R0, =(byte_2634B0 - 0x1157E2)
1157DE:  ADD             R0, PC; byte_2634B0 ; __guard *
1157E0:  BLX             j___cxa_guard_acquire
1157E4:  CBZ             R0, locret_115806
1157E6:  LDR             R1, =(unk_263498 - 0x1157F2)
1157E8:  MOVS            R3, #0
1157EA:  LDR             R0, =(sub_115308+1 - 0x1157F4)
1157EC:  LDR             R2, =(off_22A540 - 0x1157F6)
1157EE:  ADD             R1, PC; unk_263498 ; obj
1157F0:  ADD             R0, PC; sub_115308 ; lpfunc
1157F2:  ADD             R2, PC; off_22A540 ; lpdso_handle
1157F4:  STR             R3, [R1,#(dword_2634A8 - 0x263498)]
1157F6:  BLX             __cxa_atexit
1157FA:  LDR             R0, =(byte_2634B0 - 0x115800)
1157FC:  ADD             R0, PC; byte_2634B0
1157FE:  POP.W           {R7,LR}
115802:  B.W             sub_2242B0
115806:  POP             {R7,PC}
