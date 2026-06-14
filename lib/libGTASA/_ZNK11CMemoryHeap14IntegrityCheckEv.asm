; =========================================================
; Game Engine Function: _ZNK11CMemoryHeap14IntegrityCheckEv
; Address            : 0x5D26C6 - 0x5D2774
; =========================================================

5D26C6:  LDR             R1, [R0,#0x18]
5D26C8:  ADD.W           R2, R0, #0x20 ; ' '
5D26CC:  CMP             R1, R2
5D26CE:  BEQ             loc_5D26D6
5D26D0:  LDR             R1, [R1,#0x10]
5D26D2:  CMP             R1, R2
5D26D4:  BNE             loc_5D26D0
5D26D6:  LDR.W           R12, [R0,#0x38]
5D26DA:  CMP.W           R12, #0
5D26DE:  BEQ             loc_5D26FE
5D26E0:  MOVS            R2, #0
5D26E2:  RSB.W           R1, R2, R2,LSL#4
5D26E6:  ADD.W           R1, R12, R1,LSL#2
5D26EA:  LDR             R3, [R1,#0x10]
5D26EC:  ADDS            R1, #0x18
5D26EE:  CMP             R3, R1
5D26F0:  BEQ             loc_5D26F8
5D26F2:  LDR             R3, [R3,#0x10]
5D26F4:  CMP             R3, R1
5D26F6:  BNE             loc_5D26F2
5D26F8:  ADDS            R2, #1
5D26FA:  CMP             R2, #0x40 ; '@'
5D26FC:  BNE             loc_5D26E2
5D26FE:  PUSH            {R7,LR}
5D2700:  MOV             R7, SP
5D2702:  SUB             SP, SP, #0x50 ; 'P'
5D2704:  VMOV.I32        Q8, #0
5D2708:  MOV             R12, SP
5D270A:  ADD.W           R1, R12, #0x40 ; '@'
5D270E:  VST1.64         {D16-D17}, [R1]
5D2712:  ADD.W           R1, R12, #0x30 ; '0'
5D2716:  VST1.64         {D16-D17}, [R1]
5D271A:  ADD.W           R1, R12, #0x20 ; ' '
5D271E:  VST1.64         {D16-D17}, [R1]
5D2722:  MOV             R1, R12
5D2724:  VST1.64         {D16-D17}, [R1]!
5D2728:  VST1.64         {D16-D17}, [R1]
5D272C:  LDRD.W          R1, LR, [R0]
5D2730:  CMP             R1, LR
5D2732:  BEQ             loc_5D2760
5D2734:  LDRB            R2, [R1,#4]
5D2736:  LDR             R3, [R1]
5D2738:  CBZ             R2, loc_5D2754
5D273A:  LDRSH.W         R2, [R1,#6]
5D273E:  ADDS            R0, R2, #1
5D2740:  ITTTT NE
5D2742:  ADDNE.W         R0, R3, #0x10
5D2746:  LDRNE.W         R3, [R12,R2,LSL#2]
5D274A:  ADDNE           R0, R3
5D274C:  STRNE.W         R0, [R12,R2,LSL#2]
5D2750:  IT NE
5D2752:  LDRNE           R3, [R1]
5D2754:  ADDS            R0, R1, R3
5D2756:  ADD.W           R1, R0, #0x10
5D275A:  CMP             LR, R1
5D275C:  BNE             loc_5D2734
5D275E:  MOV             R1, LR
5D2760:  ADD             SP, SP, #0x50 ; 'P'
5D2762:  POP.W           {R7,LR}
5D2766:  LDR             R1, [R1,#0xC]
5D2768:  CMP             R1, #0
5D276A:  IT EQ
5D276C:  BXEQ            LR
5D276E:  LDRB            R0, [R1,#4]
5D2770:  CMP             R0, #0
5D2772:  B               loc_5D2766
