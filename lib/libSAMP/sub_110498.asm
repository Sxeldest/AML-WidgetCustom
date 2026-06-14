; =========================================================
; Game Engine Function: sub_110498
; Address            : 0x110498 - 0x1104D8
; =========================================================

110498:  PUSH            {R7,LR}
11049A:  MOV             R7, SP
11049C:  LDR             R0, =(byte_2633C8 - 0x1104A2)
11049E:  ADD             R0, PC; byte_2633C8
1104A0:  LDRB            R0, [R0]
1104A2:  DMB.W           ISH
1104A6:  LSLS            R0, R0, #0x1F
1104A8:  IT NE
1104AA:  POPNE           {R7,PC}
1104AC:  LDR             R0, =(byte_2633C8 - 0x1104B2)
1104AE:  ADD             R0, PC; byte_2633C8 ; __guard *
1104B0:  BLX             j___cxa_guard_acquire
1104B4:  CBZ             R0, locret_1104D6
1104B6:  LDR             R1, =(unk_2633B0 - 0x1104C2)
1104B8:  MOVS            R3, #0
1104BA:  LDR             R0, =(sub_1103B4+1 - 0x1104C4)
1104BC:  LDR             R2, =(off_22A540 - 0x1104C6)
1104BE:  ADD             R1, PC; unk_2633B0 ; obj
1104C0:  ADD             R0, PC; sub_1103B4 ; lpfunc
1104C2:  ADD             R2, PC; off_22A540 ; lpdso_handle
1104C4:  STR             R3, [R1,#(dword_2633C0 - 0x2633B0)]
1104C6:  BLX             __cxa_atexit
1104CA:  LDR             R0, =(byte_2633C8 - 0x1104D0)
1104CC:  ADD             R0, PC; byte_2633C8
1104CE:  POP.W           {R7,LR}
1104D2:  B.W             sub_2242B0
1104D6:  POP             {R7,PC}
