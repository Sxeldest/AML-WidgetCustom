; =========================================================
; Game Engine Function: MixSource
; Address            : 0x1CA528 - 0x1CAED0
; =========================================================

1CA528:  PUSH            {R4-R11,LR}
1CA52C:  ADD             R11, SP, #0x1C
1CA530:  SUB             SP, SP, #4
1CA534:  VPUSH           {D8-D9}
1CA538:  SUB             SP, SP, #0x70
1CA53C:  SUB             SP, SP, #0x4000
1CA540:  STR             R1, [SP,#0x40A0+var_4070]
1CA544:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CA558)
1CA548:  STR             R2, [SP,#0x40A0+var_404C]
1CA54C:  MOVW            R2, #0x12E8
1CA550:  LDR             R1, [PC,R1]; __stack_chk_guard
1CA554:  LDR             R1, [R1]
1CA558:  STR             R1, [R11,#var_38]
1CA55C:  LDR             R1, [R0,#0x5C]
1CA560:  STR             R1, [SP,#0x40A0+var_406C]
1CA564:  LDR             R6, [R0,#0x64]
1CA568:  LDR             R4, [R0,#0x68]
1CA56C:  LDR             R7, [R0,#0x74]
1CA570:  LDR             R10, [R0,#0x6C]
1CA574:  STR             R6, [SP,#0x40A0+var_403C]
1CA578:  CMP             R7, #0
1CA57C:  STR             R4, [SP,#0x40A0+var_4040]
1CA580:  LDR             R1, [R0,#0xD0]
1CA584:  STR             R1, [SP,#0x40A0+var_4044]
1CA588:  LDR             R2, [R0,R2]
1CA58C:  LDR             R1, [R0,#0xD4]
1CA590:  STR             R2, [SP,#0x40A0+var_4054]
1CA594:  LDR             R12, [R0,#0x58]
1CA598:  LDRB            R9, [R0,#0x4D]
1CA59C:  BEQ             loc_1CA5B0
1CA5A0:  MOV             R2, R7
1CA5A4:  LDR             R10, [R10,#4]
1CA5A8:  SUBS            R2, R2, #1
1CA5AC:  BNE             loc_1CA5A4
1CA5B0:  LDR             R5, [SP,#0x40A0+var_4044]
1CA5B4:  LDR             R2, =(ResamplerPadding_ptr - 0x1CA5CC)
1CA5B8:  STR             R0, [SP,#0x40A0+var_4048]
1CA5BC:  MUL             R1, R1, R5
1CA5C0:  VLDR            S16, =0.000030519
1CA5C4:  LDR             R2, [PC,R2]; ResamplerPadding
1CA5C8:  VLDR            S18, =0.007874
1CA5CC:  STR             R1, [SP,#0x40A0+var_4050]
1CA5D0:  LDR             R1, =(ResamplerPrePadding_ptr - 0x1CA5E0)
1CA5D4:  LDR             R2, [R2,R12,LSL#2]
1CA5D8:  LDR             R1, [PC,R1]; ResamplerPrePadding
1CA5DC:  LDR             R3, [R1,R12,LSL#2]
1CA5E0:  STR             R3, [SP,#0x40A0+var_4074]
1CA5E4:  ADD             R2, R2, R3
1CA5E8:  STR             R2, [SP,#0x40A0+var_4058]
1CA5EC:  MOVW            R2, #0x12E4
1CA5F0:  MUL             R1, R3, R5
1CA5F4:  ADD             R0, R0, R2
1CA5F8:  LDR             R2, [SP,#0x40A0+var_4054]
1CA5FC:  MOV             R3, #0
1CA600:  STR             R0, [SP,#0x40A0+var_4078]
1CA604:  MOV             R5, #0
1CA608:  SUB             R0, R2, #1
1CA60C:  SUBS            R0, R0, R2
1CA610:  STR             R0, [SP,#0x40A0+var_407C]
1CA614:  SBC             R0, R3, #0
1CA618:  STR             R0, [SP,#0x40A0+var_4080]
1CA61C:  ADD             R0, SP, #0x40A0+var_4038
1CA620:  ADD             R0, R0, R1,LSL#2
1CA624:  STR             R0, [SP,#0x40A0+var_4084]
1CA628:  B               loc_1CA638
1CA62C:  MOVW            R0, #0x1012
1CA630:  LDR             R4, [SP,#0x40A0+var_4040]
1CA634:  STR             R0, [SP,#0x40A0+var_406C]
1CA638:  LDR             R1, [SP,#0x40A0+var_404C]
1CA63C:  MOVW            R0, #0x3FFF
1CA640:  STR             R4, [SP,#0x40A0+var_4064]
1CA644:  ADD             R0, R4, R0
1CA648:  SUB             R4, R1, R5
1CA64C:  LDR             R3, [SP,#0x40A0+var_4054]
1CA650:  ADD             R1, R4, #1
1CA654:  MOV             R2, #0
1CA658:  STR             R5, [SP,#0x40A0+var_4060]
1CA65C:  UMLAL           R0, R2, R1, R3
1CA660:  LDR             R1, [SP,#0x40A0+var_4058]
1CA664:  MOV             R0, R0,LSR#14
1CA668:  ORR             R0, R0, R2,LSL#18
1CA66C:  MOV             R2, R2,LSR#14
1CA670:  ADDS            R0, R0, R1
1CA674:  LDR             R1, [SP,#0x40A0+var_4044]
1CA678:  ADC             R2, R2, #0
1CA67C:  UMULL           R0, R3, R0, R1
1CA680:  MLA             R3, R2, R1, R3
1CA684:  SUBS            R2, R0, #0x1000
1CA688:  SBCS            R2, R3, #0
1CA68C:  MOV             R2, #0
1CA690:  MOVWCC          R2, #1
1CA694:  CMP             R2, #0
1CA698:  MOVEQ           R0, #0x1000
1CA69C:  BL              sub_220A6C
1CA6A0:  LDR             R1, [SP,#0x40A0+var_4048]
1CA6A4:  MOV             R8, R0
1CA6A8:  MOVW            R2, #0x1028
1CA6AC:  LDR             R0, [R1,#0xCC]
1CA6B0:  STR             R7, [SP,#0x40A0+var_405C]
1CA6B4:  CMP             R0, R2
1CA6B8:  STR             R4, [SP,#0x40A0+var_4068]
1CA6BC:  BNE             loc_1CA740
1CA6C0:  LDR             R0, [R1,#0x6C]
1CA6C4:  TST             R9, #0xFF
1CA6C8:  LDR             R2, [SP,#0x40A0+var_4074]
1CA6CC:  LDR             R4, [R0]
1CA6D0:  LDR             R12, [R4]
1CA6D4:  BEQ             loc_1CA75C
1CA6D8:  LDR             R7, [R4,#0x28]
1CA6DC:  CMP             R6, R7
1CA6E0:  BCS             loc_1CA75C
1CA6E4:  LDR             R3, [R4,#0x24]
1CA6E8:  MOVW            LR, #0x1406
1CA6EC:  STR             R3, [SP,#0x40A0+var_408C]
1CA6F0:  CMP             R6, R3
1CA6F4:  BCS             loc_1CA8BC
1CA6F8:  CMP             R6, R2
1CA6FC:  BCS             loc_1CA98C
1CA700:  SUB             R6, R2, R6
1CA704:  LDR             R0, [SP,#0x40A0+var_4044]
1CA708:  CMP             R8, R6
1CA70C:  MOVLS           R6, R8
1CA710:  MUL             R0, R6, R0
1CA714:  CMP             R0, #0
1CA718:  BEQ             loc_1CA734
1CA71C:  MOV             R1, R0,LSL#2; n
1CA720:  ADD             R0, SP, #0x40A0+var_4038; int
1CA724:  MOV             R5, R12
1CA728:  BL              sub_22178C
1CA72C:  MOV             R12, R5
1CA730:  MOVW            LR, #0x1406
1CA734:  SUB             R8, R8, R6
1CA738:  MOV             R0, #0
1CA73C:  B               loc_1CA994
1CA740:  LDR             R0, [SP,#0x40A0+var_4074]
1CA744:  CMP             R6, R0
1CA748:  BCS             loc_1CA7A8
1CA74C:  SUB             R6, R0, R6
1CA750:  MOV             R0, R10
1CA754:  MOVW            R12, #0x1406
1CA758:  B               loc_1CA8FC
1CA75C:  CMP             R6, R2
1CA760:  MOVW            R3, #0x1406
1CA764:  BCS             loc_1CA7BC
1CA768:  SUB             R5, R2, R6
1CA76C:  LDR             R6, [SP,#0x40A0+var_4044]
1CA770:  CMP             R8, R5
1CA774:  MOVLS           R5, R8
1CA778:  MUL             R0, R5, R6
1CA77C:  CMP             R0, #0
1CA780:  BEQ             loc_1CA79C
1CA784:  MOV             R1, R0,LSL#2; n
1CA788:  ADD             R0, SP, #0x40A0+var_4038; int
1CA78C:  MOV             R7, R12
1CA790:  BL              sub_22178C
1CA794:  MOV             R12, R7
1CA798:  MOVW            R3, #0x1406
1CA79C:  SUB             R8, R8, R5
1CA7A0:  MOV             R0, #0
1CA7A4:  B               loc_1CA7C8
1CA7A8:  SUB             R4, R6, R0
1CA7AC:  MOV             R6, #0
1CA7B0:  MOV             R7, R10
1CA7B4:  MOVW            R12, #0x1406
1CA7B8:  B               loc_1CAB60
1CA7BC:  SUB             R0, R6, R2
1CA7C0:  MOV             R5, #0
1CA7C4:  LDR             R6, [SP,#0x40A0+var_4044]
1CA7C8:  LDR             R1, [SP,#0x40A0+var_4050]
1CA7CC:  LDR             R2, [R4,#0xC]
1CA7D0:  LDR             R7, [R4,#0x14]
1CA7D4:  MUL             R4, R5, R6
1CA7D8:  MLA             R1, R0, R1, R12
1CA7DC:  SUB             R0, R2, R0
1CA7E0:  CMP             R8, R0
1CA7E4:  MOVLS           R0, R8
1CA7E8:  CMP             R7, R3
1CA7EC:  MUL             R2, R0, R6
1CA7F0:  BEQ             loc_1CA838
1CA7F4:  MOVW            R3, #0x1402
1CA7F8:  CMP             R7, R3
1CA7FC:  BEQ             loc_1CA85C
1CA800:  CMP             R7, #0x1400
1CA804:  BNE             loc_1CA888
1CA808:  CMP             R2, #0
1CA80C:  BEQ             loc_1CA888
1CA810:  ADD             R7, SP, #0x40A0+var_4038
1CA814:  ADD             R3, R7, R4,LSL#2
1CA818:  LDRSB           R7, [R1],#1
1CA81C:  SUBS            R2, R2, #1
1CA820:  VMOV            S0, R7
1CA824:  VCVT.F32.S32    S0, S0
1CA828:  VMUL.F32        S0, S0, S18
1CA82C:  VSTM            R3!, {S0}
1CA830:  BNE             loc_1CA818
1CA834:  B               loc_1CA888
1CA838:  CMP             R2, #0
1CA83C:  BEQ             loc_1CA888
1CA840:  ADD             R7, SP, #0x40A0+var_4038
1CA844:  ADD             R3, R7, R4,LSL#2
1CA848:  LDR             R7, [R1],#4
1CA84C:  SUBS            R2, R2, #1
1CA850:  STR             R7, [R3],#4
1CA854:  BNE             loc_1CA848
1CA858:  B               loc_1CA888
1CA85C:  CMP             R2, #0
1CA860:  BEQ             loc_1CA888
1CA864:  ADD             R7, SP, #0x40A0+var_4038
1CA868:  ADD             R3, R7, R4,LSL#2
1CA86C:  LDRSH           R7, [R1],#2
1CA870:  SUBS            R2, R2, #1
1CA874:  VMOV            S0, R7
1CA878:  VCVT.F32.S32    S0, S0
1CA87C:  VMUL.F32        S0, S0, S16
1CA880:  VSTM            R3!, {S0}
1CA884:  BNE             loc_1CA86C
1CA888:  SUB             R1, R8, R0
1CA88C:  MUL             R1, R1, R6
1CA890:  CMP             R1, #0
1CA894:  BEQ             loc_1CA8B0
1CA898:  ADD             R0, R0, R5
1CA89C:  ADD             R2, SP, #0x40A0+var_4038
1CA8A0:  MOV             R1, R1,LSL#2; n
1CA8A4:  MUL             R0, R0, R6
1CA8A8:  ADD             R0, R2, R0,LSL#2; int
1CA8AC:  BL              sub_22178C
1CA8B0:  ADD             R6, R8, R5
1CA8B4:  MOV             R9, #0
1CA8B8:  B               loc_1CACAC
1CA8BC:  SUB             R0, R6, R3
1CA8C0:  CMP             R0, R2
1CA8C4:  BCS             loc_1CA8D8
1CA8C8:  SUB             R1, R7, R3
1CA8CC:  ADD             R0, R0, R1
1CA8D0:  CMP             R0, R2
1CA8D4:  BCC             loc_1CA8CC
1CA8D8:  SUB             R1, R3, R2
1CA8DC:  MOV             R6, #0
1CA8E0:  ADD             R0, R1, R0
1CA8E4:  B               loc_1CA994
1CA8E8:  LDR             R0, [R2,#0xC]
1CA8EC:  CMP             R6, R0
1CA8F0:  BCC             loc_1CAB48
1CA8F4:  SUB             R6, R6, R0
1CA8F8:  MOV             R0, R1
1CA8FC:  MOV             R7, R0
1CA900:  MOV             R4, #0
1CA904:  CMP             R6, #0
1CA908:  BEQ             loc_1CA978
1CA90C:  LDR             R1, [R7,#8]
1CA910:  TST             R9, #0xFF
1CA914:  CMPEQ           R1, #0
1CA918:  BEQ             loc_1CA948
1CA91C:  CMP             R1, #0
1CA920:  BNE             loc_1CA934
1CA924:  MOV             R1, R7
1CA928:  LDR             R7, [R1,#4]
1CA92C:  CMP             R7, #0
1CA930:  BNE             loc_1CA924
1CA934:  LDR             R2, [R1]
1CA938:  MOV             R7, R1
1CA93C:  CMP             R2, #0
1CA940:  BEQ             loc_1CA900
1CA944:  B               loc_1CA8E8
1CA948:  LDR             R0, [SP,#0x40A0+var_4044]
1CA94C:  CMP             R8, R6
1CA950:  MOVLS           R6, R8
1CA954:  MUL             R0, R6, R0
1CA958:  CMP             R0, #0
1CA95C:  BEQ             loc_1CA970
1CA960:  MOV             R1, R0,LSL#2; n
1CA964:  ADD             R0, SP, #0x40A0+var_4038; int
1CA968:  BL              sub_22178C
1CA96C:  MOVW            R12, #0x1406
1CA970:  SUB             R8, R8, R6
1CA974:  B               loc_1CAB60
1CA978:  MOV             R6, #0
1CA97C:  MOV             R7, R0
1CA980:  B               loc_1CAB60
1CA984:  DCFS 0.000030519
1CA988:  DCFS 0.007874
1CA98C:  SUB             R0, R6, R2
1CA990:  MOV             R6, #0
1CA994:  LDR             R1, [SP,#0x40A0+var_4050]
1CA998:  SUB             R2, R7, R0
1CA99C:  LDR             R3, [SP,#0x40A0+var_4044]
1CA9A0:  CMP             R8, R2
1CA9A4:  MOVLS           R2, R8
1CA9A8:  STR             R12, [SP,#0x40A0+var_4088]
1CA9AC:  MLA             R1, R0, R1, R12
1CA9B0:  LDR             R0, [R4,#0x14]
1CA9B4:  MUL             R12, R6, R3
1CA9B8:  CMP             R0, LR
1CA9BC:  MUL             R3, R2, R3
1CA9C0:  BEQ             loc_1CAA08
1CA9C4:  MOVW            R4, #0x1402
1CA9C8:  CMP             R0, R4
1CA9CC:  BEQ             loc_1CAA2C
1CA9D0:  CMP             R0, #0x1400
1CA9D4:  BNE             loc_1CAA58
1CA9D8:  CMP             R3, #0
1CA9DC:  BEQ             loc_1CAA58
1CA9E0:  ADD             R5, SP, #0x40A0+var_4038
1CA9E4:  ADD             R4, R5, R12,LSL#2
1CA9E8:  LDRSB           R5, [R1],#1
1CA9EC:  SUBS            R3, R3, #1
1CA9F0:  VMOV            S0, R5
1CA9F4:  VCVT.F32.S32    S0, S0
1CA9F8:  VMUL.F32        S0, S0, S18
1CA9FC:  VSTM            R4!, {S0}
1CAA00:  BNE             loc_1CA9E8
1CAA04:  B               loc_1CAA58
1CAA08:  CMP             R3, #0
1CAA0C:  BEQ             loc_1CAA58
1CAA10:  ADD             R5, SP, #0x40A0+var_4038
1CAA14:  ADD             R5, R5, R12,LSL#2
1CAA18:  LDR             R4, [R1],#4
1CAA1C:  SUBS            R3, R3, #1
1CAA20:  STR             R4, [R5],#4
1CAA24:  BNE             loc_1CAA18
1CAA28:  B               loc_1CAA58
1CAA2C:  CMP             R3, #0
1CAA30:  BEQ             loc_1CAA58
1CAA34:  ADD             R5, SP, #0x40A0+var_4038
1CAA38:  ADD             R4, R5, R12,LSL#2
1CAA3C:  LDRSH           R5, [R1],#2
1CAA40:  SUBS            R3, R3, #1
1CAA44:  VMOV            S0, R5
1CAA48:  VCVT.F32.S32    S0, S0
1CAA4C:  VMUL.F32        S0, S0, S16
1CAA50:  VSTM            R4!, {S0}
1CAA54:  BNE             loc_1CAA3C
1CAA58:  SUBS            R1, R8, R2
1CAA5C:  ADD             R6, R2, R6
1CAA60:  BEQ             loc_1CACAC
1CAA64:  LDR             R2, [SP,#0x40A0+var_4050]
1CAA68:  LDR             R4, [SP,#0x40A0+var_408C]
1CAA6C:  LDR             R3, [SP,#0x40A0+var_4088]
1CAA70:  LDR             R8, [SP,#0x40A0+var_4048]
1CAA74:  MLA             R12, R4, R2, R3
1CAA78:  SUB             R3, R7, R4
1CAA7C:  LDR             R2, [SP,#0x40A0+var_4044]
1CAA80:  CMP             R1, R3
1CAA84:  MOVLS           R3, R1
1CAA88:  CMP             R0, LR
1CAA8C:  MUL             R4, R6, R2
1CAA90:  MUL             R7, R3, R2
1CAA94:  BEQ             loc_1CAAE0
1CAA98:  MOVW            R2, #0x1402
1CAA9C:  CMP             R0, R2
1CAAA0:  BEQ             loc_1CAB08
1CAAA4:  CMP             R0, #0x1400
1CAAA8:  BNE             loc_1CAB38
1CAAAC:  CMP             R7, #0
1CAAB0:  BEQ             loc_1CAB38
1CAAB4:  ADD             R2, SP, #0x40A0+var_4038
1CAAB8:  ADD             R4, R2, R4,LSL#2
1CAABC:  MOV             R2, R12
1CAAC0:  LDRSB           R5, [R2],#1
1CAAC4:  SUBS            R7, R7, #1
1CAAC8:  VMOV            S0, R5
1CAACC:  VCVT.F32.S32    S0, S0
1CAAD0:  VMUL.F32        S0, S0, S18
1CAAD4:  VSTM            R4!, {S0}
1CAAD8:  BNE             loc_1CAAC0
1CAADC:  B               loc_1CAB38
1CAAE0:  CMP             R7, #0
1CAAE4:  BEQ             loc_1CAB38
1CAAE8:  ADD             R2, SP, #0x40A0+var_4038
1CAAEC:  MOV             R5, R12
1CAAF0:  ADD             R2, R2, R4,LSL#2
1CAAF4:  LDR             R4, [R5],#4
1CAAF8:  SUBS            R7, R7, #1
1CAAFC:  STR             R4, [R2],#4
1CAB00:  BNE             loc_1CAAF4
1CAB04:  B               loc_1CAB38
1CAB08:  CMP             R7, #0
1CAB0C:  BEQ             loc_1CAB38
1CAB10:  ADD             R2, SP, #0x40A0+var_4038
1CAB14:  ADD             R4, R2, R4,LSL#2
1CAB18:  MOV             R2, R12
1CAB1C:  LDRSH           R5, [R2],#2
1CAB20:  SUBS            R7, R7, #1
1CAB24:  VMOV            S0, R5
1CAB28:  VCVT.F32.S32    S0, S0
1CAB2C:  VMUL.F32        S0, S0, S16
1CAB30:  VSTM            R4!, {S0}
1CAB34:  BNE             loc_1CAB1C
1CAB38:  SUBS            R1, R1, R3
1CAB3C:  ADD             R6, R3, R6
1CAB40:  BNE             loc_1CAA7C
1CAB44:  B               loc_1CACB0
1CAB48:  SUB             R4, R0, R6
1CAB4C:  MOV             R6, #0
1CAB50:  MOV             R7, R1
1CAB54:  B               loc_1CAB60
1CAB58:  LDR             R0, [SP,#0x40A0+var_4048]
1CAB5C:  LDR             R7, [R0,#0x6C]
1CAB60:  CMP             R8, #0
1CAB64:  CMPNE           R7, #0
1CAB68:  BEQ             loc_1CACAC
1CAB6C:  LDR             R1, [R7]
1CAB70:  CMP             R1, #0
1CAB74:  BEQ             loc_1CAC5C
1CAB78:  LDR             R0, [R1,#0xC]
1CAB7C:  CMP             R0, R4
1CAB80:  BLS             loc_1CABF8
1CAB84:  LDR             R2, [R1]
1CAB88:  SUB             R0, R0, R4
1CAB8C:  LDR             R5, [R1,#0x14]
1CAB90:  CMP             R8, R0
1CAB94:  LDR             R1, [SP,#0x40A0+var_4050]
1CAB98:  MOVLS           R0, R8
1CAB9C:  CMP             R5, R12
1CABA0:  MLA             R1, R4, R1, R2
1CABA4:  LDR             R2, [SP,#0x40A0+var_4044]
1CABA8:  MUL             R3, R6, R2
1CABAC:  MUL             R2, R0, R2
1CABB0:  BEQ             loc_1CAC00
1CABB4:  MOVW            R4, #0x1402
1CABB8:  CMP             R5, R4
1CABBC:  BEQ             loc_1CAC24
1CABC0:  CMP             R5, #0x1400
1CABC4:  BNE             loc_1CAC50
1CABC8:  CMP             R2, #0
1CABCC:  BEQ             loc_1CAC50
1CABD0:  ADD             R5, SP, #0x40A0+var_4038
1CABD4:  ADD             R3, R5, R3,LSL#2
1CABD8:  LDRSB           R5, [R1],#1
1CABDC:  SUBS            R2, R2, #1
1CABE0:  VMOV            S0, R5
1CABE4:  VCVT.F32.S32    S0, S0
1CABE8:  VMUL.F32        S0, S0, S18
1CABEC:  VSTM            R3!, {S0}
1CABF0:  BNE             loc_1CABD8
1CABF4:  B               loc_1CAC50
1CABF8:  SUB             R4, R4, R0
1CABFC:  B               loc_1CAC5C
1CAC00:  CMP             R2, #0
1CAC04:  BEQ             loc_1CAC50
1CAC08:  ADD             R5, SP, #0x40A0+var_4038
1CAC0C:  ADD             R3, R5, R3,LSL#2
1CAC10:  LDR             R5, [R1],#4
1CAC14:  SUBS            R2, R2, #1
1CAC18:  STR             R5, [R3],#4
1CAC1C:  BNE             loc_1CAC10
1CAC20:  B               loc_1CAC50
1CAC24:  CMP             R2, #0
1CAC28:  BEQ             loc_1CAC50
1CAC2C:  ADD             R5, SP, #0x40A0+var_4038
1CAC30:  ADD             R3, R5, R3,LSL#2
1CAC34:  LDRSH           R5, [R1],#2
1CAC38:  SUBS            R2, R2, #1
1CAC3C:  VMOV            S0, R5
1CAC40:  VCVT.F32.S32    S0, S0
1CAC44:  VMUL.F32        S0, S0, S16
1CAC48:  VSTM            R3!, {S0}
1CAC4C:  BNE             loc_1CAC34
1CAC50:  SUB             R8, R8, R0
1CAC54:  ADD             R6, R0, R6
1CAC58:  MOV             R4, #0
1CAC5C:  LDR             R7, [R7,#4]
1CAC60:  TST             R9, #0xFF
1CAC64:  BEQ             loc_1CAC70
1CAC68:  CMP             R7, #0
1CAC6C:  BEQ             loc_1CAB58
1CAC70:  CMP             R7, #0
1CAC74:  BNE             loc_1CAB60
1CAC78:  LDR             R0, [SP,#0x40A0+var_4044]
1CAC7C:  LDR             R4, [SP,#0x40A0+var_4068]
1CAC80:  MUL             R1, R8, R0
1CAC84:  CMP             R1, #0
1CAC88:  BEQ             loc_1CACA0
1CAC8C:  MUL             R0, R6, R0
1CAC90:  ADD             R2, SP, #0x40A0+var_4038
1CAC94:  MOV             R1, R1,LSL#2; n
1CAC98:  ADD             R0, R2, R0,LSL#2; int
1CAC9C:  BL              sub_22178C
1CACA0:  ADD             R6, R8, R6
1CACA4:  LDR             R8, [SP,#0x40A0+var_4048]
1CACA8:  B               loc_1CACB4
1CACAC:  LDR             R8, [SP,#0x40A0+var_4048]
1CACB0:  LDR             R4, [SP,#0x40A0+var_4068]
1CACB4:  LDR             R0, [SP,#0x40A0+var_4058]
1CACB8:  MOV             R1, #0
1CACBC:  LDR             R2, [SP,#0x40A0+var_407C]
1CACC0:  MOV             R3, #0
1CACC4:  SUBS            R0, R6, R0
1CACC8:  SBC             R1, R1, #0
1CACCC:  MOV             R1, R1,LSL#14
1CACD0:  ORR             R1, R1, R0,LSR#18
1CACD4:  ADDS            R0, R2, R0,LSL#14
1CACD8:  LDR             R2, [SP,#0x40A0+var_4080]
1CACDC:  ADC             R1, R2, R1
1CACE0:  LDR             R2, [SP,#0x40A0+var_4064]
1CACE4:  SUBS            R0, R0, R2
1CACE8:  LDR             R2, [SP,#0x40A0+var_4054]
1CACEC:  SBC             R1, R1, #0
1CACF0:  BL              sub_221404
1CACF4:  MOV             R6, R0
1CACF8:  LDR             R0, [SP,#0x40A0+var_4078]
1CACFC:  CMP             R4, R6
1CAD00:  LDR             R1, [SP,#0x40A0+var_4070]
1CAD04:  LDR             R2, [SP,#0x40A0+var_4084]
1CAD08:  MOVCC           R6, R4
1CAD0C:  LDR             R7, [R0]
1CAD10:  ADD             R0, SP, #0x40A0+var_4040
1CAD14:  STR             R0, [SP,#0x40A0+var_40A0]
1CAD18:  ADD             R3, SP, #0x40A0+var_403C
1CAD1C:  LDR             R4, [SP,#0x40A0+var_4060]
1CAD20:  LDR             R0, [SP,#0x40A0+var_404C]
1CAD24:  STR             R4, [SP,#0x40A0+var_409C]
1CAD28:  STR             R0, [SP,#0x40A0+var_4098]
1CAD2C:  MOV             R0, R8
1CAD30:  STR             R6, [SP,#0x40A0+var_4094]
1CAD34:  BLX             R7
1CAD38:  MOV             R5, R4
1CAD3C:  LDR             R7, [SP,#0x40A0+var_405C]
1CAD40:  ADD             R5, R6, R5
1CAD44:  MOVW            R3, #0x1028
1CAD48:  B               loc_1CAD54
1CAD4C:  SUB             R0, R6, R0
1CAD50:  STR             R0, [SP,#0x40A0+var_403C]
1CAD54:  LDR             R2, [R10]
1CAD58:  CMP             R2, #0
1CAD5C:  BEQ             loc_1CAD84
1CAD60:  LDR             R6, [SP,#0x40A0+var_403C]
1CAD64:  LDR             R1, [R2,#0x28]
1CAD68:  CMP             R1, R6
1CAD6C:  BHI             loc_1CADF0
1CAD70:  LDR             R0, [R2,#0xC]
1CAD74:  LDR             R4, [R2,#0x24]
1CAD78:  TST             R9, #0xFF
1CAD7C:  BNE             loc_1CAD98
1CAD80:  B               loc_1CADA4
1CAD84:  MOV             R0, #0
1CAD88:  MOV             R4, #0
1CAD8C:  MOV             R1, #0
1CAD90:  TST             R9, #0xFF
1CAD94:  BEQ             loc_1CADA4
1CAD98:  LDR             R2, [R8,#0xCC]
1CAD9C:  CMP             R2, R3
1CADA0:  BEQ             loc_1CADD8
1CADA4:  LDR             R6, [SP,#0x40A0+var_403C]
1CADA8:  CMP             R6, R0
1CADAC:  BCC             loc_1CADF0
1CADB0:  LDR             R10, [R10,#4]
1CADB4:  CMP             R10, #0
1CADB8:  BEQ             loc_1CADC4
1CADBC:  ADD             R7, R7, #1
1CADC0:  B               loc_1CAD4C
1CADC4:  TST             R9, #0xFF
1CADC8:  BEQ             loc_1CAE1C
1CADCC:  LDR             R10, [R8,#0x6C]
1CADD0:  MOV             R7, #0
1CADD4:  B               loc_1CAD4C
1CADD8:  LDR             R0, [SP,#0x40A0+var_403C]
1CADDC:  SUB             R1, R1, R4
1CADE0:  SUB             R0, R0, R4
1CADE4:  BL              sub_221798
1CADE8:  ADD             R6, R1, R4
1CADEC:  STR             R6, [SP,#0x40A0+var_403C]
1CADF0:  LDR             R2, [SP,#0x40A0+var_406C]
1CADF4:  MOVW            R0, #0x1012
1CADF8:  CMP             R2, R0
1CADFC:  MOV             R0, #0
1CAE00:  MOVWEQ          R0, #1
1CAE04:  BNE             loc_1CAE14
1CAE08:  LDR             R1, [SP,#0x40A0+var_404C]
1CAE0C:  CMP             R5, R1
1CAE10:  BCC             loc_1CA62C
1CAE14:  MOV             R4, R2
1CAE18:  B               loc_1CAE34
1CAE1C:  LDR             R7, [R8,#0x70]
1CAE20:  MOV             R6, #0
1CAE24:  MOVW            R4, #0x1014
1CAE28:  MOV             R0, #0
1CAE2C:  STR             R6, [SP,#0x40A0+var_403C]
1CAE30:  STR             R6, [SP,#0x40A0+var_4040]
1CAE34:  MOVW            R1, #0x12E0
1CAE38:  MOV             R2, R8
1CAE3C:  LDR             R1, [R2,R1]!
1CAE40:  MOV             R3, #0xFFFFED94
1CAE48:  CMP             R0, #1
1CAE4C:  STR             R7, [R2,R3]
1CAE50:  MOV             R3, #0xFFFFED7C
1CAE58:  STR             R4, [R2,R3]
1CAE5C:  MOV             R3, #0xFFFFED84
1CAE64:  STR             R6, [R2,R3]
1CAE68:  MOV             R7, #0xFFFFED88
1CAE70:  LDR             R3, [SP,#0x40A0+var_4040]
1CAE74:  ADD             R1, R1, R5
1CAE78:  STR             R3, [R2,R7]
1CAE7C:  MOV             R0, #0
1CAE80:  STR             R1, [R2]
1CAE84:  MOV             R1, #0
1CAE88:  BNE             loc_1CAEA0
1CAE8C:  LDR             R0, [R8,#0xDC]
1CAE90:  CMP             R0, R5
1CAE94:  MOVLS           R0, R5
1CAE98:  SUB             R1, R0, R5
1CAE9C:  MOV             R0, #1
1CAEA0:  STRB            R0, [R8,#0xD8]
1CAEA4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CAEB8)
1CAEA8:  STR             R1, [R8,#0xDC]
1CAEAC:  LDR             R1, [R11,#var_38]
1CAEB0:  LDR             R0, [PC,R0]; __stack_chk_guard
1CAEB4:  LDR             R0, [R0]
1CAEB8:  SUBS            R0, R0, R1
1CAEBC:  SUBEQ           SP, R11, #0x30 ; '0'
1CAEC0:  VPOPEQ          {D8-D9}
1CAEC4:  ADDEQ           SP, SP, #4
1CAEC8:  POPEQ           {R4-R11,PC}
1CAECC:  BL              __stack_chk_fail
