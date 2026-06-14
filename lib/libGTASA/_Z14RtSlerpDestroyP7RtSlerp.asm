; =========================================================
; Game Engine Function: _Z14RtSlerpDestroyP7RtSlerp
; Address            : 0x2117E4 - 0x211818
; =========================================================

2117E4:  PUSH            {R4,R6,R7,LR}
2117E6:  ADD             R7, SP, #8
2117E8:  MOV             R4, R0
2117EA:  LDR             R0, [R4]
2117EC:  TST.W           R0, #1
2117F0:  BNE             loc_2117FA
2117F2:  LDR             R0, [R4,#4]
2117F4:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
2117F8:  LDR             R0, [R4]
2117FA:  LSLS            R0, R0, #0x1E
2117FC:  ITT PL
2117FE:  LDRPL           R0, [R4,#8]
211800:  BLXPL           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
211804:  LDR             R0, =(RwEngineInstance_ptr - 0x21180A)
211806:  ADD             R0, PC; RwEngineInstance_ptr
211808:  LDR             R0, [R0]; RwEngineInstance
21180A:  LDR             R0, [R0]
21180C:  LDR.W           R1, [R0,#0x130]
211810:  MOV             R0, R4
211812:  POP.W           {R4,R6,R7,LR}
211816:  BX              R1
