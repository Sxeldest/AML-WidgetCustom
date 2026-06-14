; =========================================================
; Game Engine Function: alSource3f
; Address            : 0x1CB8F0 - 0x1CBA9C
; =========================================================

1CB8F0:  PUSH            {R4-R9,R11,LR}
1CB8F4:  ADD             R11, SP, #0x18
1CB8F8:  VPUSH           {D8-D10}
1CB8FC:  MOV             R5, R3
1CB900:  MOV             R7, R2
1CB904:  MOV             R6, R1
1CB908:  MOV             R4, R0
1CB90C:  VLDR            S16, [R11,#arg_0]
1CB910:  BL              j_GetContextRef
1CB914:  MOV             R9, R0
1CB918:  CMP             R9, #0
1CB91C:  BEQ             loc_1CB9B0
1CB920:  ADD             R0, R9, #0x7C ; '|'
1CB924:  MOV             R1, R4
1CB928:  BL              j_LookupUIntMapKey
1CB92C:  MOV             R8, R0
1CB930:  CMP             R8, #0
1CB934:  BEQ             loc_1CB9B8
1CB938:  VMOV            S18, R5
1CB93C:  MOVW            R0, #0x1006
1CB940:  VMOV            S20, R7
1CB944:  CMP             R6, R0
1CB948:  BEQ             loc_1CB9C4
1CB94C:  MOVW            R0, #0x1005
1CB950:  CMP             R6, R0
1CB954:  BEQ             loc_1CBA10
1CB958:  MOVW            R0, #0x1004
1CB95C:  CMP             R6, R0
1CB960:  BNE             loc_1CBA74
1CB964:  VABS.F32        S2, S20
1CB968:  VLDR            S0, =+Inf
1CB96C:  VCMP.F32        S2, S0
1CB970:  VMRS            APSR_nzcv, FPSCR
1CB974:  BEQ             loc_1CBA80
1CB978:  VABS.F32        S2, S18
1CB97C:  VCMP.F32        S2, S0
1CB980:  VMRS            APSR_nzcv, FPSCR
1CB984:  VABSNE.F32      S2, S16
1CB988:  VCMPNE.F32      S2, S0
1CB98C:  VMRSNE          APSR_nzcv, FPSCR
1CB990:  BEQ             loc_1CBA80
1CB994:  LDR             R0, [R9,#0xFC]
1CB998:  ADD             R0, R0, #8; mutex
1CB99C:  BL              j_EnterCriticalSection
1CB9A0:  VSTR            S20, [R8,#0x28]
1CB9A4:  VSTR            S18, [R8,#0x2C]
1CB9A8:  VSTR            S16, [R8,#0x30]
1CB9AC:  B               loc_1CBA58
1CB9B0:  VPOP            {D8-D10}
1CB9B4:  POP             {R4-R9,R11,PC}
1CB9B8:  MOV             R0, R9
1CB9BC:  MOVW            R1, #0xA001
1CB9C0:  B               loc_1CBA88
1CB9C4:  VABS.F32        S2, S20
1CB9C8:  VLDR            S0, =+Inf
1CB9CC:  VCMP.F32        S2, S0
1CB9D0:  VMRS            APSR_nzcv, FPSCR
1CB9D4:  BEQ             loc_1CBA80
1CB9D8:  VABS.F32        S2, S18
1CB9DC:  VCMP.F32        S2, S0
1CB9E0:  VMRS            APSR_nzcv, FPSCR
1CB9E4:  VABSNE.F32      S2, S16
1CB9E8:  VCMPNE.F32      S2, S0
1CB9EC:  VMRSNE          APSR_nzcv, FPSCR
1CB9F0:  BEQ             loc_1CBA80
1CB9F4:  LDR             R0, [R9,#0xFC]
1CB9F8:  ADD             R0, R0, #8; mutex
1CB9FC:  BL              j_EnterCriticalSection
1CBA00:  VSTR            S20, [R8,#0x34]
1CBA04:  VSTR            S18, [R8,#0x38]
1CBA08:  VSTR            S16, [R8,#0x3C]
1CBA0C:  B               loc_1CBA58
1CBA10:  VABS.F32        S2, S20
1CBA14:  VLDR            S0, =+Inf
1CBA18:  VCMP.F32        S2, S0
1CBA1C:  VMRS            APSR_nzcv, FPSCR
1CBA20:  BEQ             loc_1CBA80
1CBA24:  VABS.F32        S2, S18
1CBA28:  VCMP.F32        S2, S0
1CBA2C:  VMRS            APSR_nzcv, FPSCR
1CBA30:  VABSNE.F32      S2, S16
1CBA34:  VCMPNE.F32      S2, S0
1CBA38:  VMRSNE          APSR_nzcv, FPSCR
1CBA3C:  BEQ             loc_1CBA80
1CBA40:  LDR             R0, [R9,#0xFC]
1CBA44:  ADD             R0, R0, #8; mutex
1CBA48:  BL              j_EnterCriticalSection
1CBA4C:  VSTR            S20, [R8,#0x40]
1CBA50:  VSTR            S18, [R8,#0x44]
1CBA54:  VSTR            S16, [R8,#0x48]
1CBA58:  LDR             R0, [R9,#0xFC]
1CBA5C:  ADD             R0, R0, #8; mutex
1CBA60:  BL              j_LeaveCriticalSection
1CBA64:  MOVW            R0, #0x1F9C
1CBA68:  MOV             R1, #1
1CBA6C:  STR             R1, [R8,R0]
1CBA70:  B               loc_1CBA8C
1CBA74:  MOV             R0, R9
1CBA78:  MOVW            R1, #0xA002
1CBA7C:  B               loc_1CBA88
1CBA80:  MOV             R0, R9
1CBA84:  MOVW            R1, #0xA003
1CBA88:  BL              j_alSetError
1CBA8C:  MOV             R0, R9
1CBA90:  VPOP            {D8-D10}
1CBA94:  POP             {R4-R9,R11,LR}
1CBA98:  B               j_ALCcontext_DecRef
