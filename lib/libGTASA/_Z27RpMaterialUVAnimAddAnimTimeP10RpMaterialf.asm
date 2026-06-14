; =========================================================
; Game Engine Function: _Z27RpMaterialUVAnimAddAnimTimeP10RpMaterialf
; Address            : 0x1CADDC - 0x1CAE5A
; =========================================================

1CADDC:  PUSH            {R4-R7,LR}
1CADDE:  ADD             R7, SP, #0xC
1CADE0:  PUSH.W          {R11}
1CADE4:  MOV             R4, R0
1CADE6:  LDR             R0, =(RpUVAnimMaterialGlobals_ptr - 0x1CADEE)
1CADE8:  MOV             R5, R1
1CADEA:  ADD             R0, PC; RpUVAnimMaterialGlobals_ptr
1CADEC:  LDR             R0, [R0]; RpUVAnimMaterialGlobals
1CADEE:  LDR             R0, [R0]
1CADF0:  ADDS            R6, R4, R0
1CADF2:  LDR             R0, [R6,#8]
1CADF4:  CMP             R0, #0
1CADF6:  ITT NE
1CADF8:  MOVNE           R1, R5
1CADFA:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CADFE:  LDR             R0, [R6,#0xC]
1CAE00:  CMP             R0, #0
1CAE02:  ITT NE
1CAE04:  MOVNE           R1, R5
1CAE06:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE0A:  LDR             R0, [R6,#0x10]
1CAE0C:  CMP             R0, #0
1CAE0E:  ITT NE
1CAE10:  MOVNE           R1, R5
1CAE12:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE16:  LDR             R0, [R6,#0x14]
1CAE18:  CMP             R0, #0
1CAE1A:  ITT NE
1CAE1C:  MOVNE           R1, R5
1CAE1E:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE22:  LDR             R0, [R6,#0x18]
1CAE24:  CMP             R0, #0
1CAE26:  ITT NE
1CAE28:  MOVNE           R1, R5
1CAE2A:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE2E:  LDR             R0, [R6,#0x1C]
1CAE30:  CMP             R0, #0
1CAE32:  ITT NE
1CAE34:  MOVNE           R1, R5
1CAE36:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE3A:  LDR             R0, [R6,#0x20]
1CAE3C:  CMP             R0, #0
1CAE3E:  ITT NE
1CAE40:  MOVNE           R1, R5
1CAE42:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE46:  LDR             R0, [R6,#0x24]
1CAE48:  CMP             R0, #0
1CAE4A:  ITT NE
1CAE4C:  MOVNE           R1, R5
1CAE4E:  BLXNE           j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1CAE52:  MOV             R0, R4
1CAE54:  POP.W           {R11}
1CAE58:  POP             {R4-R7,PC}
