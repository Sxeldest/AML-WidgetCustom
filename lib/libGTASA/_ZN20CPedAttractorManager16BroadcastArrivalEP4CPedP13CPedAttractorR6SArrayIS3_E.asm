; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager16BroadcastArrivalEP4CPedP13CPedAttractorR6SArrayIS3_E
; Address            : 0x4AABFC - 0x4AAC36
; =========================================================

4AABFC:  PUSH            {R4,R6,R7,LR}
4AABFE:  ADD             R7, SP, #8
4AAC00:  CBZ             R2, loc_4AAC32
4AAC02:  LDR.W           R12, [R3,#4]
4AAC06:  CMP.W           R12, #1
4AAC0A:  BLT             loc_4AAC32
4AAC0C:  LDR.W           LR, [R3,#8]
4AAC10:  MOVS            R0, #0
4AAC12:  MOVS            R3, #0
4AAC14:  LDR.W           R4, [LR,R3,LSL#2]
4AAC18:  ADDS            R3, #1
4AAC1A:  CMP             R4, R2
4AAC1C:  IT EQ
4AAC1E:  MOVEQ           R0, R4; this
4AAC20:  CMP             R3, R12
4AAC22:  BGE             loc_4AAC28
4AAC24:  CMP             R4, R2
4AAC26:  BNE             loc_4AAC14
4AAC28:  CBZ             R0, loc_4AAC32
4AAC2A:  BLX             j__ZN13CPedAttractor16BroadcastArrivalEP4CPed; CPedAttractor::BroadcastArrival(CPed *)
4AAC2E:  MOVS            R0, #1
4AAC30:  POP             {R4,R6,R7,PC}
4AAC32:  MOVS            R0, #0
4AAC34:  POP             {R4,R6,R7,PC}
