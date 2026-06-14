; =========================================================
; Game Engine Function: _ZN6CTrain20IsNextStationAllowedEPS_
; Address            : 0x580BFC - 0x580D34
; =========================================================

580BFC:  MOV             R1, R0; CTrain *
580BFE:  LDR.W           R0, [R1,#0x5E4]; this
580C02:  CMP             R0, #0
580C04:  BNE             _ZN6CTrain20IsNextStationAllowedEPS_; CTrain::IsNextStationAllowed(CTrain*)
580C06:  LDR             R2, =(StationDist_ptr - 0x580C14)
580C08:  LDRH.W          R0, [R1,#0x5CC]
580C0C:  ADDW            R1, R1, #0x5BC
580C10:  ADD             R2, PC; StationDist_ptr
580C12:  VLDR            S0, [R1]
580C16:  AND.W           R0, R0, #0x40 ; '@'
580C1A:  LDR             R2, [R2]; StationDist
580C1C:  VLDR            S2, [R2]
580C20:  VCMPE.F32       S2, S0
580C24:  VMRS            APSR_nzcv, FPSCR
580C28:  BLE             loc_580C2E
580C2A:  MOVS            R1, #0
580C2C:  B               loc_580CA6
580C2E:  LDR             R1, =(StationDist_ptr - 0x580C34)
580C30:  ADD             R1, PC; StationDist_ptr
580C32:  LDR             R1, [R1]; StationDist
580C34:  VLDR            S2, [R1,#4]
580C38:  VCMPE.F32       S2, S0
580C3C:  VMRS            APSR_nzcv, FPSCR
580C40:  BLE             loc_580C46
580C42:  MOVS            R1, #1
580C44:  B               loc_580CA6
580C46:  LDR             R1, =(StationDist_ptr - 0x580C4C)
580C48:  ADD             R1, PC; StationDist_ptr
580C4A:  LDR             R1, [R1]; StationDist
580C4C:  VLDR            S2, [R1,#8]
580C50:  VCMPE.F32       S2, S0
580C54:  VMRS            APSR_nzcv, FPSCR
580C58:  BLE             loc_580C5E
580C5A:  MOVS            R1, #2
580C5C:  B               loc_580CA6
580C5E:  LDR             R1, =(StationDist_ptr - 0x580C64)
580C60:  ADD             R1, PC; StationDist_ptr
580C62:  LDR             R1, [R1]; StationDist
580C64:  VLDR            S2, [R1,#0xC]
580C68:  VCMPE.F32       S2, S0
580C6C:  VMRS            APSR_nzcv, FPSCR
580C70:  BLE             loc_580C76
580C72:  MOVS            R1, #3
580C74:  B               loc_580CA6
580C76:  LDR             R1, =(StationDist_ptr - 0x580C7C)
580C78:  ADD             R1, PC; StationDist_ptr
580C7A:  LDR             R1, [R1]; StationDist
580C7C:  VLDR            S2, [R1,#0x10]
580C80:  VCMPE.F32       S2, S0
580C84:  VMRS            APSR_nzcv, FPSCR
580C88:  BLE             loc_580C8E
580C8A:  MOVS            R1, #4
580C8C:  B               loc_580CA6
580C8E:  LDR             R1, =(StationDist_ptr - 0x580C94)
580C90:  ADD             R1, PC; StationDist_ptr
580C92:  LDR             R1, [R1]; StationDist
580C94:  VLDR            S2, [R1,#0x14]
580C98:  VCMPE.F32       S2, S0
580C9C:  VMRS            APSR_nzcv, FPSCR
580CA0:  ITE LE
580CA2:  MOVLE           R1, #6
580CA4:  MOVGT           R1, #5
580CA6:  CMP             R1, #5
580CA8:  IT HI
580CAA:  MOVHI           R1, #0
580CAC:  CBNZ            R0, loc_580CBA
580CAE:  MOV.W           R2, #0xFFFFFFFF
580CB2:  CMP             R1, #0
580CB4:  IT EQ
580CB6:  MOVEQ           R2, #5
580CB8:  ADD             R1, R2
580CBA:  LDR             R2, =(StationDist_ptr - 0x580CC0)
580CBC:  ADD             R2, PC; StationDist_ptr
580CBE:  LDR             R2, [R2]; StationDist
580CC0:  ADD.W           R2, R2, R1,LSL#2
580CC4:  VLDR            S2, [R2]
580CC8:  VSUB.F32        S0, S0, S2
580CCC:  VLDR            S2, =100.0
580CD0:  VABS.F32        S0, S0
580CD4:  VCMPE.F32       S0, S2
580CD8:  VMRS            APSR_nzcv, FPSCR
580CDC:  BGE             loc_580CF2
580CDE:  UXTH            R0, R0
580CE0:  ADD.W           R0, R1, R0,LSR#5
580CE4:  SUBS            R1, R0, #1
580CE6:  CMP             R1, #0
580CE8:  IT LT
580CEA:  ADDLT           R1, R0, #5
580CEC:  CMP             R1, #5
580CEE:  IT GT
580CF0:  MOVGT           R1, #0
580CF2:  PUSH            {R4,R6,R7,LR}
580CF4:  ADD             R7, SP, #0x10+var_8
580CF6:  LDR             R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x580D00)
580CF8:  ADD.W           R1, R1, R1,LSL#1; CVector *
580CFC:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
580CFE:  LDR             R0, [R0]; CTrain::aStationCoors ...
580D00:  ADD.W           R0, R0, R1,LSL#2; this
580D04:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
580D08:  MOV             R4, R0
580D0A:  MOVS            R0, #(dword_B4+1); this
580D0C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
580D10:  VMOV.F32        S0, #1.0
580D14:  VMOV            S2, R0
580D18:  MOVS            R0, #0
580D1A:  VMOV            S4, R4
580D1E:  VCVT.F32.S32    S4, S4
580D22:  VADD.F32        S0, S2, S0
580D26:  VCMPE.F32       S0, S4
580D2A:  VMRS            APSR_nzcv, FPSCR
580D2E:  IT GE
580D30:  MOVGE           R0, #1
580D32:  POP             {R4,R6,R7,PC}
