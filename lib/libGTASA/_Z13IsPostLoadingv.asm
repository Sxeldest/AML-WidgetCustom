; =========================================================
; Game Engine Function: _Z13IsPostLoadingv
; Address            : 0x3BCB4C - 0x3BCBA8
; =========================================================

3BCB4C:  PUSH            {R4,R6,R7,LR}
3BCB4E:  ADD             R7, SP, #8
3BCB50:  LDR             R0, =(isPostLoading_ptr - 0x3BCB56)
3BCB52:  ADD             R0, PC; isPostLoading_ptr
3BCB54:  LDR             R0, [R0]; isPostLoading
3BCB56:  LDRB            R0, [R0]
3BCB58:  CBZ             R0, loc_3BCB76
3BCB5A:  LDR             R0, =(PostLoadingTimer_ptr - 0x3BCB60)
3BCB5C:  ADD             R0, PC; PostLoadingTimer_ptr
3BCB5E:  LDR             R4, [R0]; PostLoadingTimer
3BCB60:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
3BCB64:  LDR             R1, [R4]
3BCB66:  CMP             R0, R1
3BCB68:  BLS             loc_3BCB7A
3BCB6A:  LDR             R0, =(isPostLoading_ptr - 0x3BCB70)
3BCB6C:  ADD             R0, PC; isPostLoading_ptr
3BCB6E:  LDR             R1, [R0]; isPostLoading
3BCB70:  MOVS            R0, #0
3BCB72:  STRB            R0, [R1]
3BCB74:  B               loc_3BCB82
3BCB76:  MOVS            R0, #0
3BCB78:  B               loc_3BCB82
3BCB7A:  LDR             R0, =(isPostLoading_ptr - 0x3BCB80)
3BCB7C:  ADD             R0, PC; isPostLoading_ptr
3BCB7E:  LDR             R0, [R0]; isPostLoading
3BCB80:  LDRB            R0, [R0]
3BCB82:  LDR             R1, =(TheCamera_ptr - 0x3BCB88)
3BCB84:  ADD             R1, PC; TheCamera_ptr
3BCB86:  LDR             R1, [R1]; TheCamera
3BCB88:  LDRB.W          R1, [R1,#(byte_951FE3 - 0x951FA8)]
3BCB8C:  ORRS            R0, R1
3BCB8E:  LSLS            R0, R0, #0x18
3BCB90:  ITT NE
3BCB92:  MOVNE           R0, #1
3BCB94:  POPNE           {R4,R6,R7,PC}
3BCB96:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BCB9C)
3BCB98:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BCB9A:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BCB9C:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BCBA0:  CMP             R0, #0
3BCBA2:  IT NE
3BCBA4:  MOVNE           R0, #1
3BCBA6:  POP             {R4,R6,R7,PC}
