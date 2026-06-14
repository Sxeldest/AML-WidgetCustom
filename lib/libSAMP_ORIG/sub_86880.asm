; =========================================================
; Game Engine Function: sub_86880
; Address            : 0x86880 - 0x86952
; =========================================================

86880:  PUSH            {R4-R7,LR}
86882:  ADD             R7, SP, #0xC
86884:  PUSH.W          {R11}
86888:  MOV             R2, R0
8688A:  LDR             R0, =(byte_1ABE88 - 0x86890)
8688C:  ADD             R0, PC; byte_1ABE88
8688E:  LDRB            R0, [R0]
86890:  CBZ             R0, loc_868DC
86892:  LDR             R6, =(dword_1ABE8C - 0x86898)
86894:  ADD             R6, PC; dword_1ABE8C
86896:  LDRD.W          R1, R4, [R6]
8689A:  SUBS            R0, R4, R1
8689C:  BEQ             loc_868C6
8689E:  MOVW            R3, #0xAAAB
868A2:  ADDS            R1, #0x10
868A4:  MOVT            R3, #0x2AAA
868A8:  MOVS            R5, #0
868AA:  SMMUL.W         R0, R0, R3
868AE:  ASRS            R3, R0, #2
868B0:  ADD.W           R0, R3, R0,LSR#31
868B4:  CMP             R0, #1
868B6:  IT LS
868B8:  MOVLS           R0, #1
868BA:  LDR             R3, [R1]
868BC:  CBZ             R3, loc_868F2
868BE:  ADDS            R5, #1
868C0:  ADDS            R1, #0x18
868C2:  CMP             R0, R5
868C4:  BNE             loc_868BA
868C6:  LDR             R0, [R6,#(dword_1ABE94 - 0x1ABE8C)]
868C8:  CMP             R4, R0
868CA:  BCS             loc_868E2
868CC:  MOV             R0, R2
868CE:  LDR.W           R1, [R0,#0x10]!
868D2:  CBZ             R1, loc_8690E
868D4:  CMP             R2, R1
868D6:  BEQ             loc_86918
868D8:  STR             R1, [R4,#0x10]
868DA:  B               loc_86912
868DC:  MOV.W           R5, #0xFFFFFFFF
868E0:  B               loc_8693C
868E2:  LDR             R4, =(dword_1ABE8C - 0x868E8)
868E4:  ADD             R4, PC; dword_1ABE8C
868E6:  MOV             R0, R4
868E8:  MOV             R1, R2
868EA:  BL              sub_7FB88
868EE:  LDR             R0, [R4,#(dword_1ABE90 - 0x1ABE8C)]
868F0:  B               loc_8692A
868F2:  MOVS            R0, #0
868F4:  MOV             R6, R1
868F6:  STR.W           R0, [R6],#-0x10
868FA:  MOV             R3, R2
868FC:  LDR.W           R4, [R3,#0x10]!
86900:  CBZ             R4, loc_8690A
86902:  CMP             R2, R4
86904:  BEQ             loc_86944
86906:  STR             R4, [R1]
86908:  MOV             R1, R3
8690A:  STR             R0, [R1]
8690C:  B               loc_8693C
8690E:  ADD.W           R0, R4, #0x10
86912:  MOVS            R1, #0
86914:  STR             R1, [R0]
86916:  B               loc_86924
86918:  STR             R4, [R4,#0x10]
8691A:  LDR             R0, [R0]
8691C:  LDR             R1, [R0]
8691E:  LDR             R2, [R1,#0xC]
86920:  MOV             R1, R4
86922:  BLX             R2
86924:  ADD.W           R0, R4, #0x18
86928:  STR             R0, [R6,#(dword_1ABE90 - 0x1ABE8C)]
8692A:  LDR             R1, [R6]
8692C:  SUBS            R0, R0, R1
8692E:  MOV             R1, #0xAAAAAAAB
86936:  ASRS            R0, R0, #3
86938:  MULS            R0, R1
8693A:  SUBS            R5, R0, #1
8693C:  MOV             R0, R5
8693E:  POP.W           {R11}
86942:  POP             {R4-R7,PC}
86944:  STR.W           R6, [R1],#-0x10
86948:  LDR             R0, [R3]
8694A:  LDR             R2, [R0]
8694C:  LDR             R2, [R2,#0xC]
8694E:  BLX             R2
86950:  B               loc_8693C
