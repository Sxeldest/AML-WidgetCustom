; =========================================================
; Game Engine Function: _ZN9CPedGroup27FindDistanceToNearestMemberEPP4CPed
; Address            : 0x4B7190 - 0x4B720C
; =========================================================

4B7190:  PUSH            {R4,R5,R7,LR}
4B7192:  ADD             R7, SP, #8
4B7194:  LDR.W           LR, [R0,#0x28]
4B7198:  VLDR            S0, =1.0e10
4B719C:  CMP.W           LR, #0
4B71A0:  BEQ             loc_4B7206
4B71A2:  ADD.W           R12, R0, #0xC
4B71A6:  MOVS            R3, #0
4B71A8:  LDR.W           R0, [R12,R3,LSL#2]
4B71AC:  CBZ             R0, loc_4B7200
4B71AE:  LDR.W           R2, [LR,#0x14]
4B71B2:  LDR             R4, [R0,#0x14]
4B71B4:  ADD.W           R5, R2, #0x30 ; '0'
4B71B8:  CMP             R2, #0
4B71BA:  IT EQ
4B71BC:  ADDEQ.W         R5, LR, #4
4B71C0:  ADD.W           R2, R4, #0x30 ; '0'
4B71C4:  CMP             R4, #0
4B71C6:  VLDR            S2, [R5]
4B71CA:  IT EQ
4B71CC:  ADDEQ           R2, R0, #4
4B71CE:  VLDR            D16, [R5,#4]
4B71D2:  VLDR            S4, [R2]
4B71D6:  CMP             R1, #0
4B71D8:  VLDR            D17, [R2,#4]
4B71DC:  IT NE
4B71DE:  STRNE           R0, [R1]
4B71E0:  VSUB.F32        S2, S4, S2
4B71E4:  VSUB.F32        D16, D17, D16
4B71E8:  VMUL.F32        D2, D16, D16
4B71EC:  VMUL.F32        S2, S2, S2
4B71F0:  VADD.F32        S2, S2, S4
4B71F4:  VADD.F32        S2, S2, S5
4B71F8:  VSQRT.F32       S2, S2
4B71FC:  VMIN.F32        D0, D0, D1
4B7200:  ADDS            R3, #1
4B7202:  CMP             R3, #7
4B7204:  BNE             loc_4B71A8
4B7206:  VMOV            R0, S0
4B720A:  POP             {R4,R5,R7,PC}
