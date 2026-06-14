; =========================================================
; Game Engine Function: sub_F3DB8
; Address            : 0xF3DB8 - 0xF3DF8
; =========================================================

F3DB8:  PUSH            {R7,LR}
F3DBA:  MOV             R7, SP
F3DBC:  LDR             R0, =(byte_240030 - 0xF3DC2)
F3DBE:  ADD             R0, PC; byte_240030
F3DC0:  LDRB            R0, [R0]
F3DC2:  DMB.W           ISH
F3DC6:  LSLS            R0, R0, #0x1F
F3DC8:  IT NE
F3DCA:  POPNE           {R7,PC}
F3DCC:  LDR             R0, =(byte_240030 - 0xF3DD2)
F3DCE:  ADD             R0, PC; byte_240030 ; __guard *
F3DD0:  BLX             j___cxa_guard_acquire
F3DD4:  CBZ             R0, locret_F3DF6
F3DD6:  LDR             R1, =(unk_240018 - 0xF3DE2)
F3DD8:  MOVS            R3, #0
F3DDA:  LDR             R0, =(sub_F3CE6+1 - 0xF3DE4)
F3DDC:  LDR             R2, =(off_22A540 - 0xF3DE6)
F3DDE:  ADD             R1, PC; unk_240018 ; obj
F3DE0:  ADD             R0, PC; sub_F3CE6 ; lpfunc
F3DE2:  ADD             R2, PC; off_22A540 ; lpdso_handle
F3DE4:  STR             R3, [R1,#(dword_240028 - 0x240018)]
F3DE6:  BLX             __cxa_atexit
F3DEA:  LDR             R0, =(byte_240030 - 0xF3DF0)
F3DEC:  ADD             R0, PC; byte_240030
F3DEE:  POP.W           {R7,LR}
F3DF2:  B.W             sub_2242B0
F3DF6:  POP             {R7,PC}
