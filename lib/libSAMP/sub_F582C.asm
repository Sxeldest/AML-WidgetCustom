; =========================================================
; Game Engine Function: sub_F582C
; Address            : 0xF582C - 0xF587C
; =========================================================

F582C:  PUSH            {R4,R5,R7,LR}
F582E:  ADD             R7, SP, #8
F5830:  LDR             R1, =(aAxl - 0xF583C); "AXL" ...
F5832:  MOV             R4, R0
F5834:  LDR             R2, =(aSRemove - 0xF583E); "%s:REMOVE" ...
F5836:  LDR             R3, =(aFpslimiter_0 - 0xF5840); "~FPSLimiter" ...
F5838:  ADD             R1, PC; "AXL"
F583A:  ADD             R2, PC; "%s:REMOVE"
F583C:  ADD             R3, PC; "~FPSLimiter"
F583E:  MOVS            R0, #3; prio
F5840:  BLX             __android_log_print
F5844:  LDR             R1, [R4,#0x10]
F5846:  CBZ             R1, loc_F5860
F5848:  LDR             R0, =(off_23494C - 0xF5856)
F584A:  MOV             R2, #0x6707B4
F5852:  ADD             R0, PC; off_23494C
F5854:  LDR             R0, [R0]; dword_23DF24
F5856:  LDR             R0, [R0]
F5858:  ADD             R0, R2
F585A:  MOVS            R2, #0
F585C:  BL              sub_164196
F5860:  LDR             R5, [R4,#0xC]
F5862:  CBZ             R5, loc_F5870
F5864:  LDR             R0, [R4,#4]
F5866:  BLX             R0
F5868:  LDR             R1, =(sub_F57EC+1 - 0xF586E)
F586A:  ADD             R1, PC; sub_F57EC
F586C:  MOV             R2, R4
F586E:  BLX             R5
F5870:  LDR             R0, [R4]; handle
F5872:  CBZ             R0, loc_F5878
F5874:  BLX             CloseLib_0
F5878:  MOV             R0, R4
F587A:  POP             {R4,R5,R7,PC}
