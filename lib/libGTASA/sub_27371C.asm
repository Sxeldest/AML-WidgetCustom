; =========================================================
; Game Engine Function: sub_27371C
; Address            : 0x27371C - 0x273A28
; =========================================================

27371C:  PUSH            {R4-R7,LR}
27371E:  ADD             R7, SP, #0xC
273720:  PUSH.W          {R8,R9,R11}
273724:  SUB             SP, SP, #0x18
273726:  MOV             R6, R0
273728:  LDR             R0, =(byte_6DFCAC - 0x273732)
27372A:  MOV             R9, R3
27372C:  MOV             R8, R2
27372E:  ADD             R0, PC; byte_6DFCAC
273730:  LDRB            R0, [R0]
273732:  DMB.W           ISH
273736:  TST.W           R0, #1
27373A:  BNE             loc_273762
27373C:  LDR             R0, =(byte_6DFCAC - 0x273742)
27373E:  ADD             R0, PC; byte_6DFCAC ; __guard *
273740:  BLX             j___cxa_guard_acquire
273744:  CBZ             R0, loc_273762
273746:  LDR             R0, [R6]
273748:  LDR             R1, =(aAndroidViewMot - 0x273750); "android/view/MotionEvent"
27374A:  LDR             R2, [R0,#0x18]
27374C:  ADD             R1, PC; "android/view/MotionEvent"
27374E:  MOV             R0, R6
273750:  BLX             R2
273752:  LDR             R2, =(dword_6DFCA8 - 0x27375A)
273754:  LDR             R1, =(byte_6DFCAC - 0x27375C)
273756:  ADD             R2, PC; dword_6DFCA8
273758:  ADD             R1, PC; byte_6DFCAC
27375A:  STR             R0, [R2]
27375C:  MOV             R0, R1; __guard *
27375E:  BLX             j___cxa_guard_release
273762:  LDR             R0, =(byte_6DFCB4 - 0x273768)
273764:  ADD             R0, PC; byte_6DFCB4
273766:  LDRB            R0, [R0]
273768:  DMB.W           ISH
27376C:  TST.W           R0, #1
273770:  BNE             loc_2737A2
273772:  LDR             R0, =(byte_6DFCB4 - 0x273778)
273774:  ADD             R0, PC; byte_6DFCB4 ; __guard *
273776:  BLX             j___cxa_guard_acquire
27377A:  CBZ             R0, loc_2737A2
27377C:  LDR             R0, =(dword_6DFCA8 - 0x273786)
27377E:  ADR             R3, dword_273A4C
273780:  LDR             R1, [R6]
273782:  ADD             R0, PC; dword_6DFCA8
273784:  LDR             R2, =(aActionDown - 0x27378E); "ACTION_DOWN"
273786:  LDR.W           R4, [R1,#0x240]
27378A:  ADD             R2, PC; "ACTION_DOWN"
27378C:  LDR             R1, [R0]
27378E:  MOV             R0, R6
273790:  BLX             R4
273792:  LDR             R2, =(dword_6DFCB0 - 0x27379A)
273794:  LDR             R1, =(byte_6DFCB4 - 0x27379C)
273796:  ADD             R2, PC; dword_6DFCB0
273798:  ADD             R1, PC; byte_6DFCB4
27379A:  STR             R0, [R2]
27379C:  MOV             R0, R1; __guard *
27379E:  BLX             j___cxa_guard_release
2737A2:  LDR             R0, =(byte_6DFCBC - 0x2737A8)
2737A4:  ADD             R0, PC; byte_6DFCBC
2737A6:  LDRB            R0, [R0]
2737A8:  DMB.W           ISH
2737AC:  TST.W           R0, #1
2737B0:  BNE             loc_2737E2
2737B2:  LDR             R0, =(byte_6DFCBC - 0x2737B8)
2737B4:  ADD             R0, PC; byte_6DFCBC ; __guard *
2737B6:  BLX             j___cxa_guard_acquire
2737BA:  CBZ             R0, loc_2737E2
2737BC:  LDR             R0, =(dword_6DFCA8 - 0x2737C6)
2737BE:  ADR             R3, dword_273A4C
2737C0:  LDR             R1, [R6]
2737C2:  ADD             R0, PC; dword_6DFCA8
2737C4:  LDR             R2, =(aActionUp - 0x2737CE); "ACTION_UP"
2737C6:  LDR.W           R4, [R1,#0x240]
2737CA:  ADD             R2, PC; "ACTION_UP"
2737CC:  LDR             R1, [R0]
2737CE:  MOV             R0, R6
2737D0:  BLX             R4
2737D2:  LDR             R2, =(dword_6DFCB8 - 0x2737DA)
2737D4:  LDR             R1, =(byte_6DFCBC - 0x2737DC)
2737D6:  ADD             R2, PC; dword_6DFCB8
2737D8:  ADD             R1, PC; byte_6DFCBC
2737DA:  STR             R0, [R2]
2737DC:  MOV             R0, R1; __guard *
2737DE:  BLX             j___cxa_guard_release
2737E2:  LDR             R0, =(byte_6DFCC4 - 0x2737E8)
2737E4:  ADD             R0, PC; byte_6DFCC4
2737E6:  LDRB            R0, [R0]
2737E8:  DMB.W           ISH
2737EC:  TST.W           R0, #1
2737F0:  BNE             loc_273820
2737F2:  LDR             R0, =(byte_6DFCC4 - 0x2737F8)
2737F4:  ADD             R0, PC; byte_6DFCC4 ; __guard *
2737F6:  BLX             j___cxa_guard_acquire
2737FA:  CBZ             R0, loc_273820
2737FC:  LDR             R0, =(dword_6DFCA8 - 0x273808)
2737FE:  ADR             R2, aActionCancel; "ACTION_CANCEL"
273800:  LDR             R1, [R6]
273802:  ADR             R3, dword_273A4C
273804:  ADD             R0, PC; dword_6DFCA8
273806:  LDR.W           R4, [R1,#0x240]
27380A:  LDR             R1, [R0]
27380C:  MOV             R0, R6
27380E:  BLX             R4
273810:  LDR             R2, =(dword_6DFCC0 - 0x273818)
273812:  LDR             R1, =(byte_6DFCC4 - 0x27381A)
273814:  ADD             R2, PC; dword_6DFCC0
273816:  ADD             R1, PC; byte_6DFCC4
273818:  STR             R0, [R2]
27381A:  MOV             R0, R1; __guard *
27381C:  BLX             j___cxa_guard_release
273820:  LDR             R0, =(byte_6DFCCC - 0x273826)
273822:  ADD             R0, PC; byte_6DFCCC
273824:  LDRB            R0, [R0]
273826:  DMB.W           ISH
27382A:  TST.W           R0, #1
27382E:  BNE             loc_27385E
273830:  LDR             R0, =(byte_6DFCCC - 0x273836)
273832:  ADD             R0, PC; byte_6DFCCC ; __guard *
273834:  BLX             j___cxa_guard_acquire
273838:  CBZ             R0, loc_27385E
27383A:  LDR             R0, =(dword_6DFCA8 - 0x273846)
27383C:  ADR             R2, aActionPointerI; "ACTION_POINTER_ID_MASK"
27383E:  LDR             R1, [R6]
273840:  ADR             R3, dword_273A4C
273842:  ADD             R0, PC; dword_6DFCA8
273844:  LDR.W           R4, [R1,#0x240]
273848:  LDR             R1, [R0]
27384A:  MOV             R0, R6
27384C:  BLX             R4
27384E:  LDR             R2, =(dword_6DFCC8 - 0x273856)
273850:  LDR             R1, =(byte_6DFCCC - 0x273858)
273852:  ADD             R2, PC; dword_6DFCC8
273854:  ADD             R1, PC; byte_6DFCCC
273856:  STR             R0, [R2]
273858:  MOV             R0, R1; __guard *
27385A:  BLX             j___cxa_guard_release
27385E:  LDR             R0, =(byte_6DFCD4 - 0x273864)
273860:  ADD             R0, PC; byte_6DFCD4
273862:  LDRB            R0, [R0]
273864:  DMB.W           ISH
273868:  TST.W           R0, #1
27386C:  BNE             loc_27389E
27386E:  LDR             R0, =(byte_6DFCD4 - 0x273874)
273870:  ADD             R0, PC; byte_6DFCD4 ; __guard *
273872:  BLX             j___cxa_guard_acquire
273876:  CBZ             R0, loc_27389E
273878:  LDR             R0, =(dword_6DFCB0 - 0x273882)
27387A:  LDR             R3, =(dword_6DFCA8 - 0x273884)
27387C:  LDR             R1, [R6]
27387E:  ADD             R0, PC; dword_6DFCB0
273880:  ADD             R3, PC; dword_6DFCA8
273882:  LDR             R2, [R0]
273884:  MOV             R0, R6
273886:  LDR.W           R4, [R1,#0x258]
27388A:  LDR             R1, [R3]
27388C:  BLX             R4
27388E:  LDR             R2, =(dword_6DFCD0 - 0x273896)
273890:  LDR             R1, =(byte_6DFCD4 - 0x273898)
273892:  ADD             R2, PC; dword_6DFCD0
273894:  ADD             R1, PC; byte_6DFCD4
273896:  STR             R0, [R2]
273898:  MOV             R0, R1; __guard *
27389A:  BLX             j___cxa_guard_release
27389E:  LDR             R0, =(byte_6DFCDC - 0x2738A4)
2738A0:  ADD             R0, PC; byte_6DFCDC
2738A2:  LDRB            R0, [R0]
2738A4:  DMB.W           ISH
2738A8:  TST.W           R0, #1
2738AC:  BNE             loc_2738DE
2738AE:  LDR             R0, =(byte_6DFCDC - 0x2738B4)
2738B0:  ADD             R0, PC; byte_6DFCDC ; __guard *
2738B2:  BLX             j___cxa_guard_acquire
2738B6:  CBZ             R0, loc_2738DE
2738B8:  LDR             R0, =(dword_6DFCB8 - 0x2738C2)
2738BA:  LDR             R3, =(dword_6DFCA8 - 0x2738C4)
2738BC:  LDR             R1, [R6]
2738BE:  ADD             R0, PC; dword_6DFCB8
2738C0:  ADD             R3, PC; dword_6DFCA8
2738C2:  LDR             R2, [R0]
2738C4:  MOV             R0, R6
2738C6:  LDR.W           R4, [R1,#0x258]
2738CA:  LDR             R1, [R3]
2738CC:  BLX             R4
2738CE:  LDR             R2, =(dword_6DFCD8 - 0x2738D6)
2738D0:  LDR             R1, =(byte_6DFCDC - 0x2738D8)
2738D2:  ADD             R2, PC; dword_6DFCD8
2738D4:  ADD             R1, PC; byte_6DFCDC
2738D6:  STR             R0, [R2]
2738D8:  MOV             R0, R1; __guard *
2738DA:  BLX             j___cxa_guard_release
2738DE:  LDR             R0, =(byte_6DFCE4 - 0x2738E4)
2738E0:  ADD             R0, PC; byte_6DFCE4
2738E2:  LDRB            R0, [R0]
2738E4:  DMB.W           ISH
2738E8:  TST.W           R0, #1
2738EC:  BNE             loc_27391E
2738EE:  LDR             R0, =(byte_6DFCE4 - 0x2738F4)
2738F0:  ADD             R0, PC; byte_6DFCE4 ; __guard *
2738F2:  BLX             j___cxa_guard_acquire
2738F6:  CBZ             R0, loc_27391E
2738F8:  LDR             R0, =(dword_6DFCC0 - 0x273902)
2738FA:  LDR             R3, =(dword_6DFCA8 - 0x273904)
2738FC:  LDR             R1, [R6]
2738FE:  ADD             R0, PC; dword_6DFCC0
273900:  ADD             R3, PC; dword_6DFCA8
273902:  LDR             R2, [R0]
273904:  MOV             R0, R6
273906:  LDR.W           R4, [R1,#0x258]
27390A:  LDR             R1, [R3]
27390C:  BLX             R4
27390E:  LDR             R2, =(dword_6DFCE0 - 0x273916)
273910:  LDR             R1, =(byte_6DFCE4 - 0x273918)
273912:  ADD             R2, PC; dword_6DFCE0
273914:  ADD             R1, PC; byte_6DFCE4
273916:  STR             R0, [R2]
273918:  MOV             R0, R1; __guard *
27391A:  BLX             j___cxa_guard_release
27391E:  LDR             R0, =(byte_6DFCEC - 0x273924)
273920:  ADD             R0, PC; byte_6DFCEC
273922:  LDRB            R0, [R0]
273924:  DMB.W           ISH
273928:  TST.W           R0, #1
27392C:  BNE             loc_27395E
27392E:  LDR             R0, =(byte_6DFCEC - 0x273934)
273930:  ADD             R0, PC; byte_6DFCEC ; __guard *
273932:  BLX             j___cxa_guard_acquire
273936:  CBZ             R0, loc_27395E
273938:  LDR             R0, =(dword_6DFCC8 - 0x273942)
27393A:  LDR             R3, =(dword_6DFCA8 - 0x273944)
27393C:  LDR             R1, [R6]
27393E:  ADD             R0, PC; dword_6DFCC8
273940:  ADD             R3, PC; dword_6DFCA8
273942:  LDR             R2, [R0]
273944:  MOV             R0, R6
273946:  LDR.W           R4, [R1,#0x258]
27394A:  LDR             R1, [R3]
27394C:  BLX             R4
27394E:  LDR             R2, =(dword_6DFCE8 - 0x273956)
273950:  LDR             R1, =(byte_6DFCEC - 0x273958)
273952:  ADD             R2, PC; dword_6DFCE8
273954:  ADD             R1, PC; byte_6DFCEC
273956:  STR             R0, [R2]
273958:  MOV             R0, R1; __guard *
27395A:  BLX             j___cxa_guard_release
27395E:  LDR             R0, =(dword_6DFCE8 - 0x273970)
273960:  MOVS            R5, #0xA
273962:  LDR             R4, =(dword_6DFCD8 - 0x273976)
273964:  CMP.W           R9, #0
273968:  LDRD.W          R2, R12, [R7,#arg_8]
27396C:  ADD             R0, PC; dword_6DFCE8
27396E:  LDRD.W          R3, R6, [R7,#arg_0]
273972:  ADD             R4, PC; dword_6DFCD8
273974:  STR             R5, [SP,#0x30+var_30]
273976:  MOV             R5, R9
273978:  IT NE
27397A:  MOVNE           R5, #1
27397C:  LDR             R1, [R0]
27397E:  LSLS            R0, R5, #8
273980:  CMP.W           R9, #1
273984:  IT GT
273986:  MOVGT.W         R0, #0x300
27398A:  LDR             R5, [R4]
27398C:  BIC.W           R4, R8, R1
273990:  CMP             R4, R5
273992:  BNE             loc_273998
273994:  MOVS            R5, #1
273996:  B               loc_2739B4
273998:  LDR             R1, =(dword_6DFCD0 - 0x27399E)
27399A:  ADD             R1, PC; dword_6DFCD0
27399C:  LDR             R1, [R1]
27399E:  CMP             R4, R1
2739A0:  BNE             loc_2739A6
2739A2:  MOVS            R5, #2
2739A4:  B               loc_2739B4
2739A6:  LDR             R1, =(dword_6DFCE0 - 0x2739AE)
2739A8:  MOVS            R5, #3
2739AA:  ADD             R1, PC; dword_6DFCE0
2739AC:  LDR             R1, [R1]
2739AE:  CMP             R4, R1
2739B0:  IT EQ
2739B2:  MOVEQ           R5, #4
2739B4:  VMOV            S4, R2
2739B8:  STR             R5, [SP,#0x30+var_2C]
2739BA:  VMOV            S0, R6
2739BE:  MOV             R2, SP
2739C0:  VMOV            S2, R3
2739C4:  CMP.W           R8, #0x106
2739C8:  VMOV            S6, R12
2739CC:  ORR.W           R1, R5, R0
2739D0:  VCVT.F32.S32    S0, S0
2739D4:  VCVT.F32.S32    S2, S2
2739D8:  VCVT.F32.S32    S4, S4
2739DC:  VCVT.F32.S32    S6, S6
2739E0:  STR             R1, [SP,#0x30+var_2C]
2739E2:  VSTR            S0, [SP,#0x30+var_24]
2739E6:  VSTR            S2, [SP,#0x30+var_28]
2739EA:  VSTR            S4, [SP,#0x30+var_20]
2739EE:  VSTR            S6, [SP,#0x30+var_1C]
2739F2:  BEQ             loc_273A06
2739F4:  CMP.W           R8, #6
2739F8:  BNE             loc_273A18
2739FA:  ADD.W           R1, R2, #0xC
2739FE:  ADDS            R2, #8
273A00:  ORR.W           R0, R0, #1
273A04:  B               loc_273A10
273A06:  ADD.W           R1, R2, #0x14
273A0A:  ADDS            R2, #0x10
273A0C:  ORR.W           R0, R5, #0x100
273A10:  STR             R0, [SP,#0x30+var_2C]
273A12:  MOVS            R0, #0
273A14:  STR             R0, [R2]
273A16:  STR             R0, [R1]
273A18:  MOV             R0, SP
273A1A:  BL              sub_27C4F0
273A1E:  MOVS            R0, #1
273A20:  ADD             SP, SP, #0x18
273A22:  POP.W           {R8,R9,R11}
273A26:  POP             {R4-R7,PC}
