; =========================================================
; Game Engine Function: sub_DC838
; Address            : 0xDC838 - 0xDC88A
; =========================================================

DC838:  PUSH            {R4,R6,R7,LR}
DC83A:  ADD             R7, SP, #8
DC83C:  MOV.W           R0, #0x100; unsigned int
DC840:  BLX             j__Znwj; operator new(uint)
DC844:  LDR             R1, =(unk_82790 - 0xDC850)
DC846:  MOV.W           R2, #0x100; n
DC84A:  MOV             R4, R0
DC84C:  ADD             R1, PC; unk_82790 ; src
DC84E:  BLX             j_memcpy
DC852:  LDR             R0, =(dword_23DAD4 - 0xDC85E)
DC854:  ADR             R1, dword_DC890
DC856:  VLD1.64         {D16-D17}, [R1]
DC85A:  ADD             R0, PC; dword_23DAD4
DC85C:  STR             R4, [R0]
DC85E:  MOVS            R0, #0
DC860:  ADDS            R1, R4, R0
DC862:  ADDS            R0, #0x10
DC864:  VLD1.32         {D18-D19}, [R1]
DC868:  CMP.W           R0, #0x100
DC86C:  VEOR            Q9, Q9, Q8
DC870:  VST1.32         {D18-D19}, [R1]
DC874:  BNE             loc_DC860
DC876:  LDR             R0, =(sub_DA43C+1 - 0xDC880)
DC878:  LDR             R1, =(dword_23DAD4 - 0xDC882)
DC87A:  LDR             R2, =(off_22A540 - 0xDC884)
DC87C:  ADD             R0, PC; sub_DA43C
DC87E:  ADD             R1, PC; dword_23DAD4
DC880:  ADD             R2, PC; off_22A540
DC882:  POP.W           {R4,R6,R7,LR}
DC886:  B.W             sub_224250
