; =========================================================
; Game Engine Function: _ZN10CStreaming15ClearFlagForAllEj
; Address            : 0x2D5044 - 0x2D5064
; =========================================================

2D5044:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5052)
2D5046:  EOR.W           R0, R0, #0xFF
2D504A:  MOVW            R2, #0x66CC
2D504E:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5050:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D5052:  ADDS            R1, #6
2D5054:  LDRB            R3, [R1]
2D5056:  SUBS            R2, #1
2D5058:  AND.W           R3, R3, R0
2D505C:  STRB.W          R3, [R1],#0x14
2D5060:  BNE             loc_2D5054
2D5062:  BX              LR
