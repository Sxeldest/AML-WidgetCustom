; =========================================================
; Game Engine Function: _ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorP10CPlaceable
; Address            : 0x391FE4 - 0x391FF4
; =========================================================

391FE4:  LDR             R3, [R1,#0x14]
391FE6:  ADD.W           R2, R3, #0x30 ; '0'
391FEA:  CMP             R3, #0
391FEC:  IT EQ
391FEE:  ADDEQ           R2, R1, #4; CVector *
391FF0:  MOV             R1, R2; CVector *
391FF2:  B               _ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
