; =========================================================
; Game Engine Function: sub_11A8E8
; Address            : 0x11A8E8 - 0x11A928
; =========================================================

11A8E8:  PUSH            {R7,LR}
11A8EA:  MOV             R7, SP
11A8EC:  LDR             R0, =(byte_263548 - 0x11A8F2)
11A8EE:  ADD             R0, PC; byte_263548
11A8F0:  LDRB            R0, [R0]
11A8F2:  DMB.W           ISH
11A8F6:  LSLS            R0, R0, #0x1F
11A8F8:  IT NE
11A8FA:  POPNE           {R7,PC}
11A8FC:  LDR             R0, =(byte_263548 - 0x11A902)
11A8FE:  ADD             R0, PC; byte_263548 ; __guard *
11A900:  BLX             j___cxa_guard_acquire
11A904:  CBZ             R0, locret_11A926
11A906:  LDR             R1, =(unk_263530 - 0x11A912)
11A908:  MOVS            R3, #0
11A90A:  LDR             R0, =(sub_11A748+1 - 0x11A914)
11A90C:  LDR             R2, =(off_22A540 - 0x11A916)
11A90E:  ADD             R1, PC; unk_263530 ; obj
11A910:  ADD             R0, PC; sub_11A748 ; lpfunc
11A912:  ADD             R2, PC; off_22A540 ; lpdso_handle
11A914:  STR             R3, [R1,#(dword_263540 - 0x263530)]
11A916:  BLX             __cxa_atexit
11A91A:  LDR             R0, =(byte_263548 - 0x11A920)
11A91C:  ADD             R0, PC; byte_263548
11A91E:  POP.W           {R7,LR}
11A922:  B.W             sub_2242B0
11A926:  POP             {R7,PC}
