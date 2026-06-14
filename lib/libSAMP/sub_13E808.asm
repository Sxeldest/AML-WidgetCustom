; =========================================================
; Game Engine Function: sub_13E808
; Address            : 0x13E808 - 0x13E878
; =========================================================

13E808:  PUSH            {R4-R7,LR}
13E80A:  ADD             R7, SP, #0xC
13E80C:  PUSH.W          {R8-R10}
13E810:  MOV             R8, R1
13E812:  MOV             R5, R0
13E814:  BL              sub_F0B30
13E818:  LDR             R1, =(dword_314210 - 0x13E81E)
13E81A:  ADD             R1, PC; dword_314210
13E81C:  LDR             R2, [R1]
13E81E:  SUBS            R2, R0, R2
13E820:  LSRS            R2, R2, #2
13E822:  CMP             R2, #0x7C ; '|'
13E824:  LDR             R2, =(byte_314214 - 0x13E82A)
13E826:  ADD             R2, PC; byte_314214
13E828:  MOV             R10, R2
13E82A:  BLS             loc_13E83A
13E82C:  LDRB.W          R2, [R10]
13E830:  MOV             R3, R10
13E832:  STR             R0, [R1]
13E834:  MVNS            R0, R2
13E836:  STRB.W          R0, [R10]
13E83A:  LDR             R0, =(off_234970 - 0x13E846)
13E83C:  MOVS            R4, #0
13E83E:  MOV.W           R9, #0x1000
13E842:  ADD             R0, PC; off_234970
13E844:  LDR             R6, [R0]; dword_23DEF0
13E846:  ADDS            R0, R5, R4
13E848:  LDRB.W          R0, [R0,R9]
13E84C:  CBZ             R0, loc_13E86A
13E84E:  LDRB.W          R2, [R10]
13E852:  MOV             R3, R8
13E854:  LDR.W           R1, [R5,R4,LSL#2]
13E858:  CMP             R2, #0
13E85A:  MOV.W           R2, #0x14
13E85E:  LDR             R0, [R6]
13E860:  IT EQ
13E862:  MOVEQ           R2, #0x10
13E864:  LDR             R2, [R1,R2]
13E866:  BL              sub_F9B88
13E86A:  ADDS            R4, #1
13E86C:  CMP.W           R4, #0x400
13E870:  BNE             loc_13E846
13E872:  POP.W           {R8-R10}
13E876:  POP             {R4-R7,PC}
