; =========================================================
; Game Engine Function: _Z23RQ_Command_rqReadPixelsRPc
; Address            : 0x1CC598 - 0x1CC5EA
; =========================================================

1CC598:  PUSH            {R4,R5,R7,LR}
1CC59A:  ADD             R7, SP, #8
1CC59C:  SUB             SP, SP, #0x10
1CC59E:  LDR.W           LR, [R0]
1CC5A2:  ADD.W           R1, LR, #4
1CC5A6:  ADD.W           R2, LR, #8
1CC5AA:  MOV             R4, LR
1CC5AC:  ADD.W           R3, LR, #0xC
1CC5B0:  LDR.W           R12, [R4],#0x14
1CC5B4:  ADD.W           R5, LR, #0x10
1CC5B8:  STR             R1, [R0]
1CC5BA:  LDR.W           R1, [LR,#4]; y
1CC5BE:  STR             R2, [R0]
1CC5C0:  LDR.W           R2, [LR,#8]; width
1CC5C4:  STR             R3, [R0]
1CC5C6:  LDR.W           R3, [LR,#0xC]; height
1CC5CA:  STR             R5, [R0]
1CC5CC:  LDR.W           R5, [LR,#0x10]
1CC5D0:  STR             R4, [R0]
1CC5D2:  MOVW            R0, #0x1401
1CC5D6:  MOVW            R4, #0x1908
1CC5DA:  STRD.W          R4, R0, [SP,#0x18+format]; format
1CC5DE:  MOV             R0, R12; x
1CC5E0:  STR             R5, [SP,#0x18+pixels]; pixels
1CC5E2:  BLX             glReadPixels
1CC5E6:  ADD             SP, SP, #0x10
1CC5E8:  POP             {R4,R5,R7,PC}
