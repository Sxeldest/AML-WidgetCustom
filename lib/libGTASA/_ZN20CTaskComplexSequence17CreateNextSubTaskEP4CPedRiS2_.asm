; =========================================================
; Game Engine Function: _ZN20CTaskComplexSequence17CreateNextSubTaskEP4CPedRiS2_
; Address            : 0x4EE81A - 0x4EE878
; =========================================================

4EE81A:  LDR             R1, [R2]
4EE81C:  ADDS            R1, #1
4EE81E:  STR             R1, [R2]
4EE820:  LDR.W           R12, [R0,#0x30]
4EE824:  CMP.W           R12, #0
4EE828:  BEQ             loc_4EE862
4EE82A:  CMP             R1, #8
4EE82C:  BEQ             loc_4EE83E
4EE82E:  ADD.W           R1, R0, R1,LSL#2
4EE832:  LDR             R1, [R1,#0x10]
4EE834:  CBZ             R1, loc_4EE83E
4EE836:  CMP.W           R12, #1
4EE83A:  BNE             loc_4EE852
4EE83C:  B               loc_4EE858
4EE83E:  MOVS            R1, #0
4EE840:  STR             R1, [R2]
4EE842:  LDR             R1, [R3]
4EE844:  ADDS            R1, #1
4EE846:  STR             R1, [R3]
4EE848:  LDR.W           R12, [R0,#0x30]
4EE84C:  CMP.W           R12, #1
4EE850:  BEQ             loc_4EE858
4EE852:  LDR             R1, [R3]
4EE854:  CMP             R1, R12
4EE856:  BEQ             loc_4EE874
4EE858:  LDR             R1, [R2]
4EE85A:  ADD.W           R0, R0, R1,LSL#2
4EE85E:  LDR             R0, [R0,#0x10]
4EE860:  B               loc_4EE86E
4EE862:  CMP             R1, #8
4EE864:  BEQ             loc_4EE874
4EE866:  ADD.W           R0, R0, R1,LSL#2
4EE86A:  LDR             R0, [R0,#0x10]
4EE86C:  CBZ             R0, loc_4EE874
4EE86E:  LDR             R1, [R0]
4EE870:  LDR             R1, [R1,#8]
4EE872:  BX              R1
4EE874:  MOVS            R0, #0
4EE876:  BX              LR
