; =========================================================
; Game Engine Function: sub_6875C
; Address            : 0x6875C - 0x68788
; =========================================================

6875C:  PUSH            {R4,R6,R7,LR}
6875E:  ADD             R7, SP, #8
68760:  LDR             R3, =(off_114AA8 - 0x6876C)
68762:  ADD.W           R1, R1, R1,LSL#1
68766:  LDR             R4, =(unk_116C7C - 0x6876E)
68768:  ADD             R3, PC; off_114AA8
6876A:  ADD             R4, PC; unk_116C7C
6876C:  LDR             R3, [R3]; dword_1A4404
6876E:  ADD.W           R1, R4, R1,LSL#2
68772:  MOV             R4, #0x1E3975
6877A:  LDR             R3, [R3]
6877C:  ADD.W           R12, R3, R4
68780:  MOVS            R3, #1
68782:  POP.W           {R4,R6,R7,LR}
68786:  BX              R12
