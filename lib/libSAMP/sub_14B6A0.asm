; =========================================================
; Game Engine Function: sub_14B6A0
; Address            : 0x14B6A0 - 0x14B76A
; =========================================================

14B6A0:  PUSH            {R4-R7,LR}
14B6A2:  ADD             R7, SP, #0xC
14B6A4:  PUSH.W          {R8}
14B6A8:  SUB             SP, SP, #0x40
14B6AA:  CMP             R1, #0x13
14B6AC:  IT EQ
14B6AE:  CMPEQ           R2, #0x11
14B6B0:  BEQ             loc_14B6BA
14B6B2:  ADD             SP, SP, #0x40 ; '@'
14B6B4:  POP.W           {R8}
14B6B8:  POP             {R4-R7,PC}
14B6BA:  MOV             R5, R0
14B6BC:  LDR             R0, =(off_234970 - 0x14B6C2)
14B6BE:  ADD             R0, PC; off_234970
14B6C0:  LDR.W           R8, [R0]; dword_23DEF0
14B6C4:  LDR.W           R0, [R8]
14B6C8:  BL              sub_E35A0
14B6CC:  CMP             R0, #0
14B6CE:  BEQ             loc_14B6B2
14B6D0:  MOV             R4, R0
14B6D2:  BL              sub_104108
14B6D6:  CMP             R0, #0
14B6D8:  BEQ             loc_14B6B2
14B6DA:  MOV             R0, R4
14B6DC:  BL              sub_10411A
14B6E0:  CMP             R0, #0
14B6E2:  BNE             loc_14B6B2
14B6E4:  LDR             R0, =(off_23496C - 0x14B6EA)
14B6E6:  ADD             R0, PC; off_23496C
14B6E8:  LDR             R0, [R0]; dword_23DEF4
14B6EA:  LDR             R0, [R0]
14B6EC:  LDR.W           R0, [R0,#0x3B0]
14B6F0:  LDR             R6, [R0,#4]
14B6F2:  MOV             R0, R4
14B6F4:  BL              sub_104326
14B6F8:  MOVW            R12, #0xFFFF
14B6FC:  CBZ             R0, loc_14B72E
14B6FE:  MOVW            R1, #0xEA60
14B702:  ADD             R1, R6
14B704:  LDRD.W          R2, R3, [R1]
14B708:  CMP             R2, R3
14B70A:  BEQ             loc_14B726
14B70C:  MOV.W           LR, #0x1F40
14B710:  LDR             R1, [R2]
14B712:  ADD.W           R1, R6, R1,LSL#2
14B716:  LDR.W           R1, [R1,LR]
14B71A:  CMP             R1, R0
14B71C:  BEQ             loc_14B726
14B71E:  ADDS            R2, #4
14B720:  CMP             R2, R3
14B722:  BNE             loc_14B710
14B724:  B               loc_14B72E
14B726:  CMP             R2, R3
14B728:  IT NE
14B72A:  LDRHNE.W        R12, [R2]
14B72E:  LDRH            R0, [R5,#0x16]
14B730:  CMP             R12, R0
14B732:  BNE             loc_14B6B2
14B734:  MOV             R1, SP
14B736:  MOV             R0, R4
14B738:  BL              sub_F8910
14B73C:  VMOV.F32        S0, #1.0
14B740:  VLDR            S2, [SP,#0x50+var_18]
14B744:  LDRD.W          R1, R2, [SP,#0x50+var_20]
14B748:  MOV             R0, R4
14B74A:  VADD.F32        S0, S2, S0
14B74E:  VMOV            R3, S0
14B752:  BL              sub_104098
14B756:  LDR.W           R0, [R8]
14B75A:  MOV.W           R2, #0x3E8
14B75E:  LDR             R1, =(aRCarJackedW - 0x14B766); "~r~Car Jacked~w~!" ...
14B760:  MOVS            R3, #5
14B762:  ADD             R1, PC; "~r~Car Jacked~w~!"
14B764:  BL              sub_FA2C0
14B768:  B               loc_14B6B2
