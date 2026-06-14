; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes16AddEventResponseEiiiPfPi
; Address            : 0x4BE3D0 - 0x4BE3F8
; =========================================================

4BE3D0:  MOVW            R12, #0x99C
4BE3D4:  MLA.W           R1, R1, R12, R0
4BE3D8:  ADD.W           R0, R0, R2,LSL#2
4BE3DC:  MOVW            R2, #0xC034
4BE3E0:  LDR             R0, [R0,R2]
4BE3E2:  LDRD.W          R2, R12, [SP,#arg_0]; float *
4BE3E6:  RSB.W           R0, R0, R0,LSL#4
4BE3EA:  ADD.W           R0, R1, R0,LSL#2
4BE3EE:  MOV             R1, R3; int
4BE3F0:  ADDS            R0, #4; this
4BE3F2:  MOV             R3, R12; int *
4BE3F4:  B.W             _ZN9CDecision3AddEiPfPi; CDecision::Add(int,float *,int *)
