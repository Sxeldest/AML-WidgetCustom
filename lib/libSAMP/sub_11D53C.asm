; =========================================================
; Game Engine Function: sub_11D53C
; Address            : 0x11D53C - 0x11D574
; =========================================================

11D53C:  PUSH            {R4,R5,R7,LR}
11D53E:  ADD             R7, SP, #8
11D540:  MOV             R4, R0
11D542:  LDR             R0, =(off_23494C - 0x11D54E)
11D544:  MOVW            R2, #0x54A8
11D548:  LDR             R1, [R4]
11D54A:  ADD             R0, PC; off_23494C
11D54C:  MOVT            R2, #0x67 ; 'g'
11D550:  LDR             R5, [R0]; dword_23DF24
11D552:  LDR             R0, [R5]
11D554:  ADD             R0, R2
11D556:  MOVS            R2, #0
11D558:  BL              sub_164196
11D55C:  LDR             R0, [R5]
11D55E:  MOVW            R2, #0x1BB8
11D562:  LDR             R1, [R4,#4]
11D564:  MOVT            R2, #0x67 ; 'g'
11D568:  ADD             R0, R2
11D56A:  MOVS            R2, #0
11D56C:  BL              sub_164196
11D570:  MOV             R0, R4
11D572:  POP             {R4,R5,R7,PC}
