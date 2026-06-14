; =========================================================
; Game Engine Function: sub_17F6B8
; Address            : 0x17F6B8 - 0x17F800
; =========================================================

17F6B8:  PUSH            {R4-R7,LR}
17F6BA:  ADD             R7, SP, #0xC
17F6BC:  PUSH.W          {R8-R11}
17F6C0:  SUB             SP, SP, #0x14
17F6C2:  MOV             R4, R0
17F6C4:  LDR             R0, =(_ZTV7RakPeer - 0x17F6CA); `vtable for'RakPeer ...
17F6C6:  ADD             R0, PC; `vtable for'RakPeer
17F6C8:  ADD.W           R1, R0, #8
17F6CC:  MOV             R0, R4
17F6CE:  STR.W           R1, [R0],#0xC
17F6D2:  STR             R0, [SP,#0x30+var_20]
17F6D4:  BL              sub_17D4A8
17F6D8:  ADD.W           R8, R4, #0x120
17F6DC:  MOV             R0, R8
17F6DE:  BL              sub_17D4A8
17F6E2:  MOVS            R0, #0
17F6E4:  STRD.W          R0, R0, [R4,#0x344]
17F6E8:  STR.W           R0, [R4,#0x34C]
17F6EC:  ADD.W           R5, R4, #0x350
17F6F0:  STR.W           R8, [SP,#0x30+var_24]
17F6F4:  MOV             R0, R5
17F6F6:  BL              sub_18CB54
17F6FA:  ADD.W           R6, R4, #0x36C
17F6FE:  MOV             R0, R6
17F700:  STR             R5, [SP,#0x30+var_28]
17F702:  BL              sub_18CB54
17F706:  ADD.W           R0, R4, #0x370
17F70A:  STR             R6, [SP,#0x30+var_2C]
17F70C:  BL              sub_18CB54
17F710:  ADD.W           R5, R4, #0x374
17F714:  VMOV.I32        Q8, #0
17F718:  ADD.W           R6, R4, #0x38C
17F71C:  STR             R0, [SP,#0x30+var_30]
17F71E:  MOV             R1, R5
17F720:  MOVS            R0, #0
17F722:  VST1.32         {D16-D17}, [R1]!
17F726:  STR.W           R0, [R4,#0x388]
17F72A:  STR             R0, [R1]
17F72C:  MOV             R0, R6
17F72E:  BL              sub_17F894
17F732:  ADDW            R8, R4, #0x7BC
17F736:  MOV             R0, R8
17F738:  BL              sub_17F8F0
17F73C:  ADDW            R9, R4, #0x7D4
17F740:  MOV             R0, R9
17F742:  BL              sub_17E5DA
17F746:  ADDW            R10, R4, #0x814
17F74A:  MOV             R0, R10
17F74C:  BL              sub_1848C6
17F750:  ADDW            R11, R4, #0x9A8
17F754:  MOV             R0, R11
17F756:  BL              sub_17F940
17F75A:  MOVS            R0, #0x10
17F75C:  STR.W           R0, [R4,#0x9CC]
17F760:  MOVS            R0, #0x40 ; '@'; unsigned int
17F762:  BLX             j__Znaj; operator new[](uint)
17F766:  MOVS            R1, #0
17F768:  STR.W           R0, [R4,#0x9C0]
17F76C:  STR.W           R1, [R4,#0x9C4]
17F770:  STR.W           R1, [R4,#0x9C8]
17F774:  BL              sub_18CE58
17F778:  BL              sub_18D328
17F77C:  ADD.W           R0, R4, #0x3A4; int
17F780:  MOVS            R5, #0
17F782:  MOV.W           R1, #0x400; n
17F786:  STRB.W          R5, [R4,#0x96D]
17F78A:  BLX             sub_22178C
17F78E:  MOVS            R0, #1
17F790:  VMOV.I32        Q8, #0
17F794:  STRB            R0, [R4,#4]
17F796:  MOV.W           R0, #0x230
17F79A:  STR.W           R0, [R4,#0x7E0]
17F79E:  MOV.W           R0, #0xFFFFFFFF
17F7A2:  MOVW            R1, #0xFFFF
17F7A6:  STR.W           R0, [R4,#0x7EC]
17F7AA:  STR.W           R0, [R4,#0x234]
17F7AE:  ADDW            R0, R4, #0x7A4
17F7B2:  STR.W           R5, [R4,#0x7B8]
17F7B6:  STRB.W          R5, [R4,#0x7E4]
17F7BA:  STR.W           R5, [R4,#0x340]
17F7BE:  STR             R5, [R4,#8]
17F7C0:  STRD.W          R5, R5, [R4,#0x358]
17F7C4:  STRB            R5, [R4,#6]
17F7C6:  STRB.W          R5, [R4,#0x99C]
17F7CA:  STRH.W          R1, [R4,#0x238]
17F7CE:  STRB.W          R5, [R4,#0x7FD]
17F7D2:  STR.W           R5, [R4,#0x9A0]
17F7D6:  STR.W           R5, [R4,#0x9A4]
17F7DA:  STR.W           R5, [R4,#0x800]
17F7DE:  STRB.W          R5, [R4,#0x33C]
17F7E2:  STRB            R5, [R4,#5]
17F7E4:  VST1.32         {D16-D17}, [R0]!
17F7E8:  STR             R5, [R0]
17F7EA:  MOV             R0, R4
17F7EC:  STR.W           R5, [R4,#0x808]
17F7F0:  STR.W           R5, [R4,#0x80C]
17F7F4:  STR.W           R5, [R4,#0x810]
17F7F8:  ADD             SP, SP, #0x14
17F7FA:  POP.W           {R8-R11}
17F7FE:  POP             {R4-R7,PC}
