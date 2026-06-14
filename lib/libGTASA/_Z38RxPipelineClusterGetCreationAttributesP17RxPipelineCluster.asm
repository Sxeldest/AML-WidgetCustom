; =========================================================
; Game Engine Function: _Z38RxPipelineClusterGetCreationAttributesP17RxPipelineCluster
; Address            : 0x1DE88A - 0x1DE896
; =========================================================

1DE88A:  CMP             R0, #0
1DE88C:  ITE NE
1DE88E:  LDRNE           R0, [R0,#4]
1DE890:  MOVEQ.W         R0, #0xFFFFFFFF
1DE894:  BX              LR
