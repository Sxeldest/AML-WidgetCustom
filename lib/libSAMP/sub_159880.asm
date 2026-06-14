; =========================================================
; Game Engine Function: sub_159880
; Address            : 0x159880 - 0x159938
; =========================================================

159880:  PUSH            {R4-R7,LR}
159882:  ADD             R7, SP, #0xC
159884:  PUSH.W          {R11}
159888:  MOV             R4, R0
15988A:  CMP             R1, #1
15988C:  BNE             loc_159892
15988E:  MOVS            R5, #2
159890:  B               loc_1598A2
159892:  SUBS            R0, R1, #1
159894:  MOV             R5, R1
159896:  TST             R1, R0
159898:  BEQ             loc_1598A2
15989A:  MOV             R0, R5; this
15989C:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
1598A0:  MOV             R5, R0
1598A2:  LDR             R6, [R4,#4]
1598A4:  CMP             R5, R6
1598A6:  BHI             loc_159922
1598A8:  BCS             loc_159932
1598AA:  VLDR            S0, [R4,#0xC]
1598AE:  VLDR            S2, [R4,#0x10]
1598B2:  VCVT.F32.U32    S0, S0
1598B6:  VDIV.F32        S0, S0, S2
1598BA:  VMOV            R0, S0; x
1598BE:  BLX             ceilf
1598C2:  VMOV            S0, R0
1598C6:  CMP             R6, #3
1598C8:  VCVT.U32.F32    S0, S0
1598CC:  VMOV            R0, S0; this
1598D0:  BCC             loc_159914
1598D2:  MOV.W           R1, #0x55555555
1598D6:  MOV.W           R2, #0x33333333
1598DA:  AND.W           R1, R1, R6,LSR#1
1598DE:  SUBS            R1, R6, R1
1598E0:  AND.W           R2, R2, R1,LSR#2
1598E4:  BIC.W           R1, R1, #0xCCCCCCCC
1598E8:  ADD             R1, R2
1598EA:  MOV.W           R2, #0x1010101
1598EE:  ADD.W           R1, R1, R1,LSR#4
1598F2:  BIC.W           R1, R1, #0xF0F0F0F0
1598F6:  MULS            R1, R2
1598F8:  LSRS            R1, R1, #0x18
1598FA:  CMP             R1, #1
1598FC:  BHI             loc_159914
1598FE:  SUBS            R1, R0, #1
159900:  MOVS            R2, #1
159902:  CLZ.W           R1, R1
159906:  CMP             R0, #2
159908:  RSB.W           R1, R1, #0x20 ; ' '
15990C:  IT CS
15990E:  LSLCS.W         R0, R2, R1
159912:  B               loc_159918
159914:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
159918:  CMP             R5, R0
15991A:  IT CC
15991C:  MOVCC           R5, R0
15991E:  CMP             R5, R6
159920:  BCS             loc_159932
159922:  MOV             R0, R4
159924:  MOV             R1, R5
159926:  POP.W           {R11}
15992A:  POP.W           {R4-R7,LR}
15992E:  B.W             sub_159938
159932:  POP.W           {R11}
159936:  POP             {R4-R7,PC}
