; =========================================================
; Game Engine Function: _ZN10FxSystem_c18GetCompositeMatrixEP11RwMatrixTag
; Address            : 0x36EC48 - 0x36ECB4
; =========================================================

36EC48:  PUSH            {R4-R7,LR}
36EC4A:  ADD             R7, SP, #0xC
36EC4C:  PUSH.W          {R11}
36EC50:  MOV             R6, R0
36EC52:  ADD.W           R5, R6, #0x14
36EC56:  MOV             R4, R1
36EC58:  MOV             R0, R5
36EC5A:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36EC5E:  LDR             R0, [R6,#0xC]
36EC60:  CBZ             R0, loc_36EC72
36EC62:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36EC66:  LDR             R2, [R6,#0xC]
36EC68:  MOV             R0, R4
36EC6A:  MOV             R1, R5
36EC6C:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
36EC70:  B               loc_36ECA6
36EC72:  MOV             R0, R5
36EC74:  ADD.W           R1, R5, #0x20 ; ' '
36EC78:  VLD1.32         {D16-D17}, [R0]!
36EC7C:  VLD1.32         {D20-D21}, [R0]
36EC80:  ADD.W           R0, R5, #0x30 ; '0'
36EC84:  VLD1.32         {D22-D23}, [R0]
36EC88:  ADD.W           R0, R4, #0x30 ; '0'
36EC8C:  VLD1.32         {D18-D19}, [R1]
36EC90:  VST1.32         {D22-D23}, [R0]
36EC94:  ADD.W           R0, R4, #0x20 ; ' '
36EC98:  VST1.32         {D18-D19}, [R0]
36EC9C:  MOV             R0, R4
36EC9E:  VST1.32         {D16-D17}, [R0]!
36ECA2:  VST1.32         {D20-D21}, [R0]
36ECA6:  MOV             R0, R4
36ECA8:  POP.W           {R11}
36ECAC:  POP.W           {R4-R7,LR}
36ECB0:  B.W             sub_191010
