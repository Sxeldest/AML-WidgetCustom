; =========================================================
; Game Engine Function: _ZN8CShadows15RemoveOilInAreaEffff
; Address            : 0x5BD91C - 0x5BD9A0
; =========================================================

5BD91C:  PUSH            {R4,R6,R7,LR}
5BD91E:  ADD             R7, SP, #8
5BD920:  VMOV            S6, R0
5BD924:  LDR             R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD932)
5BD926:  VMOV            S4, R1
5BD92A:  MOV.W           R12, #0
5BD92E:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD930:  VMOV            S2, R2
5BD934:  VMOV            S0, R3
5BD938:  LDR             R1, [R0]; CShadows::aPermanentShadows ...
5BD93A:  LDR             R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD940)
5BD93C:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD93E:  LDR             R2, [R0]; CShadows::aPermanentShadows ...
5BD940:  LDR             R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD946)
5BD942:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD944:  LDR.W           LR, [R0]; CShadows::aPermanentShadows ...
5BD948:  MOVS            R0, #0
5BD94A:  B               loc_5BD956
5BD94C:  ADDS            R0, #0x38 ; '8'
5BD94E:  CMP.W           R0, #0xA80
5BD952:  IT EQ
5BD954:  POPEQ           {R4,R6,R7,PC}
5BD956:  ADDS            R3, R1, R0
5BD958:  LDRB.W          R4, [R3,#0x32]
5BD95C:  CMP             R4, #8
5BD95E:  IT NE
5BD960:  CMPNE           R4, #4
5BD962:  BNE             loc_5BD94C
5BD964:  ADDS            R4, R2, R0
5BD966:  VLDR            S8, [R4]
5BD96A:  VCMPE.F32       S8, S6
5BD96E:  VMRS            APSR_nzcv, FPSCR
5BD972:  BLE             loc_5BD94C
5BD974:  VCMPE.F32       S8, S4
5BD978:  VMRS            APSR_nzcv, FPSCR
5BD97C:  BGE             loc_5BD94C
5BD97E:  ADD.W           R4, LR, R0
5BD982:  VLDR            S8, [R4,#4]
5BD986:  VCMPE.F32       S8, S2
5BD98A:  VMRS            APSR_nzcv, FPSCR
5BD98E:  BLE             loc_5BD94C
5BD990:  VCMPE.F32       S8, S0
5BD994:  VMRS            APSR_nzcv, FPSCR
5BD998:  IT LT
5BD99A:  STRBLT.W        R12, [R3,#0x32]
5BD99E:  B               loc_5BD94C
