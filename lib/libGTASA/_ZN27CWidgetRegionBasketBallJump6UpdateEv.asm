; =========================================================
; Game Engine Function: _ZN27CWidgetRegionBasketBallJump6UpdateEv
; Address            : 0x2BFEDC - 0x2BFEF8
; =========================================================

2BFEDC:  PUSH            {R4,R6,R7,LR}
2BFEDE:  ADD             R7, SP, #8
2BFEE0:  MOV             R4, R0
2BFEE2:  BLX             j__ZN13CWidgetRegion6UpdateEv; CWidgetRegion::Update(void)
2BFEE6:  LDR             R0, [R4,#0x78]; this
2BFEE8:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
2BFEEC:  CMP             R0, #0
2BFEEE:  ITT EQ
2BFEF0:  MOVEQ           R0, #0
2BFEF2:  STRBEQ.W        R0, [R4,#0x90]
2BFEF6:  POP             {R4,R6,R7,PC}
