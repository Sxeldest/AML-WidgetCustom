; =========================================================
; Game Engine Function: mpg123_close
; Address            : 0x22F708 - 0x22F7D8
; =========================================================

22F708:  PUSH            {R4-R7,LR}
22F70A:  ADD             R7, SP, #0xC
22F70C:  PUSH.W          {R11}
22F710:  MOV             R4, R0
22F712:  CMP             R4, #0
22F714:  BEQ             loc_22F7CC
22F716:  MOVW            R1, #0xB2E0
22F71A:  ADDS            R6, R4, R1
22F71C:  LDR             R0, [R4,R1]
22F71E:  CBZ             R0, loc_22F72A
22F720:  LDR             R1, [R0,#4]
22F722:  CMP             R1, #0
22F724:  ITT NE
22F726:  MOVNE           R0, R4
22F728:  BLXNE           R1
22F72A:  MOVS            R5, #0
22F72C:  STR             R5, [R6]
22F72E:  LDR             R0, [R4,#4]
22F730:  CBZ             R0, loc_22F746
22F732:  MOVW            R0, #0xB2B8
22F736:  STR             R5, [R4,R0]
22F738:  MOVW            R0, #0xB2BC
22F73C:  STR             R5, [R4,R0]
22F73E:  MOVW            R0, #0xB2B0
22F742:  STR             R5, [R4,R0]
22F744:  STR             R5, [R4,#4]
22F746:  MOVW            R0, #0xB290
22F74A:  MOVW            R1, #0xB288
22F74E:  STR             R5, [R4,R0]
22F750:  MOVW            R0, #0xB2A8
22F754:  MOVW            R2, #0xB28C
22F758:  STR             R5, [R4,R0]
22F75A:  MOVW            R0, #0xA308
22F75E:  ADD             R0, R4
22F760:  STR             R0, [R4,R1]
22F762:  MOVW            R1, #0x4834
22F766:  LDR             R1, [R4,R1]
22F768:  STR             R0, [R4,R2]
22F76A:  MOVW            R0, #0x4830
22F76E:  LDR             R0, [R4,R0]
22F770:  MOVW            R2, #0x9384
22F774:  STR             R5, [R4,R2]
22F776:  BLX             j___aeabi_memclr8_1
22F77A:  MOVW            R0, #0x9388
22F77E:  MOV.W           R1, #0x1F00
22F782:  ADD             R0, R4
22F784:  BLX             j___aeabi_memclr8
22F788:  MOVW            R0, #0x4A70
22F78C:  VMOV.I32        Q8, #0
22F790:  STRH            R5, [R4,R0]
22F792:  MOVW            R0, #0x4A60
22F796:  ADD             R0, R4
22F798:  MOVW            R1, #0x4808
22F79C:  VST1.64         {D16-D17}, [R0]
22F7A0:  MOVW            R0, #0x4A50
22F7A4:  ADD             R0, R4
22F7A6:  VST1.64         {D16-D17}, [R0]
22F7AA:  ADD.W           R0, R4, #8
22F7AE:  BLX             j___aeabi_memclr8
22F7B2:  MOV             R0, R4
22F7B4:  BL              sub_225790
22F7B8:  MOVW            R1, #0x9324
22F7BC:  LDR             R0, [R4,R1]; p
22F7BE:  CBZ             R0, loc_22F7D0
22F7C0:  ADD             R4, R1
22F7C2:  BLX             free
22F7C6:  MOVS            R5, #0
22F7C8:  STR             R5, [R4]
22F7CA:  B               loc_22F7D0
22F7CC:  MOV.W           R5, #0xFFFFFFFF
22F7D0:  MOV             R0, R5
22F7D2:  POP.W           {R11}
22F7D6:  POP             {R4-R7,PC}
