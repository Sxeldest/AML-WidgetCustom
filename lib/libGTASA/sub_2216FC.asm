; =========================================================
; Game Engine Function: sub_2216FC
; Address            : 0x2216FC - 0x221726
; =========================================================

2216FC:  PUSH            {R4,R5,R7,LR}
2216FE:  ADD             R7, SP, #8
221700:  SUB             SP, SP, #8
221702:  LDR             R5, [R0,#0x18]
221704:  LDRH            R4, [R5,#0xC]
221706:  CBZ             R4, loc_221720
221708:  ADD.W           R12, R1, #0x1C
22170C:  LDR             R4, [R7,#arg_0]
22170E:  MOV             R1, R2
221710:  STR             R4, [SP,#0x10+var_10]
221712:  MOV             R2, R12
221714:  BLX             j__Z19_rxOpenGLReinstancePvPK12RpMeshHeaderP24RxOpenGLMeshInstanceDataiPFiS_S4_iiE; _rxOpenGLReinstance(void *,RpMeshHeader const*,RxOpenGLMeshInstanceData *,int,int (*)(void *,RxOpenGLMeshInstanceData *,int,int))
221718:  MOV             R1, R0
22171A:  MOVS            R0, #0
22171C:  CBZ             R1, loc_221722
22171E:  STRH            R0, [R5,#0xC]
221720:  MOVS            R0, #1
221722:  ADD             SP, SP, #8
221724:  POP             {R4,R5,R7,PC}
