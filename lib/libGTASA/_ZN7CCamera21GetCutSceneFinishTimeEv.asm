; =========================================================
; Game Engine Function: _ZN7CCamera21GetCutSceneFinishTimeEv
; Address            : 0x3DB970 - 0x3DB9AC
; =========================================================

3DB970:  LDRB.W          R1, [R0,#0x57]
3DB974:  ADD.W           R2, R1, R1,LSL#5
3DB978:  ADD.W           R2, R0, R2,LSL#4
3DB97C:  LDRH.W          R2, [R2,#0x17E]
3DB980:  CMP             R2, #0x11
3DB982:  BEQ             loc_3DB99E
3DB984:  MOVS            R2, #1
3DB986:  BIC.W           R1, R2, R1
3DB98A:  ORR.W           R2, R1, R1,LSL#5
3DB98E:  ADD.W           R2, R0, R2,LSL#4
3DB992:  LDRH.W          R2, [R2,#0x17E]
3DB996:  CMP             R2, #0x11
3DB998:  ITT NE
3DB99A:  MOVNE           R0, #0
3DB99C:  BXNE            LR
3DB99E:  ADD.W           R1, R1, R1,LSL#5
3DB9A2:  ADD.W           R0, R0, R1,LSL#4
3DB9A6:  LDR.W           R0, [R0,#0x180]
3DB9AA:  BX              LR
