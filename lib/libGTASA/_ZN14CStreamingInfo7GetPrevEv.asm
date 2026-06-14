; =========================================================
; Game Engine Function: _ZN14CStreamingInfo7GetPrevEv
; Address            : 0x2CF474 - 0x2CF492
; =========================================================

2CF474:  LDRSH.W         R0, [R0,#2]
2CF478:  ADDS            R1, R0, #1
2CF47A:  ITT EQ
2CF47C:  MOVEQ           R0, #0
2CF47E:  BXEQ            LR
2CF480:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF48A)
2CF482:  ADD.W           R0, R0, R0,LSL#2
2CF486:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF488:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase ...
2CF48A:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase
2CF48C:  ADD.W           R0, R1, R0,LSL#2
2CF490:  BX              LR
