; =========================================================
; Game Engine Function: sub_6280C
; Address            : 0x6280C - 0x62848
; =========================================================

6280C:  PUSH            {R4,R5,R7,LR}
6280E:  ADD             R7, SP, #8
62810:  VPUSH           {D8}
62814:  SUB             SP, SP, #0x10
62816:  MOV             R4, R0
62818:  LDR             R0, =(off_1A3A40 - 0x62822)
6281A:  VLDR            S16, [R7,#arg_4]
6281E:  ADD             R0, PC; off_1A3A40
62820:  LDR.W           R12, [R7,#arg_8]
62824:  LDR.W           LR, [R7,#arg_0]
62828:  LDR             R5, [R0]
6282A:  LDR             R0, [R7,#arg_C]
6282C:  VSTR            S16, [SP,#0x20+var_1C]
62830:  STR.W           LR, [SP,#0x20+var_20]
62834:  STRD.W          R12, R0, [SP,#0x20+var_18]
62838:  MOV             R0, R4
6283A:  BLX             R5
6283C:  VSTR            S16, [R4,#0x50]
62840:  ADD             SP, SP, #0x10
62842:  VPOP            {D8}
62846:  POP             {R4,R5,R7,PC}
