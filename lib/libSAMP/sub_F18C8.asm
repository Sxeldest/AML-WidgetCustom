; =========================================================
; Game Engine Function: sub_F18C8
; Address            : 0xF18C8 - 0xF1D3E
; =========================================================

F18C8:  PUSH            {R4-R7,LR}
F18CA:  ADD             R7, SP, #0xC
F18CC:  PUSH.W          {R8-R11}
F18D0:  SUB             SP, SP, #4
F18D2:  VPUSH           {D8-D14}
F18D6:  SUB             SP, SP, #0xB0
F18D8:  VLDR            S0, =0.0475
F18DC:  MOV             R9, R0
F18DE:  VLDR            S2, [R7,#arg_4]
F18E2:  MOV             R6, R1
F18E4:  VLDR            S4, =0.3
F18E8:  MOV             R4, R3
F18EA:  VMLA.F32        S4, S2, S0
F18EE:  LDR             R0, =(off_23494C - 0xF18FA)
F18F0:  VLDR            S0, [R2,#8]
F18F4:  MOVS            R3, #0
F18F6:  ADD             R0, PC; off_23494C
F18F8:  LDRD.W          R1, R2, [R2]
F18FC:  STRD.W          R1, R2, [SP,#0x108+var_64]
F1900:  MOVS            R1, #0
F1902:  LDR             R0, [R0]; dword_23DF24
F1904:  MOVS            R2, #0
F1906:  STRD.W          R1, R1, [SP,#0x108+var_108]
F190A:  MOV             R1, #0x5C5799
F1912:  VADD.F32        S0, S4, S0
F1916:  LDR             R0, [R0]
F1918:  ADDS            R5, R0, R1
F191A:  ADD             R0, SP, #0x108+var_64
F191C:  ADD             R1, SP, #0x108+var_70
F191E:  VSTR            S0, [SP,#0x108+var_5C]
F1922:  BLX             R5
F1924:  VMOV.F32        S0, #1.0
F1928:  VLDR            S2, [SP,#0x108+var_68]
F192C:  VCMP.F32        S2, S0
F1930:  VMRS            APSR_nzcv, FPSCR
F1934:  BMI.W           loc_F1D30
F1938:  ADD             R5, SP, #0x108+var_88
F193A:  LDR             R0, [SP,#0x108+var_6C]
F193C:  STR             R0, [SP,#0x108+var_74]
F193E:  MOV             R1, R4; s
F1940:  MOV             R0, R5; int
F1942:  VLDR            S20, [SP,#0x108+var_70]
F1946:  BL              sub_DC6DC
F194A:  LDR             R0, =(off_234980 - 0xF1954)
F194C:  VMOV.F32        S16, #0.5
F1950:  ADD             R0, PC; off_234980
F1952:  LDR.W           R10, [R0]; dword_238EC0
F1956:  VLDR            S0, [R10]
F195A:  VMUL.F32        S0, S0, S16
F195E:  VMOV            R3, S0
F1962:  ADD             R0, SP, #0x108+var_98
F1964:  MOV             R1, R6
F1966:  MOV             R2, R5
F1968:  BL              sub_12B090
F196C:  VMOV.F32        S18, #-0.5
F1970:  VLDR            S0, [SP,#0x108+var_98]
F1974:  LDRB.W          R0, [SP,#0x108+var_88]
F1978:  LDR             R5, [R7,#arg_0]
F197A:  LSLS            R0, R0, #0x1F
F197C:  VMLA.F32        S20, S0, S18
F1980:  VSTR            S20, [SP,#0x108+var_78]
F1984:  ITT NE
F1986:  LDRNE           R0, [SP,#0x108+var_80]; void *
F1988:  BLXNE           j__ZdlPv; operator delete(void *)
F198C:  ORR.W           R0, R5, #0xFF
F1990:  VLDR            S6, =0.0039216
F1994:  REV             R0, R0
F1996:  ADD             R5, SP, #0x108+var_98
F1998:  UBFX.W          R1, R0, #0x10, #8
F199C:  UBFX.W          R2, R0, #8, #8
F19A0:  UXTB            R0, R0
F19A2:  VMOV            S0, R1
F19A6:  MOV             R1, R4; s
F19A8:  VMOV            S4, R0
F19AC:  MOV.W           R0, #0x3F800000
F19B0:  VMOV            S2, R2
F19B4:  STR             R0, [SP,#0x108+var_7C]
F19B6:  VCVT.F32.U32    S0, S0
F19BA:  MOV             R0, R5; int
F19BC:  VCVT.F32.U32    S2, S2
F19C0:  VCVT.F32.U32    S4, S4
F19C4:  VMUL.F32        S0, S0, S6
F19C8:  VMUL.F32        S2, S2, S6
F19CC:  VMUL.F32        S4, S4, S6
F19D0:  VSTR            S0, [SP,#0x108+var_80]
F19D4:  VSTR            S2, [SP,#0x108+var_84]
F19D8:  VSTR            S4, [SP,#0x108+var_88]
F19DC:  BL              sub_DC6DC
F19E0:  VLDR            S0, [R10]
F19E4:  VMUL.F32        S0, S0, S16
F19E8:  ADD             R4, SP, #0x108+var_88
F19EA:  MOVS            R0, #1
F19EC:  ADD             R1, SP, #0x108+var_78; int
F19EE:  STR             R0, [SP,#0x108+var_108]; int
F19F0:  MOV             R0, R6; int
F19F2:  MOV             R2, R4; int
F19F4:  MOV             R3, R5; int
F19F6:  VSTR            S0, [SP,#0x108+var_104]
F19FA:  BL              sub_12AE34
F19FE:  LDRB.W          R0, [SP,#0x108+var_98]
F1A02:  VLDR            S28, [R7,#arg_8]
F1A06:  LSLS            R0, R0, #0x1F
F1A08:  ITT NE
F1A0A:  LDRNE           R0, [SP,#0x108+var_90]; void *
F1A0C:  BLXNE           j__ZdlPv; operator delete(void *)
F1A10:  VCMP.F32        S28, #0.0
F1A14:  VMRS            APSR_nzcv, FPSCR
F1A18:  BMI.W           loc_F1D30
F1A1C:  LDR             R0, =(off_234A5C - 0xF1A2A)
F1A1E:  ADR             R2, dword_F1D60
F1A20:  LDR             R1, =(off_234A60 - 0xF1A2C)
F1A22:  VLDR            S2, [SP,#0x108+var_6C]
F1A26:  ADD             R0, PC; off_234A5C
F1A28:  ADD             R1, PC; off_234A60
F1A2A:  VLDR            S22, =100.0
F1A2E:  VCVT.S32.F32    S2, S2
F1A32:  VLDR            S0, [SP,#0x108+var_70]
F1A36:  LDR             R1, [R1]; unk_238F30
F1A38:  VCMP.F32        S28, S22
F1A3C:  VCVT.S32.F32    S4, S0
F1A40:  LDR             R0, [R0]; dword_238EC4
F1A42:  VLDR            S12, =1.2
F1A46:  VLDR            S6, [R1]
F1A4A:  VLDR            S10, [R0]
F1A4E:  ADD             R0, SP, #0x108+var_A8
F1A50:  VDIV.F32        S26, S6, S22
F1A54:  LDR.W           R8, [R7,#arg_10]
F1A58:  VMUL.F32        S24, S6, S16
F1A5C:  VLDR            S6, [R10]
F1A60:  VCVT.F32.S32    S0, S2
F1A64:  VLD1.64         {D16-D17}, [R2]
F1A68:  VMUL.F32        S6, S6, S16
F1A6C:  ADR             R2, dword_F1D70
F1A6E:  VCVT.F32.S32    S4, S4
F1A72:  VLD1.64         {D18-D19}, [R2]
F1A76:  ADR             R2, dword_F1D80
F1A78:  VLD1.64         {D20-D21}, [R2]
F1A7C:  VADD.F32        S2, S24, S10
F1A80:  VLDR            S8, [R1,#4]
F1A84:  VSTR            S0, [SP,#0x108+var_6C]
F1A88:  VMLA.F32        S0, S6, S12
F1A8C:  VST1.64         {D18-D19}, [R4]
F1A90:  VMOV.F32        S6, S24
F1A94:  VSTR            S4, [SP,#0x108+var_70]
F1A98:  VST1.64         {D16-D17}, [R5]
F1A9C:  VSUB.F32        S14, S4, S2
F1AA0:  VST1.64         {D20-D21}, [R0]
F1AA4:  VADD.F32        S1, S2, S4
F1AA8:  VMRS            APSR_nzcv, FPSCR
F1AAC:  IT GT
F1AAE:  VMOVGT.F32      S28, S22
F1AB2:  VADD.F32        S2, S8, S0
F1AB6:  VLDR            S20, [R7,#arg_C]
F1ABA:  VNMLS.F32       S6, S28, S26
F1ABE:  VSTR            S0, [SP,#0x108+var_AC]
F1AC2:  VCMP.F32        S20, #0.0
F1AC6:  VMRS            APSR_nzcv, FPSCR
F1ACA:  VADD.F32        S12, S10, S14
F1ACE:  VSTR            S14, [SP,#0x108+var_B0]
F1AD2:  VSUB.F32        S3, S1, S10
F1AD6:  VSTR            S1, [SP,#0x108+var_B8]
F1ADA:  VSTR            S2, [SP,#0x108+var_B4]
F1ADE:  VADD.F32        S8, S6, S4
F1AE2:  VADD.F32        S4, S10, S0
F1AE6:  VSUB.F32        S6, S2, S10
F1AEA:  VSTR            S12, [SP,#0x108+var_C0]
F1AEE:  VSTR            S3, [SP,#0x108+var_C8]
F1AF2:  VSTR            S12, [SP,#0x108+var_D0]
F1AF6:  VSTR            S8, [SP,#0x108+var_D8]
F1AFA:  VSTR            S4, [SP,#0x108+var_BC]
F1AFE:  VSTR            S4, [SP,#0x108+var_CC]
F1B02:  VSTR            S6, [SP,#0x108+var_C4]
F1B06:  VSTR            S6, [SP,#0x108+var_D4]
F1B0A:  BLE.W           loc_F1C40
F1B0E:  VMOV.F32        S8, #13.0
F1B12:  STR.W           R9, [SP,#0x108+var_FC]
F1B16:  MOV             R9, R0
F1B18:  VADD.F32        S4, S4, S8
F1B1C:  VADD.F32        S6, S6, S8
F1B20:  VADD.F32        S2, S2, S8
F1B24:  VADD.F32        S0, S0, S8
F1B28:  VSTR            S4, [SP,#0x108+var_BC]
F1B2C:  VSTR            S6, [SP,#0x108+var_C4]
F1B30:  VSTR            S2, [SP,#0x108+var_B4]
F1B34:  VSTR            S0, [SP,#0x108+var_AC]
F1B38:  VSTR            S4, [SP,#0x108+var_CC]
F1B3C:  VSTR            S6, [SP,#0x108+var_D4]
F1B40:  BL              sub_167F88
F1B44:  ADD             R6, SP, #0x108+var_88
F1B46:  MOV             R4, R0
F1B48:  MOV             R0, R6
F1B4A:  BL              sub_165778
F1B4E:  ADD             R1, SP, #0x108+var_B0; int
F1B50:  ADD             R2, SP, #0x108+var_B8; int
F1B52:  MOV             R3, R0; int
F1B54:  MOV             R0, R4; int
F1B56:  MOV.W           R11, #0xF
F1B5A:  MOV.W           R8, #0
F1B5E:  STRD.W          R8, R11, [SP,#0x108+var_108]; float
F1B62:  BL              sub_174194
F1B66:  BL              sub_167F88
F1B6A:  MOV             R4, R0
F1B6C:  MOV             R0, R9
F1B6E:  BL              sub_165778
F1B72:  ADD             R1, SP, #0x108+var_C0; int
F1B74:  ADD             R2, SP, #0x108+var_C8; int
F1B76:  MOV             R3, R0; int
F1B78:  MOV             R0, R4; int
F1B7A:  STRD.W          R8, R11, [SP,#0x108+var_108]; float
F1B7E:  BL              sub_174194
F1B82:  BL              sub_167F88
F1B86:  MOV             R4, R0
F1B88:  MOV             R0, R5
F1B8A:  BL              sub_165778
F1B8E:  ADD             R1, SP, #0x108+var_D0; int
F1B90:  ADD             R2, SP, #0x108+var_D8; int
F1B92:  MOV             R3, R0; int
F1B94:  MOV             R0, R4; int
F1B96:  STR.W           R8, [SP,#0x108+var_108]; float
F1B9A:  LDR.W           R8, [R7,#arg_10]
F1B9E:  STR.W           R11, [SP,#0x108+var_104]; int
F1BA2:  BL              sub_174194
F1BA6:  VCMP.F32        S20, S22
F1BAA:  ADR             R0, dword_F1D90
F1BAC:  VMRS            APSR_nzcv, FPSCR
F1BB0:  IT GT
F1BB2:  VMOVGT.F32      S20, S22
F1BB6:  VNMLS.F32       S24, S20, S26
F1BBA:  VLDR            S2, [SP,#0x108+var_70]
F1BBE:  VMOV.F32        S0, #-13.0
F1BC2:  VLDR            S6, [SP,#0x108+var_AC]
F1BC6:  VLDR            S8, [SP,#0x108+var_B4]
F1BCA:  VLDR            S10, [SP,#0x108+var_BC]
F1BCE:  VLDR            S12, [SP,#0x108+var_C4]
F1BD2:  VLDR            S14, [SP,#0x108+var_CC]
F1BD6:  VLDR            S4, [SP,#0x108+var_D4]
F1BDA:  VADD.F32        S2, S24, S2
F1BDE:  VLD1.64         {D16-D17}, [R0]
F1BE2:  VADD.F32        S6, S6, S0
F1BE6:  ADR             R0, dword_F1DA0
F1BE8:  VADD.F32        S8, S8, S0
F1BEC:  VLD1.64         {D18-D19}, [R0]
F1BF0:  VADD.F32        S10, S10, S0
F1BF4:  VADD.F32        S12, S12, S0
F1BF8:  VST1.64         {D18-D19}, [R9]
F1BFC:  VADD.F32        S14, S14, S0
F1C00:  VADD.F32        S0, S4, S0
F1C04:  VST1.64         {D16-D17}, [R5]
F1C08:  LDR.W           R9, [SP,#0x108+var_FC]
F1C0C:  VSTR            S6, [SP,#0x108+var_AC]
F1C10:  VSTR            S8, [SP,#0x108+var_B4]
F1C14:  VSTR            S10, [SP,#0x108+var_BC]
F1C18:  VSTR            S12, [SP,#0x108+var_C4]
F1C1C:  VSTR            S14, [SP,#0x108+var_CC]
F1C20:  VSTR            S0, [SP,#0x108+var_D4]
F1C24:  VSTR            S2, [SP,#0x108+var_D8]
F1C28:  BL              sub_167F88
F1C2C:  B               loc_F1C46
F1C2E:  ALIGN 0x10
F1C30:  DCFS 0.0475
F1C34:  DCFS 0.3
F1C38:  DCD off_23494C - 0xF18FA
F1C3C:  DCD off_234980 - 0xF1954
F1C40:  BL              sub_167F88
F1C44:  ADD             R6, SP, #0x108+var_88
F1C46:  MOV             R4, R0
F1C48:  MOV             R0, R6
F1C4A:  BL              sub_165778
F1C4E:  ADD             R1, SP, #0x108+var_B0; int
F1C50:  ADD             R2, SP, #0x108+var_B8; int
F1C52:  MOV             R3, R0; int
F1C54:  MOV             R0, R4; int
F1C56:  MOVS            R5, #0xF
F1C58:  MOVS            R6, #0
F1C5A:  STRD.W          R6, R5, [SP,#0x108+var_108]; float
F1C5E:  BL              sub_174194
F1C62:  BL              sub_167F88
F1C66:  MOV             R4, R0
F1C68:  ADD             R0, SP, #0x108+var_A8
F1C6A:  BL              sub_165778
F1C6E:  ADD             R1, SP, #0x108+var_C0; int
F1C70:  ADD             R2, SP, #0x108+var_C8; int
F1C72:  MOV             R3, R0; int
F1C74:  MOV             R0, R4; int
F1C76:  STRD.W          R6, R5, [SP,#0x108+var_108]; float
F1C7A:  BL              sub_174194
F1C7E:  BL              sub_167F88
F1C82:  MOV             R4, R0
F1C84:  ADD             R0, SP, #0x108+var_98
F1C86:  BL              sub_165778
F1C8A:  ADD             R1, SP, #0x108+var_D0; int
F1C8C:  ADD             R2, SP, #0x108+var_D8; int
F1C8E:  MOV             R3, R0; int
F1C90:  MOV             R0, R4; int
F1C92:  STRD.W          R6, R5, [SP,#0x108+var_108]; float
F1C96:  BL              sub_174194
F1C9A:  CMP.W           R8, #0
F1C9E:  BEQ             loc_F1D30
F1CA0:  LDR.W           R0, [R9]
F1CA4:  CBZ             R0, loc_F1D16
F1CA6:  LDR             R0, [R0]
F1CA8:  CBZ             R0, loc_F1D16
F1CAA:  VLDR            S0, [R10]
F1CAE:  VLDR            S4, =1.3
F1CB2:  VMUL.F32        S2, S0, S16
F1CB6:  VLDR            S6, =1.4
F1CBA:  VMUL.F32        S0, S0, S18
F1CBE:  VLDR            S8, [SP,#0x108+var_B0]
F1CC2:  VLDR            S10, [SP,#0x108+var_AC]
F1CC6:  VSTR            S10, [SP,#0x108+var_DC]
F1CCA:  VMUL.F32        S2, S2, S4
F1CCE:  VMLA.F32        S8, S0, S6
F1CD2:  VSTR            S8, [SP,#0x108+var_E0]
F1CD6:  VADD.F32        S0, S2, S10
F1CDA:  VADD.F32        S2, S2, S8
F1CDE:  VSTR            S0, [SP,#0x108+var_E4]
F1CE2:  VSTR            S2, [SP,#0x108+var_E8]
F1CE6:  BL              sub_167F88
F1CEA:  LDR.W           R1, [R9]
F1CEE:  MOVS            R2, #0
F1CF0:  ADD             R3, SP, #0x108+var_F8
F1CF2:  ADD             R6, SP, #0x108+var_F0
F1CF4:  LDR             R1, [R1]
F1CF6:  STRD.W          R2, R2, [SP,#0x108+var_F0]
F1CFA:  MOV.W           R2, #0x3F800000
F1CFE:  STRD.W          R2, R2, [SP,#0x108+var_F8]
F1D02:  MOV.W           R2, #0xFFFFFFFF
F1D06:  STRD.W          R6, R3, [SP,#0x108+var_108]
F1D0A:  ADD             R3, SP, #0x108+var_E8
F1D0C:  STR             R2, [SP,#0x108+var_100]
F1D0E:  ADD             R2, SP, #0x108+var_E0
F1D10:  BL              sub_174BE2
F1D14:  B               loc_F1D30
F1D16:  LDR             R0, =(byte_23FBB4 - 0xF1D1C)
F1D18:  ADD             R0, PC; byte_23FBB4
F1D1A:  LDRB            R1, [R0]
F1D1C:  CBNZ            R1, loc_F1D30
F1D1E:  LDR             R1, =(aAxl - 0xF1D28); "AXL" ...
F1D20:  MOVS            R3, #1
F1D22:  LDR             R2, =(aNoAfkIcon - 0xF1D2C); "NO AFK ICON!!!" ...
F1D24:  ADD             R1, PC; "AXL"
F1D26:  STRB            R3, [R0]
F1D28:  ADD             R2, PC; "NO AFK ICON!!!"
F1D2A:  MOVS            R0, #6; prio
F1D2C:  BLX             __android_log_print
F1D30:  ADD             SP, SP, #0xB0
F1D32:  VPOP            {D8-D14}
F1D36:  ADD             SP, SP, #4
F1D38:  POP.W           {R8-R11}
F1D3C:  POP             {R4-R7,PC}
