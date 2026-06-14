; =========================================================
; Game Engine Function: sub_1527B0
; Address            : 0x1527B0 - 0x152858
; =========================================================

1527B0:  PUSH            {R4-R7,LR}
1527B2:  ADD             R7, SP, #0xC
1527B4:  PUSH.W          {R8,R9,R11}
1527B8:  SUB             SP, SP, #0x20
1527BA:  ADD.W           R4, R0, #0xC
1527BE:  SUB.W           R8, R7, #-var_2A
1527C2:  STRH.W          R1, [R7,#var_2A]
1527C6:  MOV             R9, R2
1527C8:  MOV             R0, R4
1527CA:  MOV             R1, R8
1527CC:  BL              sub_15426C
1527D0:  MOVS            R6, #0
1527D2:  CBNZ            R0, loc_15284E
1527D4:  MOVS            R0, #0x70 ; 'p'; unsigned int
1527D6:  BLX             j__Znwj; operator new(uint)
1527DA:  LDR             R1, =(_ZTV18AudioChannelPlayer - 0x1527E8); `vtable for'AudioChannelPlayer ...
1527DC:  ADDS            R2, R0, #4
1527DE:  VMOV.I32        Q8, #0
1527E2:  LDR             R3, =(unk_B998D - 0x1527F8)
1527E4:  ADD             R1, PC; `vtable for'AudioChannelPlayer
1527E6:  MOV.W           R5, #0x3F800000
1527EA:  ADDS            R1, #8
1527EC:  STRD.W          R1, R2, [R0]
1527F0:  LDRH.W          R1, [R9]
1527F4:  ADD             R3, PC; unk_B998D
1527F6:  STRH.W          R1, [R0,#0x68]
1527FA:  ADD.W           R1, R0, #0xC
1527FE:  VST1.32         {D16-D17}, [R1]!
152802:  STR             R6, [R1]
152804:  ADD.W           R1, R0, #0x24 ; '$'
152808:  STR             R2, [R0,#8]
15280A:  MOVS            R2, #0x14
15280C:  VST1.32         {D16-D17}, [R1]!
152810:  VST1.32         {D16-D17}, [R1],R2
152814:  STR             R5, [R0,#0x20]
152816:  STRD.W          R6, R6, [R0,#0x60]
15281A:  STRB.W          R6, [R0,#0x6A]
15281E:  STR             R0, [SP,#0x38+var_30]
152820:  ADD             R0, SP, #0x38+var_30
152822:  STRH            R6, [R1]
152824:  STR.W           R8, [SP,#0x38+var_24]
152828:  STR             R0, [SP,#0x38+var_28]
15282A:  ADD             R0, SP, #0x38+var_28
15282C:  ADD             R1, SP, #0x38+var_24
15282E:  MOV             R2, R8
152830:  STRD.W          R1, R0, [SP,#0x38+var_38]
152834:  ADD             R0, SP, #0x38+var_20
152836:  MOV             R1, R4
152838:  BL              sub_153BB4
15283C:  LDR             R1, [SP,#0x38+var_20]
15283E:  LDR             R0, [SP,#0x38+var_30]
152840:  LDR             R6, [R1,#0xC]
152842:  MOVS            R1, #0
152844:  STR             R1, [SP,#0x38+var_30]
152846:  CBZ             R0, loc_15284E
152848:  LDR             R1, [R0]
15284A:  LDR             R1, [R1,#4]
15284C:  BLX             R1
15284E:  MOV             R0, R6
152850:  ADD             SP, SP, #0x20 ; ' '
152852:  POP.W           {R8,R9,R11}
152856:  POP             {R4-R7,PC}
