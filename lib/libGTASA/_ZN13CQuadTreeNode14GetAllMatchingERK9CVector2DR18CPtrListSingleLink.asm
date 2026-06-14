; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode14GetAllMatchingERK9CVector2DR18CPtrListSingleLink
; Address            : 0x40DF48 - 0x40DFE0
; =========================================================

40DF48:  PUSH            {R4-R7,LR}
40DF4A:  ADD             R7, SP, #0xC
40DF4C:  PUSH.W          {R8,R9,R11}
40DF50:  VPUSH           {D8}
40DF54:  VMOV.F32        S16, #0.5
40DF58:  MOV             R4, R2
40DF5A:  MOV             R8, R1
40DF5C:  MOV             R9, R0
40DF5E:  LDR.W           R5, [R9,#0x10]
40DF62:  CBZ             R5, loc_40DF7A
40DF64:  MOVS            R0, #byte_8; this
40DF66:  LDR             R6, [R5]
40DF68:  BLX             j__ZN18CPtrNodeSingleLinknwEj; CPtrNodeSingleLink::operator new(uint)
40DF6C:  STR             R6, [R0]
40DF6E:  LDR             R1, [R4]
40DF70:  STR             R1, [R0,#4]
40DF72:  STR             R0, [R4]
40DF74:  LDR             R5, [R5,#4]
40DF76:  CMP             R5, #0
40DF78:  BNE             loc_40DF64
40DF7A:  LDR.W           R0, [R9,#0x24]
40DF7E:  CBZ             R0, loc_40DFD6
40DF80:  VLDR            S2, [R9,#4]
40DF84:  MOVS            R0, #2
40DF86:  VLDR            S6, [R9,#0xC]
40DF8A:  MOVS            R1, #3
40DF8C:  VLDR            S0, [R9]
40DF90:  VADD.F32        S2, S6, S2
40DF94:  VLDR            S6, [R8,#4]
40DF98:  VLDR            S4, [R9,#8]
40DF9C:  VADD.F32        S0, S0, S4
40DFA0:  VLDR            S4, [R8]
40DFA4:  VMUL.F32        S2, S2, S16
40DFA8:  VMUL.F32        S0, S0, S16
40DFAC:  VCMPE.F32       S6, S2
40DFB0:  VMRS            APSR_nzcv, FPSCR
40DFB4:  VCMPE.F32       S4, S0
40DFB8:  IT GE
40DFBA:  MOVGE           R0, #0
40DFBC:  IT GE
40DFBE:  MOVGE           R1, #1
40DFC0:  VMRS            APSR_nzcv, FPSCR
40DFC4:  IT LT
40DFC6:  MOVLT           R1, R0
40DFC8:  ADD.W           R0, R9, R1,LSL#2
40DFCC:  LDR.W           R9, [R0,#0x14]
40DFD0:  CMP.W           R9, #0
40DFD4:  BNE             loc_40DF5E
40DFD6:  VPOP            {D8}
40DFDA:  POP.W           {R8,R9,R11}
40DFDE:  POP             {R4-R7,PC}
