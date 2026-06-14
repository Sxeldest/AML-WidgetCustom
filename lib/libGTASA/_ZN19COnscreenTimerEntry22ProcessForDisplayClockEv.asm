; =========================================================
; Game Engine Function: _ZN19COnscreenTimerEntry22ProcessForDisplayClockEv
; Address            : 0x314BA0 - 0x314C14
; =========================================================

314BA0:  PUSH            {R4,R5,R7,LR}
314BA2:  ADD             R7, SP, #8
314BA4:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314BB6)
314BA6:  MOVW            R3, #0xB273
314BAA:  LDR.W           R2, [R0],#0xE
314BAE:  MOVT            R3, #0x45E7
314BB2:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314BB4:  MOVS            R5, #0x64 ; 'd'
314BB6:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
314BB8:  LDR             R1, [R1,R2]
314BBA:  MOV             R2, #0x10624DD3
314BC2:  SMMUL.W         R2, R1, R2
314BC6:  SMMUL.W         R1, R1, R3
314BCA:  ASRS            R3, R2, #6
314BCC:  ADD.W           R12, R3, R2,LSR#31
314BD0:  ASRS            R2, R1, #0xE
314BD2:  ADD.W           R2, R2, R1,LSR#31
314BD6:  MOV             R1, #0x51EB851F
314BDE:  SMMUL.W         R3, R2, R1
314BE2:  MOV             R1, #0x88888889
314BEA:  SMMLA.W         LR, R1, R12, R12
314BEE:  LDR             R1, =(a02d02d_0 - 0x314BF4); "%02d:%02d"
314BF0:  ADD             R1, PC; "%02d:%02d"
314BF2:  ASRS            R4, R3, #5
314BF4:  ADD.W           R3, R4, R3,LSR#31
314BF8:  MOV.W           R4, LR,ASR#5
314BFC:  MLS.W           R2, R3, R5, R2
314C00:  ADD.W           R3, R4, LR,LSR#31
314C04:  RSB.W           R3, R3, R3,LSL#4
314C08:  SUB.W           R3, R12, R3,LSL#2
314C0C:  POP.W           {R4,R5,R7,LR}
314C10:  B.W             sub_5E6BC0
