; =========================================================
; Game Engine Function: sub_866CC
; Address            : 0x866CC - 0x86772
; =========================================================

866CC:  PUSH            {R4-R7,LR}
866CE:  ADD             R7, SP, #0xC
866D0:  PUSH.W          {R8-R11}
866D4:  SUB             SP, SP, #4
866D6:  LDR             R5, =(byte_1ABE88 - 0x866DC)
866D8:  ADD             R5, PC; byte_1ABE88
866DA:  LDRB.W          R8, [R5]
866DE:  CMP.W           R8, #0
866E2:  BNE             loc_86764
866E4:  LDR             R0, =(aDbgSampInitMod - 0x866EA); "[dbg:samp:init] : module initializing.."... ...
866E6:  ADD             R0, PC; "[dbg:samp:init] : module initializing.."...
866E8:  BL              sub_80664
866EC:  LDR             R0, =(dword_1ABE8C - 0x866F2)
866EE:  ADD             R0, PC; dword_1ABE8C
866F0:  LDR             R6, [R0]
866F2:  MOV             R11, R0
866F4:  LDR             R4, [R0,#(dword_1ABE90 - 0x1ABE8C)]
866F6:  B               loc_86702
866F8:  MOVS            R1, #4
866FA:  LDR             R2, [R0]
866FC:  LDR.W           R1, [R2,R1,LSL#2]
86700:  BLX             R1
86702:  CMP             R4, R6
86704:  BEQ             loc_86718
86706:  LDR.W           R0, [R4,#-8]
8670A:  SUBS            R4, #0x18
8670C:  CMP             R4, R0
8670E:  BEQ             loc_866F8
86710:  CMP             R0, #0
86712:  BEQ             loc_86702
86714:  MOVS            R1, #5
86716:  B               loc_866FA
86718:  LDR             R0, =(dword_1ABE98 - 0x86724)
8671A:  MOV             R9, R5
8671C:  STR.W           R6, [R11,#(dword_1ABE90 - 0x1ABE8C)]
86720:  ADD             R0, PC; dword_1ABE98
86722:  LDR             R5, [R0]
86724:  MOV             R10, R0
86726:  LDR             R4, [R0,#(dword_1ABE9C - 0x1ABE98)]
86728:  B               loc_86734
8672A:  MOVS            R1, #4
8672C:  LDR             R2, [R0]
8672E:  LDR.W           R1, [R2,R1,LSL#2]
86732:  BLX             R1
86734:  CMP             R4, R5
86736:  BEQ             loc_8674A
86738:  LDR.W           R0, [R4,#-8]
8673C:  SUBS            R4, #0x18
8673E:  CMP             R4, R0
86740:  BEQ             loc_8672A
86742:  CMP             R0, #0
86744:  BEQ             loc_86734
86746:  MOVS            R1, #5
86748:  B               loc_8672C
8674A:  LDR             R1, =(byte_1ABEA4 - 0x86754)
8674C:  MOVS            R2, #0
8674E:  LDR             R0, =(aDbgSampInitMod_0 - 0x8675A); "[dbg:samp:init] : module initialized" ...
86750:  ADD             R1, PC; byte_1ABEA4
86752:  STR.W           R5, [R10,#(dword_1ABE9C - 0x1ABE98)]
86756:  ADD             R0, PC; "[dbg:samp:init] : module initialized"
86758:  STRB            R2, [R1]
8675A:  BL              sub_80664
8675E:  MOVS            R0, #1
86760:  STRB.W          R0, [R9]
86764:  CLZ.W           R0, R8
86768:  LSRS            R0, R0, #5
8676A:  ADD             SP, SP, #4
8676C:  POP.W           {R8-R11}
86770:  POP             {R4-R7,PC}
