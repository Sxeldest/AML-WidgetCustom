; =========================================================
; Game Engine Function: silk_bwexpander
; Address            : 0xB47E0 - 0xB4836
; =========================================================

B47E0:  PUSH            {R4-R7,LR}
B47E2:  ADD             R7, SP, #0xC
B47E4:  PUSH.W          {R11}
B47E8:  SUB.W           R12, R1, #1
B47EC:  CMP             R1, #2
B47EE:  BLT             loc_B481E
B47F0:  SUB.W           LR, R2, #0x10000
B47F4:  MOVS            R3, #1
B47F6:  MOV             R1, R12
B47F8:  MOV             R4, R0
B47FA:  LDRSH.W         R5, [R4]
B47FE:  MUL.W           R6, R2, LR
B4802:  SUBS            R1, #1
B4804:  MUL.W           R5, R2, R5
B4808:  ADD.W           R6, R3, R6,ASR#15
B480C:  ADD.W           R2, R2, R6,ASR#1
B4810:  ADD.W           R5, R3, R5,LSR#15
B4814:  MOV.W           R5, R5,LSR#1
B4818:  STRH.W          R5, [R4],#2
B481C:  BNE             loc_B47FA
B481E:  LDRSH.W         R1, [R0,R12,LSL#1]
B4822:  MULS            R1, R2
B4824:  MOVS            R2, #1
B4826:  ADD.W           R1, R2, R1,LSR#15
B482A:  LSRS            R1, R1, #1
B482C:  STRH.W          R1, [R0,R12,LSL#1]
B4830:  POP.W           {R11}
B4834:  POP             {R4-R7,PC}
