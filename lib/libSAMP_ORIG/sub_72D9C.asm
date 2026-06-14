; =========================================================
; Game Engine Function: sub_72D9C
; Address            : 0x72D9C - 0x72DDA
; =========================================================

72D9C:  PUSH            {R4-R7,LR}
72D9E:  ADD             R7, SP, #0xC
72DA0:  PUSH.W          {R11}
72DA4:  LDR             R1, =(aSampOrig - 0x72DB0); "SAMP_ORIG" ...
72DA6:  MOV             R4, R0
72DA8:  LDR             R2, =(aImguiwrapperSh - 0x72DB2); "ImGuiWrapper::shutdown" ...
72DAA:  MOVS            R0, #4; prio
72DAC:  ADD             R1, PC; "SAMP_ORIG"
72DAE:  ADD             R2, PC; "ImGuiWrapper::shutdown"
72DB0:  BLX             __android_log_print
72DB4:  LDR             R0, [R4,#0x20]
72DB6:  CBZ             R0, loc_72DD4
72DB8:  LDR             R0, =(off_114AE4 - 0x72DBE)
72DBA:  ADD             R0, PC; off_114AE4
72DBC:  LDR             R6, [R0]; off_11756C
72DBE:  BL              sub_8C514
72DC2:  MOV             R5, R0
72DC4:  LDR             R0, [R4,#0x20]
72DC6:  LDR             R1, [R6]
72DC8:  BLX             R1
72DCA:  LDR.W           R0, [R5,#0x8C]
72DCE:  MOVS            R1, #0
72DD0:  STR             R1, [R4,#0x20]
72DD2:  STR             R1, [R0,#8]
72DD4:  POP.W           {R11}
72DD8:  POP             {R4-R7,PC}
