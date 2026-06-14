; =========================================================
; Game Engine Function: _ZN9CTheZones35DoesPointLieWithinZoneWithGivenNameEPK7CVectory9eZoneType
; Address            : 0x42D9C4 - 0x42DB68
; =========================================================

42D9C4:  PUSH            {R4,R5,R7,LR}
42D9C6:  ADD             R7, SP, #8
42D9C8:  LDR             R1, [R7,#arg_0]
42D9CA:  CMP             R1, #0
42D9CC:  BEQ             loc_42DA9A
42D9CE:  CMP             R1, #2
42D9D0:  BNE.W           loc_42DB5C
42D9D4:  LDR             R1, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42D9DA)
42D9D6:  ADD             R1, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42D9D8:  LDR             R1, [R1]; CTheZones::TotalNumberOfNavigationZones ...
42D9DA:  LDRH.W          R12, [R1]; CTheZones::TotalNumberOfNavigationZones
42D9DE:  CMP.W           R12, #0
42D9E2:  BEQ.W           loc_42DB5C
42D9E6:  LDR             R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D9F0)
42D9E8:  MOV.W           LR, #0
42D9EC:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D9EE:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
42D9F0:  ADDS            R1, #0x10
42D9F2:  LDRD.W          R4, R5, [R1,#-0x10]; CTheZones::NavigationZoneArray
42D9F6:  EORS            R5, R3
42D9F8:  EORS            R4, R2
42D9FA:  ORRS            R4, R5
42D9FC:  BNE             loc_42DA8E
42D9FE:  LDRSH.W         R4, [R1]
42DA02:  VMOV            S0, R4
42DA06:  VCVT.F32.S32    S2, S0
42DA0A:  VLDR            S0, [R0]
42DA0E:  VCMPE.F32       S0, S2
42DA12:  VMRS            APSR_nzcv, FPSCR
42DA16:  BLT             loc_42DA8E
42DA18:  LDRSH.W         R4, [R1,#6]
42DA1C:  VMOV            S2, R4
42DA20:  VCVT.F32.S32    S2, S2
42DA24:  VCMPE.F32       S0, S2
42DA28:  VMRS            APSR_nzcv, FPSCR
42DA2C:  BGT             loc_42DA8E
42DA2E:  LDRSH.W         R4, [R1,#2]
42DA32:  VMOV            S0, R4
42DA36:  VCVT.F32.S32    S2, S0
42DA3A:  VLDR            S0, [R0,#4]
42DA3E:  VCMPE.F32       S0, S2
42DA42:  VMRS            APSR_nzcv, FPSCR
42DA46:  BLT             loc_42DA8E
42DA48:  LDRSH.W         R4, [R1,#8]
42DA4C:  VMOV            S2, R4
42DA50:  VCVT.F32.S32    S2, S2
42DA54:  VCMPE.F32       S0, S2
42DA58:  VMRS            APSR_nzcv, FPSCR
42DA5C:  BGT             loc_42DA8E
42DA5E:  LDRSH.W         R4, [R1,#4]
42DA62:  VMOV            S0, R4
42DA66:  VCVT.F32.S32    S2, S0
42DA6A:  VLDR            S0, [R0,#8]
42DA6E:  VCMPE.F32       S0, S2
42DA72:  VMRS            APSR_nzcv, FPSCR
42DA76:  BLT             loc_42DA8E
42DA78:  LDRSH.W         R4, [R1,#0xA]
42DA7C:  VMOV            S2, R4
42DA80:  VCVT.F32.S32    S2, S2
42DA84:  VCMPE.F32       S0, S2
42DA88:  VMRS            APSR_nzcv, FPSCR
42DA8C:  BLE             loc_42DB60
42DA8E:  ADD.W           LR, LR, #1
42DA92:  ADDS            R1, #0x20 ; ' '
42DA94:  CMP             LR, R12
42DA96:  BCC             loc_42D9F2
42DA98:  B               loc_42DB5C
42DA9A:  LDR             R1, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42DAA0)
42DA9C:  ADD             R1, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42DA9E:  LDR             R1, [R1]; CTheZones::TotalNumberOfNavigationZones ...
42DAA0:  LDRH.W          R12, [R1]; CTheZones::TotalNumberOfNavigationZones
42DAA4:  CMP.W           R12, #0
42DAA8:  BEQ             loc_42DB5C
42DAAA:  LDR             R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DAB4)
42DAAC:  MOV.W           LR, #0
42DAB0:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DAB2:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
42DAB4:  ADDS            R1, #0x10
42DAB6:  LDRD.W          R4, R5, [R1,#-8]
42DABA:  EORS            R5, R3
42DABC:  EORS            R4, R2
42DABE:  ORRS            R4, R5
42DAC0:  BNE             loc_42DB52
42DAC2:  LDRSH.W         R4, [R1]
42DAC6:  VMOV            S0, R4
42DACA:  VCVT.F32.S32    S2, S0
42DACE:  VLDR            S0, [R0]
42DAD2:  VCMPE.F32       S0, S2
42DAD6:  VMRS            APSR_nzcv, FPSCR
42DADA:  BLT             loc_42DB52
42DADC:  LDRSH.W         R4, [R1,#6]
42DAE0:  VMOV            S2, R4
42DAE4:  VCVT.F32.S32    S2, S2
42DAE8:  VCMPE.F32       S0, S2
42DAEC:  VMRS            APSR_nzcv, FPSCR
42DAF0:  BGT             loc_42DB52
42DAF2:  LDRSH.W         R4, [R1,#2]
42DAF6:  VMOV            S0, R4
42DAFA:  VCVT.F32.S32    S2, S0
42DAFE:  VLDR            S0, [R0,#4]
42DB02:  VCMPE.F32       S0, S2
42DB06:  VMRS            APSR_nzcv, FPSCR
42DB0A:  BLT             loc_42DB52
42DB0C:  LDRSH.W         R4, [R1,#8]
42DB10:  VMOV            S2, R4
42DB14:  VCVT.F32.S32    S2, S2
42DB18:  VCMPE.F32       S0, S2
42DB1C:  VMRS            APSR_nzcv, FPSCR
42DB20:  BGT             loc_42DB52
42DB22:  LDRSH.W         R4, [R1,#4]
42DB26:  VMOV            S0, R4
42DB2A:  VCVT.F32.S32    S2, S0
42DB2E:  VLDR            S0, [R0,#8]
42DB32:  VCMPE.F32       S0, S2
42DB36:  VMRS            APSR_nzcv, FPSCR
42DB3A:  BLT             loc_42DB52
42DB3C:  LDRSH.W         R4, [R1,#0xA]
42DB40:  VMOV            S2, R4
42DB44:  VCVT.F32.S32    S2, S2
42DB48:  VCMPE.F32       S0, S2
42DB4C:  VMRS            APSR_nzcv, FPSCR
42DB50:  BLE             loc_42DB64
42DB52:  ADD.W           LR, LR, #1
42DB56:  ADDS            R1, #0x20 ; ' '
42DB58:  CMP             LR, R12
42DB5A:  BCC             loc_42DAB6
42DB5C:  MOVS            R0, #0
42DB5E:  POP             {R4,R5,R7,PC}
42DB60:  MOVS            R0, #1
42DB62:  POP             {R4,R5,R7,PC}
42DB64:  MOVS            R0, #1
42DB66:  POP             {R4,R5,R7,PC}
