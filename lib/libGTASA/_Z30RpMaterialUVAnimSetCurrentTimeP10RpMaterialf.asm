; =========================================================
; Game Engine Function: _Z30RpMaterialUVAnimSetCurrentTimeP10RpMaterialf
; Address            : 0x1CAD58 - 0x1CADD6
; =========================================================

1CAD58:  PUSH            {R4-R7,LR}
1CAD5A:  ADD             R7, SP, #0xC
1CAD5C:  PUSH.W          {R11}
1CAD60:  MOV             R4, R0
1CAD62:  LDR             R0, =(RpUVAnimMaterialGlobals_ptr - 0x1CAD6A)
1CAD64:  MOV             R5, R1
1CAD66:  ADD             R0, PC; RpUVAnimMaterialGlobals_ptr
1CAD68:  LDR             R0, [R0]; RpUVAnimMaterialGlobals
1CAD6A:  LDR             R0, [R0]
1CAD6C:  ADDS            R6, R4, R0
1CAD6E:  LDR             R0, [R6,#8]
1CAD70:  CMP             R0, #0
1CAD72:  ITT NE
1CAD74:  MOVNE           R1, R5
1CAD76:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CAD7A:  LDR             R0, [R6,#0xC]
1CAD7C:  CMP             R0, #0
1CAD7E:  ITT NE
1CAD80:  MOVNE           R1, R5
1CAD82:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CAD86:  LDR             R0, [R6,#0x10]
1CAD88:  CMP             R0, #0
1CAD8A:  ITT NE
1CAD8C:  MOVNE           R1, R5
1CAD8E:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CAD92:  LDR             R0, [R6,#0x14]
1CAD94:  CMP             R0, #0
1CAD96:  ITT NE
1CAD98:  MOVNE           R1, R5
1CAD9A:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CAD9E:  LDR             R0, [R6,#0x18]
1CADA0:  CMP             R0, #0
1CADA2:  ITT NE
1CADA4:  MOVNE           R1, R5
1CADA6:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CADAA:  LDR             R0, [R6,#0x1C]
1CADAC:  CMP             R0, #0
1CADAE:  ITT NE
1CADB0:  MOVNE           R1, R5
1CADB2:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CADB6:  LDR             R0, [R6,#0x20]
1CADB8:  CMP             R0, #0
1CADBA:  ITT NE
1CADBC:  MOVNE           R1, R5
1CADBE:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CADC2:  LDR             R0, [R6,#0x24]
1CADC4:  CMP             R0, #0
1CADC6:  ITT NE
1CADC8:  MOVNE           R1, R5
1CADCA:  BLXNE           j__Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSetCurrentTime(RtAnimInterpolator *,float)
1CADCE:  MOV             R0, R4
1CADD0:  POP.W           {R11}
1CADD4:  POP             {R4-R7,PC}
