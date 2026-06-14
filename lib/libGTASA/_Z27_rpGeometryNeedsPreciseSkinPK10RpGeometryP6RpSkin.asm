; =========================================================
; Game Engine Function: _Z27_rpGeometryNeedsPreciseSkinPK10RpGeometryP6RpSkin
; Address            : 0x21F904 - 0x21F9A2
; =========================================================

21F904:  PUSH            {R4,R6,R7,LR}
21F906:  ADD             R7, SP, #8
21F908:  MOV             R4, R0
21F90A:  LDR             R0, [R1,#0x10]
21F90C:  CMP             R0, #4
21F90E:  BNE             loc_21F974
21F910:  MOV             R0, R4
21F912:  BLX             j_RpSkinGeometryGetSkin
21F916:  BLX             j_RpSkinGetVertexBoneWeights
21F91A:  LDR             R3, [R4,#0x14]
21F91C:  CBZ             R3, loc_21F974
21F91E:  VLDR            S0, =0.0
21F922:  CMP             R3, #4
21F924:  BCC             loc_21F978
21F926:  ANDS.W          R1, R3, #3
21F92A:  IT EQ
21F92C:  MOVEQ           R1, #4
21F92E:  SUBS            R2, R3, R1
21F930:  BEQ             loc_21F978
21F932:  VMOV.I32        Q8, #0
21F936:  ADD.W           R2, R0, R2,LSL#4
21F93A:  ADDS            R0, #0xC
21F93C:  VLD4.32         {D18,D20,D22,D24}, [R0]!
21F940:  SUBS            R3, #4
21F942:  CMP             R1, R3
21F944:  VLD4.32         {D19,D21,D23,D25}, [R0]!
21F948:  VMAX.F32        Q8, Q9, Q8
21F94C:  BNE             loc_21F93C
21F94E:  VEXT.8          Q9, Q8, Q8, #8
21F952:  VMAX.F32        Q0, Q8, Q9
21F956:  VDUP.32         Q8, D0[1]
21F95A:  VCGT.F32        Q8, Q0, Q8
21F95E:  VMOVN.I32       D16, Q8
21F962:  VMOV.U16        R0, D16[0]
21F966:  LSLS            R0, R0, #0x1F
21F968:  IT NE
21F96A:  VMOVNE.F32      S1, S0
21F96E:  VMOV.F32        S0, S1
21F972:  B               loc_21F97C
21F974:  MOVS            R0, #0
21F976:  POP             {R4,R6,R7,PC}
21F978:  MOV             R1, R3
21F97A:  MOV             R2, R0
21F97C:  ADD.W           R0, R2, #0xC
21F980:  VLDR            S2, [R0]
21F984:  ADDS            R0, #0x10
21F986:  SUBS            R1, #1
21F988:  VMAX.F32        D0, D1, D0
21F98C:  BNE             loc_21F980
21F98E:  VLDR            S2, =0.07
21F992:  MOVS            R0, #0
21F994:  VCMPE.F32       S0, S2
21F998:  VMRS            APSR_nzcv, FPSCR
21F99C:  IT GE
21F99E:  MOVGE           R0, #1
21F9A0:  POP             {R4,R6,R7,PC}
