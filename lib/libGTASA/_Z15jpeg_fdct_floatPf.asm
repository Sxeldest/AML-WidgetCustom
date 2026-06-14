; =========================================================
; Game Engine Function: _Z15jpeg_fdct_floatPf
; Address            : 0x480834 - 0x4809F0
; =========================================================

480834:  VLDR            S0, =0.70711
480838:  MOVS            R1, #8
48083A:  VLDR            S2, =0.5412
48083E:  MOV             R2, R0
480840:  VLDR            S4, =0.38268
480844:  VLDR            S6, =1.3066
480848:  VLDR            S8, [R2]
48084C:  SUBS            R1, #1
48084E:  VLDR            S7, [R2,#0x1C]
480852:  CMP             R1, #0
480854:  VLDR            S10, [R2,#4]
480858:  VLDR            S5, [R2,#0x18]
48085C:  VSUB.F32        S11, S8, S7
480860:  VLDR            S12, [R2,#8]
480864:  VADD.F32        S8, S8, S7
480868:  VLDR            S3, [R2,#0x14]
48086C:  VSUB.F32        S9, S10, S5
480870:  VLDR            S14, [R2,#0xC]
480874:  VADD.F32        S10, S10, S5
480878:  VLDR            S1, [R2,#0x10]
48087C:  VSUB.F32        S15, S12, S3
480880:  VADD.F32        S12, S12, S3
480884:  VSUB.F32        S13, S14, S1
480888:  VADD.F32        S14, S14, S1
48088C:  VADD.F32        S1, S11, S9
480890:  VADD.F32        S9, S9, S15
480894:  VSUB.F32        S7, S10, S12
480898:  VADD.F32        S3, S15, S13
48089C:  VSUB.F32        S5, S8, S14
4808A0:  VADD.F32        S8, S8, S14
4808A4:  VADD.F32        S10, S10, S12
4808A8:  VMUL.F32        S9, S9, S0
4808AC:  VSUB.F32        S13, S3, S1
4808B0:  VADD.F32        S7, S7, S5
4808B4:  VMUL.F32        S3, S3, S2
4808B8:  VMUL.F32        S1, S1, S6
4808BC:  VSUB.F32        S14, S11, S9
4808C0:  VMUL.F32        S13, S13, S4
4808C4:  VMUL.F32        S12, S7, S0
4808C8:  VADD.F32        S7, S11, S9
4808CC:  VADD.F32        S9, S10, S8
4808D0:  VSUB.F32        S8, S8, S10
4808D4:  VADD.F32        S3, S3, S13
4808D8:  VADD.F32        S1, S1, S13
4808DC:  VADD.F32        S10, S5, S12
4808E0:  VSUB.F32        S12, S5, S12
4808E4:  VSTR            S9, [R2]
4808E8:  VADD.F32        S5, S14, S3
4808EC:  VSUB.F32        S14, S14, S3
4808F0:  VADD.F32        S3, S7, S1
4808F4:  VSUB.F32        S1, S7, S1
4808F8:  VSTR            S3, [R2,#4]
4808FC:  VSTR            S10, [R2,#8]
480900:  VSTR            S14, [R2,#0xC]
480904:  VSTR            S8, [R2,#0x10]
480908:  VSTR            S5, [R2,#0x14]
48090C:  VSTR            S12, [R2,#0x18]
480910:  VSTR            S1, [R2,#0x1C]
480914:  ADD.W           R2, R2, #0x20 ; ' '
480918:  BGT             loc_480848
48091A:  MOVS            R1, #8
48091C:  VLDR            S8, [R0]
480920:  SUBS            R1, #1
480922:  VLDR            S3, [R0,#0xE0]
480926:  CMP             R1, #0
480928:  VLDR            S10, [R0,#0x20]
48092C:  VLDR            S1, [R0,#0xC0]
480930:  VSUB.F32        S11, S8, S3
480934:  VLDR            S12, [R0,#0x40]
480938:  VADD.F32        S8, S8, S3
48093C:  VLDR            S9, [R0,#0xA0]
480940:  VSUB.F32        S7, S10, S1
480944:  VLDR            S14, [R0,#0x60]
480948:  VADD.F32        S10, S10, S1
48094C:  VLDR            S5, [R0,#0x80]
480950:  VSUB.F32        S15, S12, S9
480954:  VADD.F32        S12, S12, S9
480958:  VSUB.F32        S13, S14, S5
48095C:  VADD.F32        S14, S14, S5
480960:  VADD.F32        S1, S11, S7
480964:  VADD.F32        S7, S7, S15
480968:  VSUB.F32        S9, S10, S12
48096C:  VADD.F32        S3, S15, S13
480970:  VSUB.F32        S5, S8, S14
480974:  VADD.F32        S8, S8, S14
480978:  VADD.F32        S10, S10, S12
48097C:  VMUL.F32        S7, S7, S0
480980:  VSUB.F32        S13, S3, S1
480984:  VADD.F32        S9, S9, S5
480988:  VMUL.F32        S3, S3, S2
48098C:  VMUL.F32        S1, S1, S6
480990:  VSUB.F32        S14, S11, S7
480994:  VADD.F32        S7, S11, S7
480998:  VMUL.F32        S13, S13, S4
48099C:  VMUL.F32        S12, S9, S0
4809A0:  VADD.F32        S9, S10, S8
4809A4:  VSUB.F32        S8, S8, S10
4809A8:  VADD.F32        S3, S3, S13
4809AC:  VADD.F32        S1, S1, S13
4809B0:  VADD.F32        S10, S5, S12
4809B4:  VSTR            S9, [R0]
4809B8:  VSUB.F32        S12, S5, S12
4809BC:  VSTR            S8, [R0,#0x80]
4809C0:  VADD.F32        S5, S14, S3
4809C4:  VSUB.F32        S14, S14, S3
4809C8:  VADD.F32        S3, S7, S1
4809CC:  VSTR            S10, [R0,#0x40]
4809D0:  VSUB.F32        S1, S7, S1
4809D4:  VSTR            S12, [R0,#0xC0]
4809D8:  VSTR            S5, [R0,#0xA0]
4809DC:  VSTR            S14, [R0,#0x60]
4809E0:  VSTR            S3, [R0,#0x20]
4809E4:  VSTR            S1, [R0,#0xE0]
4809E8:  ADD.W           R0, R0, #4
4809EC:  BGT             loc_48091C
4809EE:  BX              LR
