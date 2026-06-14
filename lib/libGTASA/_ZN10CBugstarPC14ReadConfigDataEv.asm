; =========================================================
; Game Engine Function: _ZN10CBugstarPC14ReadConfigDataEv
; Address            : 0x3BED58 - 0x3BEE1A
; =========================================================

3BED58:  PUSH            {R4-R7,LR}
3BED5A:  ADD             R7, SP, #0xC
3BED5C:  PUSH.W          {R8}
3BED60:  MOV             R8, R0
3BED62:  MOVS            R0, #0x64 ; 'd'; unsigned int
3BED64:  BLX             _Znaj; operator new[](uint)
3BED68:  MOV             R5, R0
3BED6A:  ADR             R0, aBugstarCnf; "bugstar.cnf"
3BED6C:  ADR             R1, aR_2; "r"
3BED6E:  BLX             fopen
3BED72:  MOV             R6, R0
3BED74:  CMP             R6, #0
3BED76:  BEQ             loc_3BEE14
3BED78:  MOV             R4, R5
3BED7A:  MOV             R0, R6; stream
3BED7C:  BLX             fgetc
3BED80:  STRB.W          R0, [R4],#1
3BED84:  UXTB            R0, R0
3BED86:  CMP             R0, #0xA
3BED88:  BNE             loc_3BED7A
3BED8A:  MOVS            R0, #0
3BED8C:  MOV             R1, R5
3BED8E:  STRB            R0, [R4]
3BED90:  LDR.W           R0, [R8]
3BED94:  LDR             R2, [R0,#0x14]
3BED96:  MOV             R0, R8
3BED98:  BLX             R2
3BED9A:  MOV             R4, R5
3BED9C:  MOV             R0, R6; stream
3BED9E:  BLX             fgetc
3BEDA2:  STRB.W          R0, [R4],#1
3BEDA6:  UXTB            R0, R0
3BEDA8:  CMP             R0, #0xA
3BEDAA:  BNE             loc_3BED9C
3BEDAC:  MOVS            R0, #0
3BEDAE:  MOV             R1, R5
3BEDB0:  STRB            R0, [R4]
3BEDB2:  LDR.W           R0, [R8]
3BEDB6:  LDR             R2, [R0,#0x14]
3BEDB8:  MOV             R0, R8
3BEDBA:  BLX             R2
3BEDBC:  MOV             R4, R5
3BEDBE:  MOV             R0, R6; stream
3BEDC0:  BLX             fgetc
3BEDC4:  STRB.W          R0, [R4],#1
3BEDC8:  UXTB            R0, R0
3BEDCA:  CMP             R0, #0xA
3BEDCC:  BNE             loc_3BEDBE
3BEDCE:  MOVS            R0, #0
3BEDD0:  MOV             R1, R5
3BEDD2:  STRB            R0, [R4]
3BEDD4:  LDR.W           R0, [R8]
3BEDD8:  LDR             R2, [R0,#0x14]
3BEDDA:  MOV             R0, R8
3BEDDC:  BLX             R2
3BEDDE:  MOV             R4, R5
3BEDE0:  MOV             R0, R6; stream
3BEDE2:  BLX             fgetc
3BEDE6:  STRB.W          R0, [R4],#1
3BEDEA:  UXTB            R0, R0
3BEDEC:  CMP             R0, #0xA
3BEDEE:  BNE             loc_3BEDE0
3BEDF0:  MOVS            R0, #0
3BEDF2:  MOV             R1, R5
3BEDF4:  STRB            R0, [R4]
3BEDF6:  LDR.W           R0, [R8]
3BEDFA:  LDR             R2, [R0,#0x14]
3BEDFC:  MOV             R0, R8
3BEDFE:  BLX             R2
3BEE00:  MOV             R0, R6; stream
3BEE02:  BLX             fclose
3BEE06:  MOV             R0, R5; void *
3BEE08:  POP.W           {R8}
3BEE0C:  POP.W           {R4-R7,LR}
3BEE10:  B.W             sub_18E920
3BEE14:  POP.W           {R8}
3BEE18:  POP             {R4-R7,PC}
