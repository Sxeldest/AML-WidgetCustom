; =========================================================
; Game Engine Function: _ZN8CCarCtrl30SteerAIPlaneTowardsTargetCoorsEP11CAutomobile
; Address            : 0x2F5844 - 0x2F5888
; =========================================================

2F5844:  PUSH            {R4,R6,R7,LR}
2F5846:  ADD             R7, SP, #8
2F5848:  MOV             R4, R0
2F584A:  LDR             R0, [R4,#0x14]
2F584C:  VLDR            S0, [R4,#0x3F0]
2F5850:  ADD.W           R1, R0, #0x30 ; '0'
2F5854:  CMP             R0, #0
2F5856:  VLDR            S2, [R4,#0x3F4]
2F585A:  IT EQ
2F585C:  ADDEQ           R1, R4, #4
2F585E:  VLDR            S4, [R1]
2F5862:  VLDR            S6, [R1,#4]
2F5866:  VSUB.F32        S0, S0, S4
2F586A:  VSUB.F32        S2, S2, S6
2F586E:  VMOV            R0, S0; this
2F5872:  VMOV            R1, S2; float
2F5876:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F587A:  STR.W           R0, [R4,#0x9C8]
2F587E:  MOV             R0, R4; this
2F5880:  POP.W           {R4,R6,R7,LR}
2F5884:  B.W             _ZN8CCarCtrl28FlyAIPlaneInCertainDirectionEP6CPlane; CCarCtrl::FlyAIPlaneInCertainDirection(CPlane *)
