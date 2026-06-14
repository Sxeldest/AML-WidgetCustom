; =========================================================
; Game Engine Function: _ZN20CScriptedEffectPairs7AddPairERK19CScriptedEffectPair
; Address            : 0x59C84C - 0x59C880
; =========================================================

59C84C:  LDR             R2, [R0]
59C84E:  CMP             R2, #3
59C850:  IT GT
59C852:  BXGT            LR
59C854:  ADD.W           R2, R2, R2,LSL#3
59C858:  MOV             R3, R1
59C85A:  VLD1.32         {D16-D17}, [R3]!
59C85E:  ADD.W           R2, R0, R2,LSL#2
59C862:  LDRB.W          R1, [R1,#0x20]
59C866:  VLD1.32         {D18-D19}, [R3]
59C86A:  STRB.W          R1, [R2,#0x24]
59C86E:  ADDS            R1, R2, #4
59C870:  VST1.32         {D16-D17}, [R1]!
59C874:  VST1.32         {D18-D19}, [R1]
59C878:  LDR             R1, [R0]
59C87A:  ADDS            R1, #1
59C87C:  STR             R1, [R0]
59C87E:  BX              LR
