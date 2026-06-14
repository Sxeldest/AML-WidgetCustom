; =========================================================
; Game Engine Function: _ZN20CAEStreamTransformer15TransformBufferEPvmm
; Address            : 0x3AA750 - 0x3AA778
; =========================================================

3AA750:  PUSH            {R7,LR}
3AA752:  MOV             R7, SP
3AA754:  CMP             R2, #0
3AA756:  IT EQ
3AA758:  POPEQ           {R7,PC}
3AA75A:  AND.W           LR, R3, #0xF
3AA75E:  LDRB.W          R12, [R1]
3AA762:  SUBS            R2, #1
3AA764:  ADD.W           R3, R3, #1
3AA768:  LDRB.W          LR, [R0,LR]
3AA76C:  EOR.W           R12, R12, LR
3AA770:  STRB.W          R12, [R1],#1
3AA774:  BNE             loc_3AA75A
3AA776:  POP             {R7,PC}
