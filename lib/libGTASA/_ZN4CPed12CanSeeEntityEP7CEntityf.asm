; =========================================================
; Game Engine Function: _ZN4CPed12CanSeeEntityEP7CEntityf
; Address            : 0x49FC1C - 0x49FCE4
; =========================================================

49FC1C:  PUSH            {R4-R7,LR}
49FC1E:  ADD             R7, SP, #0xC
49FC20:  PUSH.W          {R8}; float
49FC24:  MOV             R5, R0
49FC26:  LDR             R4, [R1,#0x14]
49FC28:  LDR             R0, [R5,#0x14]
49FC2A:  MOV             R8, R2
49FC2C:  ADD.W           R6, R4, #0x30 ; '0'
49FC30:  ADD.W           R3, R0, #0x30 ; '0'
49FC34:  CMP             R0, #0
49FC36:  IT EQ
49FC38:  ADDEQ           R3, R5, #4
49FC3A:  CMP             R4, #0
49FC3C:  LDRD.W          R2, R3, [R3]; float
49FC40:  IT EQ
49FC42:  ADDEQ           R6, R1, #4
49FC44:  LDRD.W          R0, R1, [R6]; float
49FC48:  BLX             j__ZN8CGeneral21GetAngleBetweenPointsEffff; CGeneral::GetAngleBetweenPoints(float,float,float,float)
49FC4C:  VLDR            S0, =3.1416
49FC50:  VMOV            S2, R0
49FC54:  VMUL.F32        S0, S2, S0
49FC58:  VLDR            S2, =180.0
49FC5C:  VDIV.F32        S2, S0, S2
49FC60:  VLDR            S0, =6.2832
49FC64:  VCMPE.F32       S2, S0
49FC68:  VMRS            APSR_nzcv, FPSCR
49FC6C:  BLE             loc_49FC78
49FC6E:  VLDR            S4, =-6.2832
49FC72:  VADD.F32        S2, S2, S4
49FC76:  B               loc_49FC86
49FC78:  VCMPE.F32       S2, #0.0
49FC7C:  VMRS            APSR_nzcv, FPSCR
49FC80:  IT LT
49FC82:  VADDLT.F32      S2, S2, S0
49FC86:  ADDW            R0, R5, #0x55C
49FC8A:  VMOV            S4, R8
49FC8E:  VLDR            S6, [R0]
49FC92:  VCMPE.F32       S6, S0
49FC96:  VMRS            APSR_nzcv, FPSCR
49FC9A:  BLE             loc_49FCA6
49FC9C:  VLDR            S8, =-6.2832
49FCA0:  VADD.F32        S6, S6, S8
49FCA4:  B               loc_49FCB4
49FCA6:  VCMPE.F32       S6, #0.0
49FCAA:  VMRS            APSR_nzcv, FPSCR
49FCAE:  IT LT
49FCB0:  VADDLT.F32      S6, S6, S0
49FCB4:  VSUB.F32        S2, S2, S6
49FCB8:  MOVS            R1, #0
49FCBA:  VSUB.F32        S0, S0, S4
49FCBE:  MOVS            R0, #0
49FCC0:  VABS.F32        S2, S2
49FCC4:  VCMPE.F32       S2, S0
49FCC8:  VMRS            APSR_nzcv, FPSCR
49FCCC:  VCMPE.F32       S2, S4
49FCD0:  IT GT
49FCD2:  MOVGT           R1, #1
49FCD4:  VMRS            APSR_nzcv, FPSCR
49FCD8:  IT LT
49FCDA:  MOVLT           R0, #1
49FCDC:  ORRS            R0, R1
49FCDE:  POP.W           {R8}
49FCE2:  POP             {R4-R7,PC}
