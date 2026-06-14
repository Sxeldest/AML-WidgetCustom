; =========================================================
; Game Engine Function: _Z38RxPipelineClusterSetCreationAttributesP17RxPipelineClusterj
; Address            : 0x1DE896 - 0x1DE8A0
; =========================================================

1DE896:  CMP             R0, #0
1DE898:  ITE NE
1DE89A:  STRNE           R1, [R0,#4]
1DE89C:  MOVEQ           R0, #0
1DE89E:  BX              LR
