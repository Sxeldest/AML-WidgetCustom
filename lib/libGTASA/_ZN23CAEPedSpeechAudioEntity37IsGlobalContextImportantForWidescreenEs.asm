; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity37IsGlobalContextImportantForWidescreenEs
; Address            : 0x39A7D8 - 0x39A7FC
; =========================================================

39A7D8:  MOV             R2, R0
39A7DA:  MOVS            R0, #1
39A7DC:  LDRH.W          R2, [R2,#0x92]
39A7E0:  CMP             R2, #2
39A7E2:  IT NE
39A7E4:  CMPNE           R2, #4
39A7E6:  BEQ             locret_39A7FA
39A7E8:  CMP             R1, #0xD
39A7EA:  MOV.W           R0, #1
39A7EE:  IT NE
39A7F0:  CMPNE           R1, #0xF
39A7F2:  BEQ             locret_39A7FA
39A7F4:  CMP             R1, #0x74 ; 't'
39A7F6:  IT NE
39A7F8:  MOVNE           R0, #0
39A7FA:  BX              LR
