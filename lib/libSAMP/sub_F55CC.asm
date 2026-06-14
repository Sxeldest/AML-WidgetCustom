; =========================================================
; Game Engine Function: sub_F55CC
; Address            : 0xF55CC - 0xF570C
; =========================================================

F55CC:  PUSH            {R4-R7,LR}
F55CE:  ADD             R7, SP, #0xC
F55D0:  PUSH.W          {R8-R11}
F55D4:  SUB             SP, SP, #0x4C
F55D6:  MOV             R4, R0
F55D8:  LDR             R0, =(off_23494C - 0xF55E4)
F55DA:  VMOV.I32        Q8, #0
F55DE:  MOV             R6, R4
F55E0:  ADD             R0, PC; off_23494C
F55E2:  LDR             R1, =(sub_F5784+1 - 0xF55F0)
F55E4:  MOVS            R2, #0
F55E6:  MOV             R8, SP
F55E8:  VST1.32         {D16-D17}, [R6]!
F55EC:  ADD             R1, PC; sub_F5784
F55EE:  MOV             R3, R4
F55F0:  LDR             R0, [R0]; dword_23DF24
F55F2:  STR             R2, [R6]
F55F4:  MOVS            R2, #0
F55F6:  LDR.W           R11, [R0]
F55FA:  MOVS            R0, #0x3C ; '<'
F55FC:  STR             R0, [R4,#0x14]
F55FE:  MOV             R0, R8
F5600:  BL              sub_F57B0
F5604:  ADD.W           R10, SP, #0x68+var_50
F5608:  MOV             R1, R8
F560A:  MOV             R0, R10
F560C:  BL              sub_F5178
F5610:  BL              sub_F5978
F5614:  LDR             R0, =(unk_2400A0 - 0xF561A)
F5616:  ADD             R0, PC; unk_2400A0
F5618:  LDR             R5, [R0,#(dword_2400B0 - 0x2400A0)]
F561A:  CBNZ            R5, loc_F5650
F561C:  ADD.W           R9, SP, #0x68+var_50
F5620:  ADD             R0, SP, #0x68+var_38
F5622:  MOV             R1, R9
F5624:  BL              sub_F5178
F5628:  BL              sub_F5978
F562C:  LDR             R0, =(unk_2400A0 - 0xF5632)
F562E:  ADD             R0, PC; unk_2400A0
F5630:  ADD.W           R9, SP, #0x68+var_38
F5634:  MOV             R1, R9
F5636:  BL              sub_F51A4
F563A:  LDR             R0, [SP,#0x68+var_28]
F563C:  CMP             R9, R0
F563E:  BEQ             loc_F5646
F5640:  CBZ             R0, loc_F5650
F5642:  MOVS            R1, #5
F5644:  B               loc_F5648
F5646:  MOVS            R1, #4
F5648:  LDR             R2, [R0]
F564A:  LDR.W           R1, [R2,R1,LSL#2]
F564E:  BLX             R1
F5650:  LDR             R0, [SP,#0x68+var_40]
F5652:  CMP             R10, R0
F5654:  BEQ             loc_F565C
F5656:  CBZ             R0, loc_F5666
F5658:  MOVS            R1, #5
F565A:  B               loc_F565E
F565C:  MOVS            R1, #4
F565E:  LDR             R2, [R0]
F5660:  LDR.W           R1, [R2,R1,LSL#2]
F5664:  BLX             R1
F5666:  CBNZ            R5, loc_F567C
F5668:  MOVW            R0, #0x7B4
F566C:  LDR             R1, =(sub_F5954+1 - 0xF5678)
F566E:  MOVT            R0, #0x67 ; 'g'
F5672:  ADD             R0, R11
F5674:  ADD             R1, PC; sub_F5954
F5676:  MOV             R2, R6
F5678:  BL              sub_164196
F567C:  LDR             R0, [SP,#0x68+var_58]
F567E:  CMP             R8, R0
F5680:  BEQ             loc_F5688
F5682:  CBZ             R0, loc_F5692
F5684:  MOVS            R1, #5
F5686:  B               loc_F568A
F5688:  MOVS            R1, #4
F568A:  LDR             R2, [R0]
F568C:  LDR.W           R1, [R2,R1,LSL#2]
F5690:  BLX             R1
F5692:  CBZ             R5, loc_F56A8
F5694:  LDR             R1, =(aAxl - 0xF56A0); "AXL" ...
F5696:  MOVS            R0, #6; prio
F5698:  LDR             R2, =(aSCanTHookFpsLi - 0xF56A2); "%s: Can't hook fps limit - callback alr"... ...
F569A:  LDR             R3, =(aFpslimiter - 0xF56A4); "FPSLimiter" ...
F569C:  ADD             R1, PC; "AXL"
F569E:  ADD             R2, PC; "%s: Can't hook fps limit - callback alr"...
F56A0:  ADD             R3, PC; "FPSLimiter"
F56A2:  BLX             __android_log_print
F56A6:  B               loc_F5702
F56A8:  BL              sub_F11C4
F56AC:  CMP             R0, #0x1E
F56AE:  BLT             loc_F5702
F56B0:  LDR             R1, =(aAxl - 0xF56BC); "AXL" ...
F56B2:  MOVS            R0, #3; prio
F56B4:  LDR             R2, =(aSUseNdkCallbac - 0xF56BE); "%s: Use NDK callback to get refresh rat"... ...
F56B6:  LDR             R3, =(aFpslimiter - 0xF56C0); "FPSLimiter" ...
F56B8:  ADD             R1, PC; "AXL"
F56BA:  ADD             R2, PC; "%s: Use NDK callback to get refresh rat"...
F56BC:  ADD             R3, PC; "FPSLimiter"
F56BE:  BLX             __android_log_print
F56C2:  LDR             R0, =(aLibandroidSo_0 - 0xF56CA); "libandroid.so" ...
F56C4:  MOVS            R1, #0; mode
F56C6:  ADD             R0, PC; "libandroid.so"
F56C8:  BLX             dlopen
F56CC:  LDR             R1, =(aAchoreographer - 0xF56D4); "AChoreographer_getInstance" ...
F56CE:  STR             R0, [R4]
F56D0:  ADD             R1, PC; "AChoreographer_getInstance"
F56D2:  BLX             dlsym
F56D6:  LDR             R1, =(aAchoreographer_0 - 0xF56DE); "AChoreographer_registerRefreshRateCallb"... ...
F56D8:  LDR             R2, [R4]
F56DA:  ADD             R1, PC; "AChoreographer_registerRefreshRateCallb"...
F56DC:  STR             R0, [R4,#4]
F56DE:  MOV             R0, R2; handle
F56E0:  BLX             dlsym
F56E4:  LDR             R1, =(aAchoreographer_1 - 0xF56EC); "AChoreographer_unregisterRefreshRateCal"... ...
F56E6:  LDR             R2, [R4]
F56E8:  ADD             R1, PC; "AChoreographer_unregisterRefreshRateCal"...
F56EA:  STR             R0, [R4,#8]
F56EC:  MOV             R0, R2; handle
F56EE:  BLX             dlsym
F56F2:  LDRD.W          R1, R5, [R4,#4]
F56F6:  STR             R0, [R4,#0xC]
F56F8:  BLX             R1
F56FA:  LDR             R1, =(sub_F57EC+1 - 0xF5702)
F56FC:  MOV             R2, R4
F56FE:  ADD             R1, PC; sub_F57EC
F5700:  BLX             R5
F5702:  MOV             R0, R4
F5704:  ADD             SP, SP, #0x4C ; 'L'
F5706:  POP.W           {R8-R11}
F570A:  POP             {R4-R7,PC}
