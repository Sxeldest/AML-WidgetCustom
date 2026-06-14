; =========================================================
; Game Engine Function: sub_8679C
; Address            : 0x8679C - 0x86860
; =========================================================

8679C:  PUSH            {R4-R7,LR}
8679E:  ADD             R7, SP, #0xC
867A0:  PUSH.W          {R8-R11}
867A4:  SUB             SP, SP, #4
867A6:  LDR             R6, =(byte_1ABE88 - 0x867AC)
867A8:  ADD             R6, PC; byte_1ABE88
867AA:  LDRB            R0, [R6]
867AC:  CMP             R0, #0
867AE:  BEQ             loc_86858
867B0:  LDR             R0, =(aDbgSampFreeMod - 0x867B6); "[dbg:samp:free] : module releasing..." ...
867B2:  ADD             R0, PC; "[dbg:samp:free] : module releasing..."
867B4:  BL              sub_80664
867B8:  LDR             R0, =(byte_1ABEA4 - 0x867BE)
867BA:  ADD             R0, PC; byte_1ABEA4
867BC:  MOV             R11, R0
867BE:  LDRB            R0, [R0]
867C0:  CMP             R0, #0
867C2:  LDR             R0, =(dword_1ABE98 - 0x867C8)
867C4:  ADD             R0, PC; dword_1ABE98
867C6:  MOV             R9, R0
867C8:  BEQ             loc_867E6
867CA:  LDRD.W          R4, R5, [R9]
867CE:  MOV             R0, R9
867D0:  B               loc_867D4
867D2:  ADDS            R4, #0x18
867D4:  CMP             R4, R5
867D6:  BEQ             loc_867E6
867D8:  LDR             R0, [R4,#0x10]
867DA:  CMP             R0, #0
867DC:  BEQ             loc_867D2
867DE:  LDR             R1, [R0]
867E0:  LDR             R1, [R1,#0x18]
867E2:  BLX             R1
867E4:  B               loc_867D2
867E6:  LDR             R0, =(dword_1ABE8C - 0x867EE)
867E8:  MOV             R8, R6
867EA:  ADD             R0, PC; dword_1ABE8C
867EC:  LDR             R4, [R0]
867EE:  MOV             R10, R0
867F0:  LDR             R5, [R0,#(dword_1ABE90 - 0x1ABE8C)]
867F2:  MOVS            R0, #0
867F4:  STRB.W          R0, [R11]
867F8:  B               loc_86804
867FA:  MOVS            R1, #4
867FC:  LDR             R2, [R0]
867FE:  LDR.W           R1, [R2,R1,LSL#2]
86802:  BLX             R1
86804:  CMP             R5, R4
86806:  BEQ             loc_8681A
86808:  LDR.W           R0, [R5,#-8]
8680C:  SUBS            R5, #0x18
8680E:  CMP             R5, R0
86810:  BEQ             loc_867FA
86812:  CMP             R0, #0
86814:  BEQ             loc_86804
86816:  MOVS            R1, #5
86818:  B               loc_867FC
8681A:  LDRD.W          R5, R6, [R9]
8681E:  MOV             R0, R9
86820:  STR.W           R4, [R10,#(dword_1ABE90 - 0x1ABE8C)]
86824:  B               loc_86830
86826:  MOVS            R1, #4
86828:  LDR             R2, [R0]
8682A:  LDR.W           R1, [R2,R1,LSL#2]
8682E:  BLX             R1
86830:  CMP             R6, R5
86832:  BEQ             loc_86846
86834:  LDR.W           R0, [R6,#-8]
86838:  SUBS            R6, #0x18
8683A:  CMP             R6, R0
8683C:  BEQ             loc_86826
8683E:  CMP             R0, #0
86840:  BEQ             loc_86830
86842:  MOVS            R1, #5
86844:  B               loc_86828
86846:  LDR             R0, =(aDbgSampFreeMod_0 - 0x86850); "[dbg:samp:free] : module released" ...
86848:  STR.W           R5, [R9,#(dword_1ABE9C - 0x1ABE98)]
8684C:  ADD             R0, PC; "[dbg:samp:free] : module released"
8684E:  BL              sub_80664
86852:  MOVS            R0, #0
86854:  STRB.W          R0, [R8]
86858:  ADD             SP, SP, #4
8685A:  POP.W           {R8-R11}
8685E:  POP             {R4-R7,PC}
