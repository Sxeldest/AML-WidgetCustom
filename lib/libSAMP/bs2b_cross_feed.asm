; =========================================================
; Game Engine Function: bs2b_cross_feed
; Address            : 0x1DA900 - 0x1DA9D0
; =========================================================

1DA900:  PUSH            {R11,LR}
1DA904:  MOV             R11, SP
1DA908:  VPUSH           {D8-D13}
1DA90C:  VLDR            S0, [R1]
1DA910:  ADD             R2, R0, #8
1DA914:  VCVT.F64.F32    D0, S0
1DA918:  VLDM            R2, {D1-D4}
1DA91C:  VLDR            D5, [R0,#0x48]
1DA920:  VMUL.F64        D6, D1, D0
1DA924:  VMUL.F64        D5, D5, D2
1DA928:  VADD.F64        D5, D5, D6
1DA92C:  VSTR            D5, [R0,#0x48]
1DA930:  VLDR            S12, [R1,#4]
1DA934:  VLDR            D7, [R0,#0x38]
1DA938:  VCVT.F64.F32    D6, S12
1DA93C:  VLDR            D8, [R0,#0x40]
1DA940:  VMUL.F64        D7, D7, D4
1DA944:  VMUL.F64        D11, D3, D0
1DA948:  VMUL.F64        D4, D8, D4
1DA94C:  VMUL.F64        D3, D3, D6
1DA950:  VLDR            D12, [R0,#0x50]
1DA954:  VLDR            D9, [R0,#0x28]
1DA958:  VLDR            D10, [R0,#0x58]
1DA95C:  VLDR            D13, [R0,#0x60]
1DA960:  VMUL.F64        D8, D10, D9
1DA964:  VMUL.F64        D2, D12, D2
1DA968:  VMUL.F64        D1, D1, D6
1DA96C:  VMUL.F64        D9, D13, D9
1DA970:  VADD.F64        D7, D7, D11
1DA974:  VADD.F64        D3, D4, D3
1DA978:  VADD.F64        D4, D7, D8
1DA97C:  VADD.F64        D1, D2, D1
1DA980:  VADD.F64        D2, D3, D9
1DA984:  VADD.F64        D5, D5, D2
1DA988:  VADD.F64        D3, D1, D4
1DA98C:  VCVT.F32.F64    S6, D3
1DA990:  VCVT.F32.F64    S10, D5
1DA994:  VSTR            D4, [R0,#0x58]
1DA998:  VSTR            D1, [R0,#0x50]
1DA99C:  VSTR            D0, [R0,#0x38]
1DA9A0:  VSTR            D6, [R0,#0x40]
1DA9A4:  VSTR            D2, [R0,#0x60]
1DA9A8:  VSTR            S6, [R1]
1DA9AC:  VSTR            S10, [R1,#4]
1DA9B0:  VLDR            S0, [R0,#0x30]
1DA9B4:  VMUL.F32        S0, S0, S6
1DA9B8:  VSTR            S0, [R1]
1DA9BC:  VLDR            S0, [R0,#0x30]
1DA9C0:  VMUL.F32        S0, S0, S10
1DA9C4:  VSTR            S0, [R1,#4]
1DA9C8:  VPOP            {D8-D13}
1DA9CC:  POP             {R11,PC}
