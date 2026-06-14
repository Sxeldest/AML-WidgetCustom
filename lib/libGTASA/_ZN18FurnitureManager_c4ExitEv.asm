; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c4ExitEv
; Address            : 0x4447BE - 0x4448D0
; =========================================================

4447BE:  PUSH            {R4-R7,LR}
4447C0:  ADD             R7, SP, #0xC
4447C2:  PUSH.W          {R11}
4447C6:  MOV             R4, R0
4447C8:  MOVW            R0, #0x206C
4447CC:  ADD             R0, R4; this
4447CE:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4447D2:  LDR             R5, [R4]
4447D4:  CBZ             R5, loc_4447E4
4447D6:  ADD.W           R0, R5, #0xC; this
4447DA:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4447DE:  LDR             R5, [R5,#4]
4447E0:  CMP             R5, #0
4447E2:  BNE             loc_4447D6
4447E4:  MOV             R0, R4; this
4447E6:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4447EA:  MOV             R5, R4
4447EC:  LDR.W           R6, [R5,#0xC]!
4447F0:  CBZ             R6, loc_444800
4447F2:  ADD.W           R0, R6, #0xC; this
4447F6:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4447FA:  LDR             R6, [R6,#4]
4447FC:  CMP             R6, #0
4447FE:  BNE             loc_4447F2
444800:  MOV             R0, R5; this
444802:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444806:  MOV             R5, R4
444808:  LDR.W           R6, [R5,#0x18]!
44480C:  CBZ             R6, loc_44481C
44480E:  ADD.W           R0, R6, #0xC; this
444812:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444816:  LDR             R6, [R6,#4]
444818:  CMP             R6, #0
44481A:  BNE             loc_44480E
44481C:  MOV             R0, R5; this
44481E:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444822:  MOV             R5, R4
444824:  LDR.W           R6, [R5,#0x24]!
444828:  CBZ             R6, loc_444838
44482A:  ADD.W           R0, R6, #0xC; this
44482E:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444832:  LDR             R6, [R6,#4]
444834:  CMP             R6, #0
444836:  BNE             loc_44482A
444838:  MOV             R0, R5; this
44483A:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
44483E:  MOV             R5, R4
444840:  LDR.W           R6, [R5,#0x30]!
444844:  CBZ             R6, loc_444854
444846:  ADD.W           R0, R6, #0xC; this
44484A:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
44484E:  LDR             R6, [R6,#4]
444850:  CMP             R6, #0
444852:  BNE             loc_444846
444854:  MOV             R0, R5; this
444856:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
44485A:  MOV             R5, R4
44485C:  LDR.W           R6, [R5,#0x3C]!
444860:  CBZ             R6, loc_444870
444862:  ADD.W           R0, R6, #0xC; this
444866:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
44486A:  LDR             R6, [R6,#4]
44486C:  CMP             R6, #0
44486E:  BNE             loc_444862
444870:  MOV             R0, R5; this
444872:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444876:  MOV             R5, R4
444878:  LDR.W           R6, [R5,#0x48]!
44487C:  CBZ             R6, loc_44488C
44487E:  ADD.W           R0, R6, #0xC; this
444882:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444886:  LDR             R6, [R6,#4]
444888:  CMP             R6, #0
44488A:  BNE             loc_44487E
44488C:  MOV             R0, R5; this
44488E:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444892:  MOV             R5, R4
444894:  LDR.W           R6, [R5,#0x54]!
444898:  CBZ             R6, loc_4448A8
44489A:  ADD.W           R0, R6, #0xC; this
44489E:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4448A2:  LDR             R6, [R6,#4]
4448A4:  CMP             R6, #0
4448A6:  BNE             loc_44489A
4448A8:  MOV             R0, R5; this
4448AA:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4448AE:  LDR.W           R5, [R4,#0x60]!
4448B2:  CBZ             R5, loc_4448C2
4448B4:  ADD.W           R0, R5, #0xC; this
4448B8:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4448BC:  LDR             R5, [R5,#4]
4448BE:  CMP             R5, #0
4448C0:  BNE             loc_4448B4
4448C2:  MOV             R0, R4; this
4448C4:  POP.W           {R11}
4448C8:  POP.W           {R4-R7,LR}
4448CC:  B.W             sub_19CBF8
