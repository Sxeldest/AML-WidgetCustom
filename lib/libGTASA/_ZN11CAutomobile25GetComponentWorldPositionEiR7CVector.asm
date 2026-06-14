; =========================================================
; Game Engine Function: _ZN11CAutomobile25GetComponentWorldPositionEiR7CVector
; Address            : 0x55074C - 0x550772
; =========================================================

55074C:  PUSH            {R4,R6,R7,LR}
55074E:  ADD             R7, SP, #8
550750:  ADD.W           R0, R0, R1,LSL#2
550754:  MOV             R4, R2
550756:  LDR.W           R0, [R0,#0x65C]
55075A:  CMP             R0, #0
55075C:  IT EQ
55075E:  POPEQ           {R4,R6,R7,PC}
550760:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
550764:  VLDR            D16, [R0,#0x30]
550768:  LDR             R0, [R0,#0x38]
55076A:  STR             R0, [R4,#8]
55076C:  VSTR            D16, [R4]
550770:  POP             {R4,R6,R7,PC}
