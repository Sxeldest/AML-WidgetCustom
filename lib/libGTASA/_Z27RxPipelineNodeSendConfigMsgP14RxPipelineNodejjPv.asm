; =========================================================
; Game Engine Function: _Z27RxPipelineNodeSendConfigMsgP14RxPipelineNodejjPv
; Address            : 0x1DE7D6 - 0x1DE7F4
; =========================================================

1DE7D6:  CMP             R0, #0
1DE7D8:  ITT EQ
1DE7DA:  MOVEQ.W         R0, #0xFFFFFFFF
1DE7DE:  BXEQ            LR
1DE7E0:  LDR.W           R12, [R0]
1DE7E4:  LDR.W           R12, [R12,#0x1C]
1DE7E8:  CMP.W           R12, #0
1DE7EC:  ITT EQ
1DE7EE:  MOVEQ           R0, #0
1DE7F0:  BXEQ            LR
1DE7F2:  BX              R12
