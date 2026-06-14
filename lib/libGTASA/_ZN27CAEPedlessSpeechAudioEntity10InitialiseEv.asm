; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntity10InitialiseEv
; Address            : 0x39DA9C - 0x39DAFE
; =========================================================

39DA9C:  MOVS            R2, #0
39DA9E:  MOVS            R1, #0
39DAA0:  MOVT            R2, #0xC2C8
39DAA4:  STR.W           R1, [R0,#0x114]
39DAA8:  STR             R1, [R0,#4]
39DAAA:  VMOV.I32        Q8, #0
39DAAE:  STR.W           R1, [R0,#0xA0]
39DAB2:  STR.W           R2, [R0,#0xAC]
39DAB6:  MOVW            R2, #0xFFFF
39DABA:  STRH.W          R2, [R0,#0xB0]
39DABE:  STR.W           R1, [R0,#0x98]
39DAC2:  STRB.W          R1, [R0,#0x9C]
39DAC6:  STRH.W          R1, [R0,#0x96]
39DACA:  MOVS            R1, #4
39DACC:  STRH.W          R1, [R0,#0x92]
39DAD0:  MOVS            R1, #1
39DAD2:  STRB.W          R1, [R0,#0x90]
39DAD6:  ADD.W           R1, R0, #0xF0
39DADA:  VST1.32         {D16-D17}, [R1]
39DADE:  ADD.W           R1, R0, #0xE4
39DAE2:  VST1.32         {D16-D17}, [R1]
39DAE6:  ADD.W           R1, R0, #0xD4
39DAEA:  VST1.32         {D16-D17}, [R1]
39DAEE:  ADD.W           R1, R0, #0xC4
39DAF2:  ADDS            R0, #0xB4
39DAF4:  VST1.32         {D16-D17}, [R1]
39DAF8:  VST1.32         {D16-D17}, [R0]
39DAFC:  BX              LR
