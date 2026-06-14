; =========================================================
; Game Engine Function: _ZN10CStreaming18GetDefaultCopModelEv
; Address            : 0x2D6BA4 - 0x2D6C26
; =========================================================

2D6BA4:  LDR             R0, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x2D6BAC)
2D6BA6:  LDR             R1, =(unk_60F0E4 - 0x2D6BB0)
2D6BA8:  ADD             R0, PC; _ZN9CTheZones11m_CurrLevelE_ptr
2D6BAA:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D6BB4)
2D6BAC:  ADD             R1, PC; unk_60F0E4
2D6BAE:  LDR             R0, [R0]; CTheZones::m_CurrLevel ...
2D6BB0:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6BB2:  LDR             R0, [R0]; CTheZones::m_CurrLevel
2D6BB4:  LDR.W           R0, [R1,R0,LSL#2]
2D6BB8:  LDR             R1, [R2]; CStreaming::ms_aInfoForModel ...
2D6BBA:  ADD.W           R2, R0, R0,LSL#2
2D6BBE:  ADD.W           R1, R1, R2,LSL#2
2D6BC2:  LDRB            R1, [R1,#0x10]
2D6BC4:  CMP             R1, #1
2D6BC6:  IT EQ
2D6BC8:  BXEQ            LR
2D6BCA:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D6BD4)
2D6BCC:  MOVW            R1, #(byte_71395C - 0x712330)
2D6BD0:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6BD2:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D6BD4:  LDRB            R0, [R0,R1]
2D6BD6:  CMP             R0, #1
2D6BD8:  ITT EQ
2D6BDA:  MOVWEQ          R0, #0x11B
2D6BDE:  BXEQ            LR
2D6BE0:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D6BEA)
2D6BE2:  MOVW            R1, #(byte_713920 - 0x712330)
2D6BE6:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6BE8:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D6BEA:  LDRB            R0, [R0,R1]
2D6BEC:  CMP             R0, #1
2D6BEE:  BNE             loc_2D6BF6
2D6BF0:  MOV.W           R0, #0x118
2D6BF4:  BX              LR
2D6BF6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D6C00)
2D6BF8:  MOVW            R1, #(byte_713934 - 0x712330)
2D6BFC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6BFE:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D6C00:  LDRB            R0, [R0,R1]
2D6C02:  CMP             R0, #1
2D6C04:  ITT EQ
2D6C06:  MOVWEQ          R0, #0x119
2D6C0A:  BXEQ            LR
2D6C0C:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D6C16)
2D6C0E:  MOVW            R1, #(byte_713948 - 0x712330)
2D6C12:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6C14:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D6C16:  LDRB            R1, [R0,R1]
2D6C18:  MOV.W           R0, #0xFFFFFFFF
2D6C1C:  CMP             R1, #1
2D6C1E:  IT EQ
2D6C20:  MOVEQ.W         R0, #0x11A
2D6C24:  BX              LR
