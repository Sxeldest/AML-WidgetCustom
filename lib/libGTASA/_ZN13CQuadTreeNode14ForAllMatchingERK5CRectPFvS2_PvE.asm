; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode14ForAllMatchingERK5CRectPFvS2_PvE
; Address            : 0x40E044 - 0x40E136
; =========================================================

40E044:  PUSH            {R4-R7,LR}
40E046:  ADD             R7, SP, #0xC
40E048:  PUSH.W          {R8,R9,R11}
40E04C:  VPUSH           {D8}
40E050:  SUB             SP, SP, #8
40E052:  MOV             R6, R0
40E054:  MOV             R8, R2
40E056:  LDR             R4, [R6,#0x10]
40E058:  MOV             R5, R1
40E05A:  CBZ             R4, loc_40E068
40E05C:  LDR             R1, [R4]
40E05E:  MOV             R0, R5
40E060:  BLX             R8
40E062:  LDR             R4, [R4,#4]
40E064:  CMP             R4, #0
40E066:  BNE             loc_40E05C
40E068:  VMOV.F32        S16, #0.5
40E06C:  ADD.W           R9, R6, #0x14
40E070:  MOVS            R4, #0
40E072:  LDR.W           R0, [R9,R4,LSL#2]
40E076:  CMP             R0, #0
40E078:  BEQ             loc_40E124
40E07A:  LDR             R1, [R6,#4]
40E07C:  VLDR            S2, [R6]
40E080:  STR             R1, [SP,#0x28+var_24]
40E082:  LDR             R2, [R6,#0xC]
40E084:  VLDR            S0, [R6,#8]
40E088:  STR             R2, [SP,#0x28+var_28]
40E08A:  LDR             R3, [R6,#0x24]
40E08C:  CMP             R3, #0
40E08E:  BEQ             loc_40E124
40E090:  CMP             R4, #3; switch 4 cases
40E092:  BHI             def_40E09C; jumptable 0040E09C default case
40E094:  VMOV            S4, R1
40E098:  VMOV            S6, R2
40E09C:  TBB.W           [PC,R4]; switch jump
40E0A0:  DCB 2; jump table for switch statement
40E0A1:  DCB 8
40E0A2:  DCB 0xE
40E0A3:  DCB 0x13
40E0A4:  VADD.F32        S0, S2, S0; jumptable 0040E09C case 0
40E0A8:  MOV             R1, SP
40E0AA:  VMUL.F32        S0, S0, S16
40E0AE:  B               loc_40E0D0
40E0B0:  VADD.F32        S2, S2, S0; jumptable 0040E09C case 1
40E0B4:  MOV             R1, SP
40E0B6:  VMUL.F32        S2, S2, S16
40E0BA:  B               loc_40E0D0
40E0BC:  VADD.F32        S0, S2, S0; jumptable 0040E09C case 2
40E0C0:  VMUL.F32        S0, S0, S16
40E0C4:  B               loc_40E0CE
40E0C6:  VADD.F32        S2, S2, S0; jumptable 0040E09C case 3
40E0CA:  VMUL.F32        S2, S2, S16
40E0CE:  ADD             R1, SP, #0x28+var_24
40E0D0:  VADD.F32        S4, S4, S6
40E0D4:  VMUL.F32        S4, S4, S16
40E0D8:  VSTR            S4, [R1]
40E0DC:  VLDR            S4, [R5,#8]; jumptable 0040E09C default case
40E0E0:  VCMPE.F32       S2, S4
40E0E4:  VMRS            APSR_nzcv, FPSCR
40E0E8:  BGT             loc_40E124
40E0EA:  VLDR            S2, [R5]
40E0EE:  VCMPE.F32       S0, S2
40E0F2:  VMRS            APSR_nzcv, FPSCR
40E0F6:  BLT             loc_40E124
40E0F8:  VLDR            S0, [SP,#0x28+var_28]
40E0FC:  VLDR            S2, [R5,#4]
40E100:  VCMPE.F32       S0, S2
40E104:  VMRS            APSR_nzcv, FPSCR
40E108:  BGT             loc_40E124
40E10A:  VLDR            S0, [SP,#0x28+var_24]
40E10E:  VLDR            S2, [R5,#0xC]
40E112:  VCMPE.F32       S0, S2
40E116:  VMRS            APSR_nzcv, FPSCR
40E11A:  BLT             loc_40E124
40E11C:  MOV             R1, R5
40E11E:  MOV             R2, R8
40E120:  BLX             j__ZN13CQuadTreeNode14ForAllMatchingERK5CRectPFvS2_PvE; CQuadTreeNode::ForAllMatching(CRect const&,void (*)(CRect const&,void *))
40E124:  ADDS            R4, #1
40E126:  CMP             R4, #4
40E128:  BNE             loc_40E072
40E12A:  ADD             SP, SP, #8
40E12C:  VPOP            {D8}
40E130:  POP.W           {R8,R9,R11}
40E134:  POP             {R4-R7,PC}
