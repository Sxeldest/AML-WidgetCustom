; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode14GetAllMatchingERK5CRectR18CPtrListSingleLink
; Address            : 0x40DD80 - 0x40DE80
; =========================================================

40DD80:  PUSH            {R4-R7,LR}
40DD82:  ADD             R7, SP, #0xC
40DD84:  PUSH.W          {R8-R10}
40DD88:  VPUSH           {D8}
40DD8C:  SUB             SP, SP, #8
40DD8E:  MOV             R6, R0
40DD90:  MOV             R10, R2
40DD92:  LDR             R5, [R6,#0x10]
40DD94:  MOV             R8, R1
40DD96:  CBZ             R5, loc_40DDB2
40DD98:  MOVS            R0, #byte_8; this
40DD9A:  LDR             R4, [R5]
40DD9C:  BLX             j__ZN18CPtrNodeSingleLinknwEj; CPtrNodeSingleLink::operator new(uint)
40DDA0:  STR             R4, [R0]
40DDA2:  LDR.W           R1, [R10]
40DDA6:  STR             R1, [R0,#4]
40DDA8:  STR.W           R0, [R10]
40DDAC:  LDR             R5, [R5,#4]
40DDAE:  CMP             R5, #0
40DDB0:  BNE             loc_40DD98
40DDB2:  VMOV.F32        S16, #0.5
40DDB6:  ADD.W           R9, R6, #0x14
40DDBA:  MOVS            R5, #0
40DDBC:  LDR.W           R0, [R9,R5,LSL#2]
40DDC0:  CMP             R0, #0
40DDC2:  BEQ             loc_40DE6E
40DDC4:  LDR             R1, [R6,#4]
40DDC6:  VLDR            S2, [R6]
40DDCA:  STR             R1, [SP,#0x28+var_24]
40DDCC:  LDR             R2, [R6,#0xC]
40DDCE:  VLDR            S0, [R6,#8]
40DDD2:  STR             R2, [SP,#0x28+var_28]
40DDD4:  LDR             R3, [R6,#0x24]
40DDD6:  CMP             R3, #0
40DDD8:  BEQ             loc_40DE6E
40DDDA:  CMP             R5, #3; switch 4 cases
40DDDC:  BHI             def_40DDE6; jumptable 0040DDE6 default case
40DDDE:  VMOV            S4, R1
40DDE2:  VMOV            S6, R2
40DDE6:  TBB.W           [PC,R5]; switch jump
40DDEA:  DCB 2; jump table for switch statement
40DDEB:  DCB 8
40DDEC:  DCB 0xE
40DDED:  DCB 0x13
40DDEE:  VADD.F32        S0, S2, S0; jumptable 0040DDE6 case 0
40DDF2:  MOV             R1, SP
40DDF4:  VMUL.F32        S0, S0, S16
40DDF8:  B               loc_40DE1A
40DDFA:  VADD.F32        S2, S2, S0; jumptable 0040DDE6 case 1
40DDFE:  MOV             R1, SP
40DE00:  VMUL.F32        S2, S2, S16
40DE04:  B               loc_40DE1A
40DE06:  VADD.F32        S0, S2, S0; jumptable 0040DDE6 case 2
40DE0A:  VMUL.F32        S0, S0, S16
40DE0E:  B               loc_40DE18
40DE10:  VADD.F32        S2, S2, S0; jumptable 0040DDE6 case 3
40DE14:  VMUL.F32        S2, S2, S16
40DE18:  ADD             R1, SP, #0x28+var_24
40DE1A:  VADD.F32        S4, S4, S6
40DE1E:  VMUL.F32        S4, S4, S16
40DE22:  VSTR            S4, [R1]
40DE26:  VLDR            S4, [R8,#8]; jumptable 0040DDE6 default case
40DE2A:  VCMPE.F32       S2, S4
40DE2E:  VMRS            APSR_nzcv, FPSCR
40DE32:  BGT             loc_40DE6E
40DE34:  VLDR            S2, [R8]
40DE38:  VCMPE.F32       S0, S2
40DE3C:  VMRS            APSR_nzcv, FPSCR
40DE40:  BLT             loc_40DE6E
40DE42:  VLDR            S0, [SP,#0x28+var_28]
40DE46:  VLDR            S2, [R8,#4]
40DE4A:  VCMPE.F32       S0, S2
40DE4E:  VMRS            APSR_nzcv, FPSCR
40DE52:  BGT             loc_40DE6E
40DE54:  VLDR            S0, [SP,#0x28+var_24]
40DE58:  VLDR            S2, [R8,#0xC]
40DE5C:  VCMPE.F32       S0, S2
40DE60:  VMRS            APSR_nzcv, FPSCR
40DE64:  BLT             loc_40DE6E
40DE66:  MOV             R1, R8
40DE68:  MOV             R2, R10
40DE6A:  BLX             j__ZN13CQuadTreeNode14GetAllMatchingERK5CRectR18CPtrListSingleLink; CQuadTreeNode::GetAllMatching(CRect const&,CPtrListSingleLink &)
40DE6E:  ADDS            R5, #1
40DE70:  CMP             R5, #4
40DE72:  BNE             loc_40DDBC
40DE74:  ADD             SP, SP, #8
40DE76:  VPOP            {D8}
40DE7A:  POP.W           {R8-R10}
40DE7E:  POP             {R4-R7,PC}
