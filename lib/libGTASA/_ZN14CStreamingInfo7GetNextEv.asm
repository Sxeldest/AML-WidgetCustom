; =========================================================
; Game Engine Function: _ZN14CStreamingInfo7GetNextEv
; Address            : 0x2CF450 - 0x2CF46E
; =========================================================

2CF450:  LDRSH.W         R0, [R0]
2CF454:  ADDS            R1, R0, #1
2CF456:  ITT EQ
2CF458:  MOVEQ           R0, #0
2CF45A:  BXEQ            LR
2CF45C:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF466)
2CF45E:  ADD.W           R0, R0, R0,LSL#2
2CF462:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF464:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase ...
2CF466:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase
2CF468:  ADD.W           R0, R1, R0,LSL#2
2CF46C:  BX              LR
