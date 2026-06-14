; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel20SetOriginalFrequencyEj
; Address            : 0x391CCA - 0x391CD6
; =========================================================

391CCA:  LDR             R2, [R0,#0x20]
391CCC:  CMP             R2, R1
391CCE:  IT NE
391CD0:  STRNE           R1, [R0,#0x20]
391CD2:  STR             R1, [R0,#0x24]
391CD4:  BX              LR
