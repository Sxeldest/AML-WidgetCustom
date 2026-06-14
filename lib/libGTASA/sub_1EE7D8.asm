; =========================================================
; Game Engine Function: sub_1EE7D8
; Address            : 0x1EE7D8 - 0x1EF080
; =========================================================

1EE7D8:  PUSH            {R4-R7,LR}
1EE7DA:  ADD             R7, SP, #0xC
1EE7DC:  PUSH.W          {R8-R11}
1EE7E0:  SUB             SP, SP, #4
1EE7E2:  VPUSH           {D8-D15}
1EE7E6:  SUB             SP, SP, #0x40
1EE7E8:  MOV             R4, R1
1EE7EA:  MOVW            R6, #:lower16:(elf_hash_chain+0x8538)
1EE7EE:  LDR             R5, [R4]
1EE7F0:  MOVT            R6, #:upper16:(elf_hash_chain+0x8538)
1EE7F4:  MOV             R10, R0
1EE7F6:  CMP             R5, R6
1EE7F8:  BLS             loc_1EE80A
1EE7FA:  MOVS            R0, #1
1EE7FC:  ADD             SP, SP, #0x40 ; '@'
1EE7FE:  VPOP            {D8-D15}
1EE802:  ADD             SP, SP, #4
1EE804:  POP.W           {R8-R11}
1EE808:  POP             {R4-R7,PC}
1EE80A:  LDR             R1, [R4,#4]
1EE80C:  MOVS            R0, #1
1EE80E:  CMP             R1, #0
1EE810:  BLT             loc_1EE7FC
1EE812:  SUBS            R2, R6, R5
1EE814:  CMP             R1, R2
1EE816:  BGT             loc_1EE7FC
1EE818:  LDR             R2, [R4,#8]
1EE81A:  CMP             R2, R6
1EE81C:  BHI             loc_1EE7FA
1EE81E:  LDR.W           R9, [R4,#0xC]
1EE822:  MOVS            R0, #1
1EE824:  CMP.W           R9, #0
1EE828:  BLT             loc_1EE7FC
1EE82A:  SUBS            R3, R6, R2
1EE82C:  CMP             R9, R3
1EE82E:  BGT             loc_1EE7FC
1EE830:  LDR.W           R11, [R4,#0x10]
1EE834:  CMP             R11, R6
1EE836:  BHI             loc_1EE7FA
1EE838:  LDR.W           R8, [R4,#0x14]
1EE83C:  MOVS            R0, #1
1EE83E:  CMP.W           R8, #0
1EE842:  BLT             loc_1EE7FC
1EE844:  SUB.W           R3, R6, R11
1EE848:  CMP             R8, R3
1EE84A:  BGT             loc_1EE7FC
1EE84C:  LDR.W           LR, [R4,#0x18]
1EE850:  CMP             LR, R6
1EE852:  BHI             loc_1EE7FA
1EE854:  LDR.W           R12, [R4,#0x1C]
1EE858:  MOVS            R0, #1
1EE85A:  CMP.W           R12, #5
1EE85E:  BLT             loc_1EE7FC
1EE860:  SUB.W           R3, R6, LR
1EE864:  CMP             R12, R3
1EE866:  BGT             loc_1EE7FC
1EE868:  SUB.W           R0, R1, R8
1EE86C:  SUBS.W          R3, R2, R11
1EE870:  STR             R0, [SP,#0xA0+var_98]
1EE872:  MOV.W           R2, #0
1EE876:  STRD.W          LR, R12, [SP,#0xA0+var_88]
1EE87A:  IT NE
1EE87C:  CMPNE           R0, #0
1EE87E:  BEQ             loc_1EE8DE
1EE880:  VMOV            S0, R0
1EE884:  VCVT.F64.S32    D16, S0
1EE888:  STR             R3, [SP,#0xA0+var_90]
1EE88A:  VMOV            S0, R3
1EE88E:  VCVT.F64.S32    D17, S0
1EE892:  VMUL.F64        D16, D17, D16
1EE896:  VMOV.F64        D17, #7.0
1EE89A:  VDIV.F64        D16, D16, D17
1EE89E:  VMOV.F64        D17, #0.5
1EE8A2:  VADD.F64        D16, D16, D17
1EE8A6:  VMOV            R0, R1, D16; x
1EE8AA:  BLX             floor
1EE8AE:  VLDR            D17, =2.14748365e9
1EE8B2:  VMOV            D16, R0, R1
1EE8B6:  MOVS            R0, #2
1EE8B8:  VCMPE.F64       D16, D17
1EE8BC:  VMRS            APSR_nzcv, FPSCR
1EE8C0:  BGT             loc_1EE7FC
1EE8C2:  VLDR            D17, =-2.14748365e9
1EE8C6:  LDRD.W          LR, R12, [SP,#0xA0+var_88]
1EE8CA:  VCMPE.F64       D16, D17
1EE8CE:  VMRS            APSR_nzcv, FPSCR
1EE8D2:  BLT             loc_1EE7FC
1EE8D4:  VCVT.S32.F64    S0, D16
1EE8D8:  LDR             R3, [SP,#0xA0+var_90]
1EE8DA:  VMOV            R2, S0
1EE8DE:  SUBS.W          R1, R5, R11
1EE8E2:  SUB.W           R9, R9, R8
1EE8E6:  STR             R1, [SP,#0xA0+var_94]
1EE8E8:  MOV.W           R1, #0
1EE8EC:  STR.W           R9, [SP,#0xA0+var_8C]
1EE8F0:  IT NE
1EE8F2:  CMPNE.W         R9, #0
1EE8F6:  BEQ             loc_1EE962
1EE8F8:  LDR             R0, [SP,#0xA0+var_8C]
1EE8FA:  STR             R3, [SP,#0xA0+var_90]
1EE8FC:  STR             R2, [SP,#0xA0+var_9C]
1EE8FE:  VMOV            S0, R0
1EE902:  VCVT.F64.S32    D16, S0
1EE906:  LDR             R0, [SP,#0xA0+var_94]
1EE908:  VMOV            S0, R0
1EE90C:  VCVT.F64.S32    D17, S0
1EE910:  VMUL.F64        D16, D17, D16
1EE914:  VMOV.F64        D17, #7.0
1EE918:  VDIV.F64        D16, D16, D17
1EE91C:  VMOV.F64        D17, #0.5
1EE920:  VADD.F64        D16, D16, D17
1EE924:  VMOV            R0, R1, D16; x
1EE928:  BLX             floor
1EE92C:  VLDR            D17, =2.14748365e9
1EE930:  VMOV            D16, R0, R1
1EE934:  MOVS            R0, #2
1EE936:  VCMPE.F64       D16, D17
1EE93A:  VMRS            APSR_nzcv, FPSCR
1EE93E:  BGT.W           loc_1EE7FC
1EE942:  VLDR            D17, =-2.14748365e9
1EE946:  LDRD.W          LR, R12, [SP,#0xA0+var_88]
1EE94A:  VCMPE.F64       D16, D17
1EE94E:  VMRS            APSR_nzcv, FPSCR
1EE952:  BLT.W           loc_1EE7FC
1EE956:  VCVT.S32.F64    S0, D16
1EE95A:  LDR             R2, [SP,#0xA0+var_9C]
1EE95C:  LDR             R3, [SP,#0xA0+var_90]
1EE95E:  VMOV            R1, S0
1EE962:  SUB.W           R8, R12, R8
1EE966:  CMP             R3, #0
1EE968:  STR             R1, [SP,#0xA0+var_90]
1EE96A:  MOV.W           R9, #0
1EE96E:  IT NE
1EE970:  CMPNE.W         R8, #0
1EE974:  BEQ             loc_1EE9D8
1EE976:  VMOV            S0, R8
1EE97A:  STR             R2, [SP,#0xA0+var_9C]
1EE97C:  VCVT.F64.S32    D16, S0
1EE980:  VMOV            S0, R3
1EE984:  VCVT.F64.S32    D17, S0
1EE988:  VMUL.F64        D16, D17, D16
1EE98C:  VMOV.F64        D17, #7.0
1EE990:  VDIV.F64        D16, D16, D17
1EE994:  VMOV.F64        D17, #0.5
1EE998:  VADD.F64        D16, D16, D17
1EE99C:  VMOV            R0, R1, D16; x
1EE9A0:  BLX             floor
1EE9A4:  VLDR            D17, =2.14748365e9
1EE9A8:  VMOV            D16, R0, R1
1EE9AC:  MOVS            R0, #2
1EE9AE:  VCMPE.F64       D16, D17
1EE9B2:  VMRS            APSR_nzcv, FPSCR
1EE9B6:  BGT.W           loc_1EE7FC
1EE9BA:  VLDR            D17, =-2.14748365e9
1EE9BE:  LDRD.W          LR, R12, [SP,#0xA0+var_88]
1EE9C2:  VCMPE.F64       D16, D17
1EE9C6:  VMRS            APSR_nzcv, FPSCR
1EE9CA:  BLT.W           loc_1EE7FC
1EE9CE:  VCVT.S32.F64    S0, D16
1EE9D2:  LDR             R2, [SP,#0xA0+var_9C]
1EE9D4:  VMOV            R9, S0
1EE9D8:  LDR             R1, [SP,#0xA0+var_8C]
1EE9DA:  MOVS            R0, #0
1EE9DC:  STR.W           R8, [SP,#0xA0+var_A0]
1EE9E0:  SUB.W           R8, LR, R11
1EE9E4:  CMP             R1, #0
1EE9E6:  IT NE
1EE9E8:  CMPNE.W         R8, #0
1EE9EC:  BEQ             loc_1EEA52
1EE9EE:  VMOV            S0, R8
1EE9F2:  MOV             R11, R2
1EE9F4:  VCVT.F64.S32    D16, S0
1EE9F8:  LDR             R0, [SP,#0xA0+var_8C]
1EE9FA:  VMOV            S0, R0
1EE9FE:  VCVT.F64.S32    D17, S0
1EEA02:  VMUL.F64        D16, D17, D16
1EEA06:  VMOV.F64        D17, #7.0
1EEA0A:  VDIV.F64        D16, D16, D17
1EEA0E:  VMOV.F64        D17, #0.5
1EEA12:  VADD.F64        D16, D16, D17
1EEA16:  VMOV            R0, R1, D16; x
1EEA1A:  BLX             floor
1EEA1E:  VLDR            D17, =2.14748365e9
1EEA22:  VMOV            D16, R0, R1
1EEA26:  MOVS            R0, #2
1EEA28:  VCMPE.F64       D16, D17
1EEA2C:  VMRS            APSR_nzcv, FPSCR
1EEA30:  BGT.W           loc_1EE7FC
1EEA34:  VLDR            D17, =-2.14748365e9
1EEA38:  LDR.W           R12, [SP,#0xA0+var_84]
1EEA3C:  VCMPE.F64       D16, D17
1EEA40:  VMRS            APSR_nzcv, FPSCR
1EEA44:  BLT.W           loc_1EE7FC
1EEA48:  VCVT.S32.F64    S0, D16
1EEA4C:  MOV             R2, R11
1EEA4E:  VMOV            R0, S0
1EEA52:  SUBS.W          R0, R9, R0
1EEA56:  BEQ.W           loc_1EE7FA
1EEA5A:  LDR             R1, [SP,#0xA0+var_90]
1EEA5C:  MOVS            R3, #0
1EEA5E:  SUBS.W          R9, R2, R1
1EEA62:  MOV.W           R1, #0
1EEA66:  IT EQ
1EEA68:  MOVEQ           R1, #1
1EEA6A:  CMP.W           R12, #0
1EEA6E:  MOV.W           R2, #0
1EEA72:  IT EQ
1EEA74:  MOVEQ           R2, #1
1EEA76:  ORRS            R1, R2
1EEA78:  STR             R1, [SP,#0xA0+var_88]
1EEA7A:  BNE             loc_1EEADE
1EEA7C:  VMOV            S0, R9
1EEA80:  VCVT.F64.S32    D16, S0
1EEA84:  VMOV            S0, R12
1EEA88:  VCVT.F64.S32    D17, S0
1EEA8C:  VMUL.F64        D16, D17, D16
1EEA90:  VMOV            S0, R0
1EEA94:  VCVT.F64.S32    D17, S0
1EEA98:  VDIV.F64        D16, D16, D17
1EEA9C:  VMOV.F64        D17, #0.5
1EEAA0:  VADD.F64        D16, D16, D17
1EEAA4:  VMOV            R0, R1, D16; x
1EEAA8:  BLX             floor
1EEAAC:  VLDR            D17, =2.14748365e9
1EEAB0:  VMOV            D16, R0, R1
1EEAB4:  MOVS            R0, #1
1EEAB6:  VCMPE.F64       D16, D17
1EEABA:  VMRS            APSR_nzcv, FPSCR
1EEABE:  BGT.W           loc_1EE7FC
1EEAC2:  VLDR            D17, =-2.14748365e9
1EEAC6:  LDR.W           R12, [SP,#0xA0+var_84]
1EEACA:  VCMPE.F64       D16, D17
1EEACE:  VMRS            APSR_nzcv, FPSCR
1EEAD2:  BLT.W           loc_1EE7FC
1EEAD6:  VCVT.S32.F64    S0, D16
1EEADA:  VMOV            R3, S0
1EEADE:  CMP             R3, R12
1EEAE0:  BLE.W           loc_1EE7FA
1EEAE4:  LDR             R0, [SP,#0xA0+var_98]
1EEAE6:  MOV.W           R11, #0
1EEAEA:  STR             R3, [SP,#0xA0+var_8C]
1EEAEC:  CMP             R0, #0
1EEAEE:  IT NE
1EEAF0:  CMPNE.W         R8, #0
1EEAF4:  BEQ             loc_1EEB54
1EEAF6:  VMOV            S0, R8
1EEAFA:  VCVT.F64.S32    D16, S0
1EEAFE:  VMOV            S0, R0
1EEB02:  VCVT.F64.S32    D17, S0
1EEB06:  VMUL.F64        D16, D17, D16
1EEB0A:  VMOV.F64        D17, #7.0
1EEB0E:  VDIV.F64        D16, D16, D17
1EEB12:  VMOV.F64        D17, #0.5
1EEB16:  VADD.F64        D16, D16, D17
1EEB1A:  VMOV            R0, R1, D16; x
1EEB1E:  BLX             floor
1EEB22:  VLDR            D17, =2.14748365e9
1EEB26:  VMOV            D16, R0, R1
1EEB2A:  MOVS            R0, #2
1EEB2C:  VCMPE.F64       D16, D17
1EEB30:  VMRS            APSR_nzcv, FPSCR
1EEB34:  BGT.W           loc_1EE7FC
1EEB38:  VLDR            D17, =-2.14748365e9
1EEB3C:  LDR.W           R12, [SP,#0xA0+var_84]
1EEB40:  VCMPE.F64       D16, D17
1EEB44:  VMRS            APSR_nzcv, FPSCR
1EEB48:  BLT.W           loc_1EE7FC
1EEB4C:  VCVT.S32.F64    S0, D16
1EEB50:  VMOV            R11, S0
1EEB54:  LDR             R1, [SP,#0xA0+var_94]
1EEB56:  MOVS            R0, #0
1EEB58:  CMP             R1, #0
1EEB5A:  ITT NE
1EEB5C:  LDRNE           R1, [SP,#0xA0+var_A0]
1EEB5E:  CMPNE           R1, #0
1EEB60:  BEQ             loc_1EEBC2
1EEB62:  VMOV            S0, R1
1EEB66:  VCVT.F64.S32    D16, S0
1EEB6A:  LDR             R0, [SP,#0xA0+var_94]
1EEB6C:  VMOV            S0, R0
1EEB70:  VCVT.F64.S32    D17, S0
1EEB74:  VMUL.F64        D16, D17, D16
1EEB78:  VMOV.F64        D17, #7.0
1EEB7C:  VDIV.F64        D16, D16, D17
1EEB80:  VMOV.F64        D17, #0.5
1EEB84:  VADD.F64        D16, D16, D17
1EEB88:  VMOV            R0, R1, D16; x
1EEB8C:  BLX             floor
1EEB90:  VLDR            D17, =2.14748365e9
1EEB94:  VMOV            D16, R0, R1
1EEB98:  MOVS            R0, #2
1EEB9A:  VCMPE.F64       D16, D17
1EEB9E:  VMRS            APSR_nzcv, FPSCR
1EEBA2:  BGT.W           loc_1EE7FC
1EEBA6:  VLDR            D17, =-2.14748365e9
1EEBAA:  LDR.W           R12, [SP,#0xA0+var_84]
1EEBAE:  VCMPE.F64       D16, D17
1EEBB2:  VMRS            APSR_nzcv, FPSCR
1EEBB6:  BLT.W           loc_1EE7FC
1EEBBA:  VCVT.S32.F64    S0, D16
1EEBBE:  VMOV            R0, S0
1EEBC2:  SUBS.W          R0, R11, R0
1EEBC6:  BEQ.W           loc_1EE7FA
1EEBCA:  LDR             R1, [SP,#0xA0+var_88]
1EEBCC:  CBZ             R1, loc_1EEBF8
1EEBCE:  MOV.W           R11, #0
1EEBD2:  CMP             R11, R12
1EEBD4:  BLE.W           loc_1EE7FA
1EEBD8:  B               loc_1EEC60
1EEBDA:  ALIGN 0x10
1EEBE0:  DCFD 2.14748365e9
1EEBE8:  DCFD -2.14748365e9
1EEBF0:  DCFD 1.0e10
1EEBF8:  VMOV            S0, R9
1EEBFC:  VCVT.F64.S32    D16, S0
1EEC00:  VMOV            S0, R12
1EEC04:  VCVT.F64.S32    D17, S0
1EEC08:  VMUL.F64        D16, D17, D16
1EEC0C:  VMOV            S0, R0
1EEC10:  VCVT.F64.S32    D17, S0
1EEC14:  VDIV.F64        D16, D16, D17
1EEC18:  VMOV.F64        D17, #0.5
1EEC1C:  VADD.F64        D16, D16, D17
1EEC20:  VMOV            R0, R1, D16; x
1EEC24:  BLX             floor
1EEC28:  VLDR            D17, =2.14748365e9
1EEC2C:  VMOV            D16, R0, R1
1EEC30:  MOVS            R0, #1
1EEC32:  VCMPE.F64       D16, D17
1EEC36:  VMRS            APSR_nzcv, FPSCR
1EEC3A:  BGT.W           loc_1EE7FC
1EEC3E:  VLDR            D17, =-2.14748365e9
1EEC42:  LDR.W           R12, [SP,#0xA0+var_84]
1EEC46:  VCMPE.F64       D16, D17
1EEC4A:  VMRS            APSR_nzcv, FPSCR
1EEC4E:  BLT.W           loc_1EE7FC
1EEC52:  VCVT.S32.F64    S0, D16
1EEC56:  VMOV            R11, S0
1EEC5A:  CMP             R11, R12
1EEC5C:  BLE.W           loc_1EE7FA
1EEC60:  LDR             R0, [SP,#0xA0+var_84]
1EEC62:  VMOV.F64        D8, #0.5
1EEC66:  VMOV            S0, R0
1EEC6A:  VLDR            D9, =1.0e10
1EEC6E:  VCVT.F64.S32    D16, S0
1EEC72:  VDIV.F64        D16, D9, D16
1EEC76:  VADD.F64        D16, D16, D8
1EEC7A:  VMOV            R0, R1, D16; x
1EEC7E:  BLX             floor
1EEC82:  LDR             R2, [SP,#0xA0+var_8C]
1EEC84:  VMOV            D13, R0, R1
1EEC88:  VMOV            S0, R2
1EEC8C:  VCVT.F64.S32    D12, S0
1EEC90:  VDIV.F64        D16, D9, D12
1EEC94:  VMOV            S0, R11
1EEC98:  VADD.F64        D16, D16, D8
1EEC9C:  VCVT.F64.S32    D11, S0
1EECA0:  VDIV.F64        D17, D9, D11
1EECA4:  VMOV            R2, R3, D16
1EECA8:  VADD.F64        D16, D17, D8
1EECAC:  VMOV            R9, R8, D16
1EECB0:  MOV             R0, R2; x
1EECB2:  MOV             R1, R3; x
1EECB4:  BLX             floor
1EECB8:  VMOV            D14, R0, R1
1EECBC:  MOV             R0, R9; x
1EECBE:  MOV             R1, R8; x
1EECC0:  VCVT.S32.F64    S30, D13
1EECC4:  VCVT.S32.F64    S31, D14
1EECC8:  BLX             floor
1EECCC:  VLDR            D9, =-2.14748365e9
1EECD0:  VMOV            D16, R0, R1
1EECD4:  VLDR            D10, =2.14748365e9
1EECD8:  MOVS            R0, #0
1EECDA:  VCMPE.F64       D13, D9
1EECDE:  VMRS            APSR_nzcv, FPSCR
1EECE2:  VMOV            R1, S30
1EECE6:  VCMPE.F64       D13, D10
1EECEA:  VCVT.S32.F64    S0, D16
1EECEE:  IT LT
1EECF0:  MOVLT           R1, R0
1EECF2:  VMRS            APSR_nzcv, FPSCR
1EECF6:  VCMPE.F64       D14, D9
1EECFA:  IT GT
1EECFC:  MOVGT           R1, R0
1EECFE:  VMRS            APSR_nzcv, FPSCR
1EED02:  VMOV            R0, S31
1EED06:  MOV             R2, R1
1EED08:  VCMPE.F64       D14, D10
1EED0C:  IT GE
1EED0E:  SUBGE           R2, R2, R0
1EED10:  VMRS            APSR_nzcv, FPSCR
1EED14:  VCMPE.F64       D16, D9
1EED18:  VMOV            R0, S0
1EED1C:  IT GT
1EED1E:  MOVGT           R2, R1
1EED20:  VMRS            APSR_nzcv, FPSCR
1EED24:  VCMPE.F64       D16, D10
1EED28:  MOV             R8, R2
1EED2A:  IT GE
1EED2C:  SUBGE.W         R8, R8, R0
1EED30:  VMRS            APSR_nzcv, FPSCR
1EED34:  IT GT
1EED36:  MOVGT           R8, R2
1EED38:  CMP.W           R8, #1
1EED3C:  BLT.W           loc_1EE7FA
1EED40:  LDR             R0, [SP,#0xA0+var_8C]
1EED42:  CMP             R0, #0
1EED44:  BEQ.W           loc_1EE7FA
1EED48:  CBZ             R5, loc_1EED92
1EED4A:  VMOV            S0, R5
1EED4E:  VLDR            D17, =100000.0
1EED52:  VCVT.F64.S32    D16, S0
1EED56:  VMUL.F64        D16, D16, D17
1EED5A:  VDIV.F64        D16, D16, D12
1EED5E:  VADD.F64        D16, D16, D8
1EED62:  VMOV            R0, R1, D16; x
1EED66:  BLX             floor
1EED6A:  VMOV            D16, R0, R1
1EED6E:  MOVS            R0, #1
1EED70:  VCMPE.F64       D16, D10
1EED74:  VMRS            APSR_nzcv, FPSCR
1EED78:  BGT.W           loc_1EE7FC
1EED7C:  VCMPE.F64       D16, D9
1EED80:  VMRS            APSR_nzcv, FPSCR
1EED84:  BLT.W           loc_1EE7FC
1EED88:  VCVT.S32.F64    S0, D16
1EED8C:  VMOV            R0, S0
1EED90:  B               loc_1EED94
1EED92:  MOVS            R0, #0
1EED94:  STR.W           R0, [R10]
1EED98:  LDR             R0, [R4,#4]
1EED9A:  CBZ             R0, loc_1EEDE4
1EED9C:  VMOV            S0, R0
1EEDA0:  VLDR            D17, =100000.0
1EEDA4:  VCVT.F64.S32    D16, S0
1EEDA8:  VMUL.F64        D16, D16, D17
1EEDAC:  VDIV.F64        D16, D16, D12
1EEDB0:  VADD.F64        D16, D16, D8
1EEDB4:  VMOV            R0, R1, D16; x
1EEDB8:  BLX             floor
1EEDBC:  VMOV            D16, R0, R1
1EEDC0:  MOVS            R0, #1
1EEDC2:  VCMPE.F64       D16, D10
1EEDC6:  VMRS            APSR_nzcv, FPSCR
1EEDCA:  BGT.W           loc_1EE7FC
1EEDCE:  VCMPE.F64       D16, D9
1EEDD2:  VMRS            APSR_nzcv, FPSCR
1EEDD6:  BLT.W           loc_1EE7FC
1EEDDA:  VCVT.S32.F64    S0, D16
1EEDDE:  VMOV            R0, S0
1EEDE2:  B               loc_1EEDE6
1EEDE4:  MOVS            R0, #0
1EEDE6:  STR.W           R0, [R10,#4]
1EEDEA:  LDRD.W          R0, R1, [R4]
1EEDEE:  SUBS            R0, R6, R0
1EEDF0:  SUBS            R0, R0, R1
1EEDF2:  BEQ             loc_1EEE3C
1EEDF4:  VMOV            S0, R0
1EEDF8:  VLDR            D17, =100000.0
1EEDFC:  VCVT.F64.S32    D16, S0
1EEE00:  VMUL.F64        D16, D16, D17
1EEE04:  VDIV.F64        D16, D16, D12
1EEE08:  VADD.F64        D16, D16, D8
1EEE0C:  VMOV            R0, R1, D16; x
1EEE10:  BLX             floor
1EEE14:  VMOV            D16, R0, R1
1EEE18:  MOVS            R0, #1
1EEE1A:  VCMPE.F64       D16, D10
1EEE1E:  VMRS            APSR_nzcv, FPSCR
1EEE22:  BGT.W           loc_1EE7FC
1EEE26:  VCMPE.F64       D16, D9
1EEE2A:  VMRS            APSR_nzcv, FPSCR
1EEE2E:  BLT.W           loc_1EE7FC
1EEE32:  VCVT.S32.F64    S0, D16
1EEE36:  VMOV            R0, S0
1EEE3A:  B               loc_1EEE3E
1EEE3C:  MOVS            R0, #0
1EEE3E:  CMP.W           R11, #0
1EEE42:  STR.W           R0, [R10,#8]
1EEE46:  BEQ.W           loc_1EE7FA
1EEE4A:  LDR             R0, [R4,#8]
1EEE4C:  CBZ             R0, loc_1EEE96
1EEE4E:  VMOV            S0, R0
1EEE52:  VLDR            D17, =100000.0
1EEE56:  VCVT.F64.S32    D16, S0
1EEE5A:  VMUL.F64        D16, D16, D17
1EEE5E:  VDIV.F64        D16, D16, D11
1EEE62:  VADD.F64        D16, D16, D8
1EEE66:  VMOV            R0, R1, D16; x
1EEE6A:  BLX             floor
1EEE6E:  VMOV            D16, R0, R1
1EEE72:  MOVS            R0, #1
1EEE74:  VCMPE.F64       D16, D10
1EEE78:  VMRS            APSR_nzcv, FPSCR
1EEE7C:  BGT.W           loc_1EE7FC
1EEE80:  VCMPE.F64       D16, D9
1EEE84:  VMRS            APSR_nzcv, FPSCR
1EEE88:  BLT.W           loc_1EE7FC
1EEE8C:  VCVT.S32.F64    S0, D16
1EEE90:  VMOV            R0, S0
1EEE94:  B               loc_1EEE98
1EEE96:  MOVS            R0, #0
1EEE98:  STR.W           R0, [R10,#0xC]
1EEE9C:  LDR             R0, [R4,#0xC]
1EEE9E:  CBZ             R0, loc_1EEEE8
1EEEA0:  VMOV            S0, R0
1EEEA4:  VLDR            D17, =100000.0
1EEEA8:  VCVT.F64.S32    D16, S0
1EEEAC:  VMUL.F64        D16, D16, D17
1EEEB0:  VDIV.F64        D16, D16, D11
1EEEB4:  VADD.F64        D16, D16, D8
1EEEB8:  VMOV            R0, R1, D16; x
1EEEBC:  BLX             floor
1EEEC0:  VMOV            D16, R0, R1
1EEEC4:  MOVS            R0, #1
1EEEC6:  VCMPE.F64       D16, D10
1EEECA:  VMRS            APSR_nzcv, FPSCR
1EEECE:  BGT.W           loc_1EE7FC
1EEED2:  VCMPE.F64       D16, D9
1EEED6:  VMRS            APSR_nzcv, FPSCR
1EEEDA:  BLT.W           loc_1EE7FC
1EEEDE:  VCVT.S32.F64    S0, D16
1EEEE2:  VMOV            R0, S0
1EEEE6:  B               loc_1EEEEA
1EEEE8:  MOVS            R0, #0
1EEEEA:  STR.W           R0, [R10,#0x10]
1EEEEE:  LDRD.W          R0, R1, [R4,#8]
1EEEF2:  SUBS            R0, R6, R0
1EEEF4:  SUBS            R0, R0, R1
1EEEF6:  BEQ             loc_1EEF40
1EEEF8:  VMOV            S0, R0
1EEEFC:  VLDR            D17, =100000.0
1EEF00:  VCVT.F64.S32    D16, S0
1EEF04:  VMUL.F64        D16, D16, D17
1EEF08:  VDIV.F64        D16, D16, D11
1EEF0C:  VADD.F64        D16, D16, D8
1EEF10:  VMOV            R0, R1, D16; x
1EEF14:  BLX             floor
1EEF18:  VMOV            D16, R0, R1
1EEF1C:  MOVS            R0, #1
1EEF1E:  VCMPE.F64       D16, D10
1EEF22:  VMRS            APSR_nzcv, FPSCR
1EEF26:  BGT.W           loc_1EE7FC
1EEF2A:  VCMPE.F64       D16, D9
1EEF2E:  VMRS            APSR_nzcv, FPSCR
1EEF32:  BLT.W           loc_1EE7FC
1EEF36:  VCVT.S32.F64    S0, D16
1EEF3A:  VMOV            R0, S0
1EEF3E:  B               loc_1EEF42
1EEF40:  MOVS            R0, #0
1EEF42:  STR.W           R0, [R10,#0x14]
1EEF46:  LDR             R0, [R4,#0x10]
1EEF48:  CBZ             R0, loc_1EEF9A
1EEF4A:  VMOV            S0, R0
1EEF4E:  VCVT.F64.S32    D16, S0
1EEF52:  VMOV            S0, R8
1EEF56:  VCVT.F64.S32    D17, S0
1EEF5A:  VMUL.F64        D16, D17, D16
1EEF5E:  VLDR            D17, =100000.0
1EEF62:  VDIV.F64        D16, D16, D17
1EEF66:  VADD.F64        D16, D16, D8
1EEF6A:  VMOV            R0, R1, D16; x
1EEF6E:  BLX             floor
1EEF72:  VMOV            D16, R0, R1
1EEF76:  MOVS            R0, #1
1EEF78:  VCMPE.F64       D16, D10
1EEF7C:  VMRS            APSR_nzcv, FPSCR
1EEF80:  BGT.W           loc_1EE7FC
1EEF84:  VCMPE.F64       D16, D9
1EEF88:  VMRS            APSR_nzcv, FPSCR
1EEF8C:  BLT.W           loc_1EE7FC
1EEF90:  VCVT.S32.F64    S0, D16
1EEF94:  VMOV            R0, S0
1EEF98:  B               loc_1EEF9C
1EEF9A:  MOVS            R0, #0
1EEF9C:  STR.W           R0, [R10,#0x18]
1EEFA0:  LDR             R0, [R4,#0x14]
1EEFA2:  CBZ             R0, loc_1EEFF4
1EEFA4:  VMOV            S0, R0
1EEFA8:  VCVT.F64.S32    D16, S0
1EEFAC:  VMOV            S0, R8
1EEFB0:  VCVT.F64.S32    D17, S0
1EEFB4:  VMUL.F64        D16, D17, D16
1EEFB8:  VLDR            D17, =100000.0
1EEFBC:  VDIV.F64        D16, D16, D17
1EEFC0:  VADD.F64        D16, D16, D8
1EEFC4:  VMOV            R0, R1, D16; x
1EEFC8:  BLX             floor
1EEFCC:  VMOV            D16, R0, R1
1EEFD0:  MOVS            R0, #1
1EEFD2:  VCMPE.F64       D16, D10
1EEFD6:  VMRS            APSR_nzcv, FPSCR
1EEFDA:  BGT.W           loc_1EE7FC
1EEFDE:  VCMPE.F64       D16, D9
1EEFE2:  VMRS            APSR_nzcv, FPSCR
1EEFE6:  BLT.W           loc_1EE7FC
1EEFEA:  VCVT.S32.F64    S0, D16
1EEFEE:  VMOV            R0, S0
1EEFF2:  B               loc_1EEFF6
1EEFF4:  MOVS            R0, #0
1EEFF6:  STR.W           R0, [R10,#0x1C]
1EEFFA:  LDRD.W          R0, R1, [R4,#0x10]
1EEFFE:  SUBS            R0, R6, R0
1EF000:  SUBS            R0, R0, R1
1EF002:  BEQ             loc_1EF054
1EF004:  VMOV            S0, R0
1EF008:  VCVT.F64.S32    D16, S0
1EF00C:  VMOV            S0, R8
1EF010:  VCVT.F64.S32    D17, S0
1EF014:  VMUL.F64        D16, D17, D16
1EF018:  VLDR            D17, =100000.0
1EF01C:  VDIV.F64        D16, D16, D17
1EF020:  VADD.F64        D16, D16, D8
1EF024:  VMOV            R0, R1, D16; x
1EF028:  BLX             floor
1EF02C:  VMOV            D16, R0, R1
1EF030:  MOVS            R0, #1
1EF032:  VCMPE.F64       D16, D10
1EF036:  VMRS            APSR_nzcv, FPSCR
1EF03A:  BGT.W           loc_1EE7FC
1EF03E:  VCMPE.F64       D16, D9
1EF042:  VMRS            APSR_nzcv, FPSCR
1EF046:  BLT.W           loc_1EE7FC
1EF04A:  VCVT.S32.F64    S0, D16
1EF04E:  VMOV            R0, S0
1EF052:  B               loc_1EF056
1EF054:  MOVS            R0, #0
1EF056:  STR.W           R0, [R10,#0x20]
1EF05A:  ADD             R0, SP, #0xA0+var_80
1EF05C:  MOV             R1, R10
1EF05E:  BL              sub_1F2040
1EF062:  CMP             R0, #0
1EF064:  BNE.W           loc_1EE7FC
1EF068:  ADD             R1, SP, #0xA0+var_80
1EF06A:  MOV             R0, R4
1EF06C:  MOVS            R2, #5
1EF06E:  BL              sub_1EF9F4
1EF072:  MOV             R1, R0
1EF074:  MOVS            R0, #0
1EF076:  CMP             R1, #0
1EF078:  IT EQ
1EF07A:  MOVEQ           R0, #1
1EF07C:  B.W             loc_1EE7FC
