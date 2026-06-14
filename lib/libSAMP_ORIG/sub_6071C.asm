; =========================================================
; Game Engine Function: sub_6071C
; Address            : 0x6071C - 0x607CA
; =========================================================

6071C:  PUSH            {R4-R7,LR}
6071E:  ADD             R7, SP, #0xC
60720:  PUSH.W          {R8-R10}
60724:  CMP             R0, #0
60726:  BEQ             loc_607C4
60728:  MOV             R4, R0
6072A:  LDR             R0, =(off_1174F0 - 0x60730)
6072C:  ADD             R0, PC; off_1174F0
6072E:  LDR             R1, [R0]
60730:  MOV             R0, R4
60732:  BLX             R1
60734:  LDR             R6, =(dword_1174D4 - 0x6073A)
60736:  ADD             R6, PC; dword_1174D4
60738:  LDR             R5, [R6,#(dword_1174E0 - 0x1174D4)]
6073A:  LDR             R0, =(off_114ACC - 0x60742)
6073C:  LDR             R1, =(off_114AD0 - 0x60744)
6073E:  ADD             R0, PC; off_114ACC
60740:  ADD             R1, PC; off_114AD0
60742:  MOV             R9, R1
60744:  LDR             R1, =(off_114AD4 - 0x6074A)
60746:  ADD             R1, PC; off_114AD4
60748:  MOV             R10, R1
6074A:  CBZ             R5, loc_60772
6074C:  MOV             R8, R0
6074E:  LDR             R0, [R0]; off_1175F8
60750:  MOV             R1, R5
60752:  LDR             R2, [R0]
60754:  MOV             R0, R4
60756:  BLX             R2
60758:  LDR.W           R0, [R9]; off_117560
6075C:  LDR             R1, [R0]
6075E:  LDR             R0, [R5,#4]
60760:  BLX             R1
60762:  LDR.W           R0, [R10]; off_117564
60766:  LDR             R1, [R0]
60768:  MOV             R0, R5
6076A:  BLX             R1
6076C:  MOVS            R0, #0
6076E:  STR             R0, [R6,#(dword_1174E0 - 0x1174D4)]
60770:  MOV             R0, R8
60772:  LDR             R5, [R6,#(dword_1174E4 - 0x1174D4)]
60774:  MOV             R8, R10
60776:  CBZ             R5, loc_6079E
60778:  MOV             R10, R0
6077A:  LDR             R0, [R0]; off_1175F8
6077C:  MOV             R1, R5
6077E:  LDR             R2, [R0]
60780:  MOV             R0, R4
60782:  BLX             R2
60784:  LDR.W           R0, [R9]; off_117560
60788:  LDR             R1, [R0]
6078A:  LDR             R0, [R5,#4]
6078C:  BLX             R1
6078E:  LDR.W           R0, [R8]; off_117564
60792:  LDR             R1, [R0]
60794:  MOV             R0, R5
60796:  BLX             R1
60798:  MOVS            R0, #0
6079A:  STR             R0, [R6,#(dword_1174E4 - 0x1174D4)]
6079C:  MOV             R0, R10
6079E:  LDR             R5, [R6,#(dword_1174E8 - 0x1174D4)]
607A0:  CBZ             R5, loc_607C4
607A2:  LDR             R0, [R0]; off_1175F8
607A4:  MOV             R1, R5
607A6:  LDR             R2, [R0]
607A8:  MOV             R0, R4
607AA:  BLX             R2
607AC:  LDR.W           R0, [R9]; off_117560
607B0:  LDR             R1, [R0]
607B2:  LDR             R0, [R5,#4]
607B4:  BLX             R1
607B6:  LDR.W           R0, [R8]; off_117564
607BA:  LDR             R1, [R0]
607BC:  MOV             R0, R5
607BE:  BLX             R1
607C0:  MOVS            R0, #0
607C2:  STR             R0, [R6,#(dword_1174E8 - 0x1174D4)]
607C4:  POP.W           {R8-R10}
607C8:  POP             {R4-R7,PC}
