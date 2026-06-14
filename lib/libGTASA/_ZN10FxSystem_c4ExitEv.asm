; =========================================================
; Game Engine Function: _ZN10FxSystem_c4ExitEv
; Address            : 0x36E71A - 0x36E75E
; =========================================================

36E71A:  PUSH            {R4,R5,R7,LR}
36E71C:  ADD             R7, SP, #8
36E71E:  MOV             R4, R0
36E720:  LDR             R2, [R4,#8]
36E722:  LDR             R0, [R4,#0x7C]
36E724:  LDRSB.W         R1, [R2,#0x1B]
36E728:  CMP             R1, #1
36E72A:  BLT             loc_36E74A
36E72C:  MOVS            R5, #0
36E72E:  LDR.W           R1, [R0,R5,LSL#2]
36E732:  CBZ             R1, loc_36E740
36E734:  LDR             R0, [R1]
36E736:  LDR             R2, [R0,#4]
36E738:  MOV             R0, R1
36E73A:  BLX             R2
36E73C:  LDR             R2, [R4,#8]
36E73E:  LDR             R0, [R4,#0x7C]; void *
36E740:  LDRSB.W         R1, [R2,#0x1B]
36E744:  ADDS            R5, #1
36E746:  CMP             R5, R1
36E748:  BLT             loc_36E72E
36E74A:  CMP             R0, #0
36E74C:  IT NE
36E74E:  BLXNE           _ZdaPv; operator delete[](void *)
36E752:  ADD.W           R0, R4, #0x80; this
36E756:  POP.W           {R4,R5,R7,LR}
36E75A:  B.W             j_j__ZN18CAEFireAudioEntity9TerminateEv; j_CAEFireAudioEntity::Terminate(void)
