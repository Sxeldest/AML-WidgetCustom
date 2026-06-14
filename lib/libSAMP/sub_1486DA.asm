; =========================================================
; Game Engine Function: sub_1486DA
; Address            : 0x1486DA - 0x1487C6
; =========================================================

1486DA:  PUSH            {R4-R7,LR}
1486DC:  ADD             R7, SP, #0xC
1486DE:  PUSH.W          {R8-R11}
1486E2:  SUB             SP, SP, #4
1486E4:  VPUSH           {D8-D9}
1486E8:  SUB             SP, SP, #0x38
1486EA:  MOV             R11, R2
1486EC:  LDRD.W          R4, R2, [R2]
1486F0:  MOVW            R10, #0xFC18
1486F4:  STRD.W          R4, R2, [SP,#0x68+var_44]
1486F8:  ADD.W           R4, R0, #0x3EC
1486FC:  VMOV            S16, R1
148700:  LDRD.W          R6, R5, [R3]
148704:  MOV.W           R12, #0x3E800000
148708:  LDR.W           LR, [R3,#8]
14870C:  MOVW            R0, #0xFFFF
148710:  LDR.W           R3, [R11,#8]
148714:  MOV.W           R8, #0
148718:  MOVT            R10, #0xFFFF
14871C:  MOVW            R9, #0x4B64
148720:  STR.W           R12, [SP,#0x68+var_38]
148724:  STR             R3, [SP,#0x68+var_3C]
148726:  STRD.W          R6, R5, [SP,#0x68+var_58]
14872A:  STRD.W          LR, R12, [SP,#0x68+var_50]
14872E:  STR             R0, [SP,#0x68+var_68]
148730:  ADD.W           R0, R4, R8
148734:  LDRB.W          R0, [R0,R10]
148738:  CBZ             R0, loc_1487AA
14873A:  LDR.W           R6, [R4,R8,LSL#2]
14873E:  CBZ             R6, loc_1487AA
148740:  LDM.W           R11, {R1-R3}
148744:  MOV             R0, R6
148746:  BL              sub_F8DB8
14874A:  MOV             R5, R0
14874C:  MOV             R0, R6
14874E:  BL              sub_10227C
148752:  CBZ             R0, loc_1487AA
148754:  MOV             R0, R6
148756:  BL              sub_F8A2C
14875A:  CMP             R0, R9
14875C:  BEQ             loc_1487AA
14875E:  VMOV            S18, R5
148762:  VCMP.F32        S18, S16
148766:  VMRS            APSR_nzcv, FPSCR
14876A:  BPL             loc_1487AA
14876C:  MOV             R0, R6
14876E:  BL              sub_F8A2C
148772:  BL              sub_108538
148776:  CBZ             R0, loc_1487AA
148778:  MOV             R5, R0
14877A:  MOV             R0, R6
14877C:  BL              sub_F8EF0
148780:  CBZ             R0, loc_1487A2
148782:  LDR             R0, [R5,#0x2C]
148784:  CBZ             R0, loc_1487A2
148786:  ADD             R1, SP, #0x68+var_44
148788:  ADD             R2, SP, #0x68+var_58
14878A:  MOV             R0, R6
14878C:  BL              sub_F909C
148790:  CMP             R0, #0
148792:  IT NE
148794:  VMOVNE.F32      S16, S18
148798:  LDR             R0, [SP,#0x68+var_68]
14879A:  IT NE
14879C:  MOVNE           R0, R8
14879E:  STR             R0, [SP,#0x68+var_68]
1487A0:  B               loc_1487AA
1487A2:  ADD             R1, SP, #0x68+var_64
1487A4:  MOV             R0, R6
1487A6:  BL              sub_F907C
1487AA:  ADD.W           R8, R8, #1
1487AE:  CMP.W           R8, #0x3E8
1487B2:  BNE             loc_148730
1487B4:  LDR             R0, [SP,#0x68+var_68]
1487B6:  UXTH            R0, R0
1487B8:  ADD             SP, SP, #0x38 ; '8'
1487BA:  VPOP            {D8-D9}
1487BE:  ADD             SP, SP, #4
1487C0:  POP.W           {R8-R11}
1487C4:  POP             {R4-R7,PC}
