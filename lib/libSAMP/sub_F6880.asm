; =========================================================
; Game Engine Function: sub_F6880
; Address            : 0xF6880 - 0xF68BE
; =========================================================

F6880:  PUSH            {R4,R5,R7,LR}
F6882:  ADD             R7, SP, #8
F6884:  LDR             R1, =(dword_2402B4 - 0xF6890)
F6886:  MOVS            R5, #0
F6888:  LDR             R0, =(sub_F74B0+1 - 0xF6892)
F688A:  LDR             R4, =(off_22A540 - 0xF6896)
F688C:  ADD             R1, PC; dword_2402B4 ; obj
F688E:  ADD             R0, PC; sub_F74B0 ; lpfunc
F6890:  MOV             R2, R1
F6892:  ADD             R4, PC; off_22A540
F6894:  STR.W           R5, [R2,#(dword_2402B8 - 0x2402B4)]!
F6898:  STR             R2, [R1]
F689A:  MOV             R2, R4; lpdso_handle
F689C:  STR             R5, [R1,#(dword_2402BC - 0x2402B4)]
F689E:  BLX             __cxa_atexit
F68A2:  LDR             R1, =(dword_2402C0 - 0xF68AA)
F68A4:  LDR             R0, =(sub_F74C0+1 - 0xF68AC)
F68A6:  ADD             R1, PC; dword_2402C0
F68A8:  ADD             R0, PC; sub_F74C0
F68AA:  MOV             R2, R1
F68AC:  STR             R5, [R1,#(dword_2402C8 - 0x2402C0)]
F68AE:  STR.W           R5, [R2,#(dword_2402C4 - 0x2402C0)]!
F68B2:  STR             R2, [R1]
F68B4:  MOV             R2, R4
F68B6:  POP.W           {R4,R5,R7,LR}
F68BA:  B.W             sub_224250
