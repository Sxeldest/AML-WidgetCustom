; =========================================================
; Game Engine Function: sub_86668
; Address            : 0x86668 - 0x866B8
; =========================================================

86668:  PUSH            {R4-R7,LR}
8666A:  ADD             R7, SP, #0xC
8666C:  PUSH.W          {R11}
86670:  LDR             R1, =(dword_1ABE64 - 0x8667C)
86672:  MOVS            R6, #0
86674:  LDR             R5, =(sub_7F514+1 - 0x8667E)
86676:  LDR             R4, =(off_110560 - 0x86680)
86678:  ADD             R1, PC; dword_1ABE64 ; obj
8667A:  ADD             R5, PC; sub_7F514
8667C:  ADD             R4, PC; off_110560
8667E:  STRD.W          R6, R6, [R1]
86682:  MOV             R0, R5; lpfunc
86684:  STR             R6, [R1,#(dword_1ABE6C - 0x1ABE64)]
86686:  MOV             R2, R4; lpdso_handle
86688:  BLX             __cxa_atexit
8668C:  LDR             R1, =(dword_1ABE70 - 0x86696)
8668E:  MOV             R0, R5; lpfunc
86690:  MOV             R2, R4; lpdso_handle
86692:  ADD             R1, PC; dword_1ABE70 ; obj
86694:  STRD.W          R6, R6, [R1]
86698:  STR             R6, [R1,#(dword_1ABE78 - 0x1ABE70)]
8669A:  BLX             __cxa_atexit
8669E:  LDR             R1, =(dword_1ABE7C - 0x866A8)
866A0:  MOV             R0, R5
866A2:  MOV             R2, R4
866A4:  ADD             R1, PC; dword_1ABE7C
866A6:  STRD.W          R6, R6, [R1]
866AA:  STR             R6, [R1,#(dword_1ABE84 - 0x1ABE7C)]
866AC:  POP.W           {R11}
866B0:  POP.W           {R4-R7,LR}
866B4:  B.W             sub_10C188
