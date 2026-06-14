; =========================================================
; Game Engine Function: _ZN14COnscreenTimer4InitEv
; Address            : 0x314D3C - 0x314DAE
; =========================================================

314D3C:  MOVS            R1, #0
314D3E:  VMOV.I32        Q8, #0
314D42:  MOVS            R2, #1
314D44:  STRB.W          R1, [R0,#0x7E]
314D48:  STRB.W          R1, [R0,#0x151]
314D4C:  STR             R1, [R0,#0x50]
314D4E:  STRB.W          R2, [R0,#0x7F]
314D52:  STR.W           R1, [R0,#0x94]
314D56:  STRB.W          R1, [R0,#0xC2]
314D5A:  STRB.W          R2, [R0,#0xC3]
314D5E:  STRB.W          R1, [R0,#0x106]
314D62:  STR.W           R1, [R0,#0xD8]
314D66:  STRB.W          R2, [R0,#0x107]
314D6A:  STRB.W          R1, [R0,#0x14A]
314D6E:  STRB.W          R2, [R0,#0x14B]
314D72:  ADD.W           R2, R0, #0x40 ; '@'
314D76:  STR.W           R1, [R0,#0x11C]
314D7A:  VST1.32         {D16-D17}, [R2]
314D7E:  ADD.W           R2, R0, #0x84
314D82:  VST1.32         {D16-D17}, [R2]
314D86:  ADD.W           R2, R0, #0xC8
314D8A:  VST1.32         {D16-D17}, [R2]
314D8E:  ADD.W           R2, R0, #0x10C
314D92:  VST1.32         {D16-D17}, [R2]
314D96:  MOV.W           R2, #0x100
314D9A:  STRD.W          R1, R1, [R0]
314D9E:  STRH            R2, [R0,#0x38]
314DA0:  STR.W           R1, [R0,#0xA]
314DA4:  STR.W           R1, [R0,#6]
314DA8:  MOVS            R1, #0xC
314DAA:  STR             R1, [R0,#0x3C]
314DAC:  BX              LR
