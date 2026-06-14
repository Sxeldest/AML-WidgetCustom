; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity15GetSexFromModelEi
; Address            : 0x39D058 - 0x39D088
; =========================================================

39D058:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x39D05E)
39D05A:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
39D05C:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
39D05E:  LDR.W           R1, [R2,R1,LSL#2]
39D062:  LDRH.W          R2, [R1,#0x54]
39D066:  CMP             R2, #5
39D068:  ITT HI
39D06A:  MOVHI           R0, #0
39D06C:  BXHI            LR
39D06E:  BEQ             loc_39D084
39D070:  LDR             R1, [R1,#0x40]
39D072:  CMP             R1, #0x16
39D074:  IT NE
39D076:  CMPNE           R1, #5
39D078:  BNE             loc_39D07E
39D07A:  MOVS            R1, #1
39D07C:  B               loc_39D080
39D07E:  MOVS            R1, #0
39D080:  STRH.W          R1, [R0,#(dword_94+2)]
39D084:  MOVS            R0, #1
39D086:  BX              LR
