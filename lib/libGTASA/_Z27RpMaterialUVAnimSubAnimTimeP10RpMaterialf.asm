; =========================================================
; Game Engine Function: _Z27RpMaterialUVAnimSubAnimTimeP10RpMaterialf
; Address            : 0x1CAE60 - 0x1CAEDE
; =========================================================

1CAE60:  PUSH            {R4-R7,LR}
1CAE62:  ADD             R7, SP, #0xC
1CAE64:  PUSH.W          {R11}
1CAE68:  MOV             R4, R0
1CAE6A:  LDR             R0, =(RpUVAnimMaterialGlobals_ptr - 0x1CAE72)
1CAE6C:  MOV             R5, R1
1CAE6E:  ADD             R0, PC; RpUVAnimMaterialGlobals_ptr
1CAE70:  LDR             R0, [R0]; RpUVAnimMaterialGlobals
1CAE72:  LDR             R0, [R0]
1CAE74:  ADDS            R6, R4, R0
1CAE76:  LDR             R0, [R6,#8]
1CAE78:  CMP             R0, #0
1CAE7A:  ITT NE
1CAE7C:  MOVNE           R1, R5
1CAE7E:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAE82:  LDR             R0, [R6,#0xC]
1CAE84:  CMP             R0, #0
1CAE86:  ITT NE
1CAE88:  MOVNE           R1, R5
1CAE8A:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAE8E:  LDR             R0, [R6,#0x10]
1CAE90:  CMP             R0, #0
1CAE92:  ITT NE
1CAE94:  MOVNE           R1, R5
1CAE96:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAE9A:  LDR             R0, [R6,#0x14]
1CAE9C:  CMP             R0, #0
1CAE9E:  ITT NE
1CAEA0:  MOVNE           R1, R5
1CAEA2:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAEA6:  LDR             R0, [R6,#0x18]
1CAEA8:  CMP             R0, #0
1CAEAA:  ITT NE
1CAEAC:  MOVNE           R1, R5
1CAEAE:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAEB2:  LDR             R0, [R6,#0x1C]
1CAEB4:  CMP             R0, #0
1CAEB6:  ITT NE
1CAEB8:  MOVNE           R1, R5
1CAEBA:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAEBE:  LDR             R0, [R6,#0x20]
1CAEC0:  CMP             R0, #0
1CAEC2:  ITT NE
1CAEC4:  MOVNE           R1, R5
1CAEC6:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAECA:  LDR             R0, [R6,#0x24]
1CAECC:  CMP             R0, #0
1CAECE:  ITT NE
1CAED0:  MOVNE           R1, R5
1CAED2:  BLXNE           j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1CAED6:  MOV             R0, R4
1CAED8:  POP.W           {R11}
1CAEDC:  POP             {R4-R7,PC}
