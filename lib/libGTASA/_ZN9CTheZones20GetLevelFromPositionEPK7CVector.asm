; =========================================================
; Game Engine Function: _ZN9CTheZones20GetLevelFromPositionEPK7CVector
; Address            : 0x42D194 - 0x42D262
; =========================================================

42D194:  PUSH            {R7,LR}
42D196:  MOV             R7, SP
42D198:  LDR             R1, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x42D19E)
42D19A:  ADD             R1, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
42D19C:  LDR             R1, [R1]; CTheZones::TotalNumberOfMapZones ...
42D19E:  LDRH.W          LR, [R1]; CTheZones::TotalNumberOfMapZones
42D1A2:  CMP.W           LR, #2
42D1A6:  BCC             loc_42D258
42D1A8:  LDR             R1, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42D1B2)
42D1AA:  MOVS            R3, #1
42D1AC:  LDR             R2, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42D1B8)
42D1AE:  ADD             R1, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42D1B0:  VLDR            S0, [R0]
42D1B4:  ADD             R2, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42D1B6:  LDR             R1, [R1]; CTheZones::MapZoneArray ...
42D1B8:  LDR.W           R12, [R2]; CTheZones::MapZoneArray ...
42D1BC:  ADDS            R1, #0x20 ; ' '
42D1BE:  LDRSH.W         R2, [R1,#0x10]
42D1C2:  VMOV            S2, R2
42D1C6:  VCVT.F32.S32    S2, S2
42D1CA:  VCMPE.F32       S0, S2
42D1CE:  VMRS            APSR_nzcv, FPSCR
42D1D2:  BLT             loc_42D24A
42D1D4:  LDRSH.W         R2, [R1,#0x16]
42D1D8:  VMOV            S2, R2
42D1DC:  VCVT.F32.S32    S2, S2
42D1E0:  VCMPE.F32       S0, S2
42D1E4:  VMRS            APSR_nzcv, FPSCR
42D1E8:  BGT             loc_42D24A
42D1EA:  LDRSH.W         R2, [R1,#0x12]
42D1EE:  VMOV            S2, R2
42D1F2:  VCVT.F32.S32    S4, S2
42D1F6:  VLDR            S2, [R0,#4]
42D1FA:  VCMPE.F32       S2, S4
42D1FE:  VMRS            APSR_nzcv, FPSCR
42D202:  BLT             loc_42D24A
42D204:  LDRSH.W         R2, [R1,#0x18]
42D208:  VMOV            S4, R2
42D20C:  VCVT.F32.S32    S4, S4
42D210:  VCMPE.F32       S2, S4
42D214:  VMRS            APSR_nzcv, FPSCR
42D218:  BGT             loc_42D24A
42D21A:  LDRSH.W         R2, [R1,#0x14]
42D21E:  VMOV            S2, R2
42D222:  VCVT.F32.S32    S4, S2
42D226:  VLDR            S2, [R0,#8]
42D22A:  VCMPE.F32       S2, S4
42D22E:  VMRS            APSR_nzcv, FPSCR
42D232:  BLT             loc_42D24A
42D234:  LDRSH.W         R2, [R1,#0x1A]
42D238:  VMOV            S4, R2
42D23C:  VCVT.F32.S32    S4, S4
42D240:  VCMPE.F32       S2, S4
42D244:  VMRS            APSR_nzcv, FPSCR
42D248:  BLE             loc_42D254
42D24A:  ADDS            R3, #1
42D24C:  ADDS            R1, #0x20 ; ' '
42D24E:  CMP             R3, LR
42D250:  BCC             loc_42D1BE
42D252:  MOV             R1, R12
42D254:  LDRB            R0, [R1,#0x1F]
42D256:  POP             {R7,PC}
42D258:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42D25E)
42D25A:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42D25C:  LDR             R1, [R0]; CTheZones::MapZoneArray ...
42D25E:  LDRB            R0, [R1,#(byte_98EC1F - 0x98EC00)]
42D260:  POP             {R7,PC}
