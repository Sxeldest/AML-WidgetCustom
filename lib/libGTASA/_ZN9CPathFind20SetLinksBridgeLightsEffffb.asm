; =========================================================
; Game Engine Function: _ZN9CPathFind20SetLinksBridgeLightsEffffb
; Address            : 0x318D04 - 0x318DC4
; =========================================================

318D04:  PUSH            {R4-R7,LR}
318D06:  ADD             R7, SP, #0xC
318D08:  PUSH.W          {R8,R9,R11}
318D0C:  VMOV.F32        S8, #0.125
318D10:  LDR             R6, [R7,#arg_4]
318D12:  VLDR            S0, [R7,#arg_0]
318D16:  VMOV            S2, R3
318D1A:  VMOV            S4, R2
318D1E:  MOV.W           R9, #0
318D22:  VMOV            S6, R1
318D26:  MOV.W           LR, R6,LSL#10
318D2A:  MOVW            R12, #0x1344
318D2E:  ADD.W           R3, R0, R9,LSL#2
318D32:  LDR.W           R1, [R3,#0x804]
318D36:  CBZ             R1, loc_318DB4
318D38:  LDR.W           R1, [R3,R12]
318D3C:  CMP             R1, #1
318D3E:  BLT             loc_318DB4
318D40:  ADD.W           R8, R3, R12
318D44:  ADDW            R4, R3, #0x924
318D48:  MOVS            R5, #0
318D4A:  MOVS            R6, #0
318D4C:  LDR             R3, [R4]
318D4E:  LDRSH           R2, [R3,R5]
318D50:  VMOV            S10, R2
318D54:  VCVT.F32.S32    S10, S10
318D58:  VMUL.F32        S10, S10, S8
318D5C:  VCMPE.F32       S10, S6
318D60:  VMRS            APSR_nzcv, FPSCR
318D64:  BLE             loc_318DAC
318D66:  VCMPE.F32       S10, S4
318D6A:  VMRS            APSR_nzcv, FPSCR
318D6E:  BGE             loc_318DAC
318D70:  ADD             R3, R5
318D72:  LDRSH.W         R2, [R3,#2]
318D76:  VMOV            S10, R2
318D7A:  VCVT.F32.S32    S10, S10
318D7E:  VMUL.F32        S10, S10, S8
318D82:  VCMPE.F32       S10, S2
318D86:  VMRS            APSR_nzcv, FPSCR
318D8A:  BLE             loc_318DAC
318D8C:  VCMPE.F32       S10, S0
318D90:  VMRS            APSR_nzcv, FPSCR
318D94:  ITTTT LT
318D96:  LDRHLT.W        R1, [R3,#0xB]
318D9A:  BICLT.W         R1, R1, #0x400
318D9E:  ORRLT.W         R1, R1, LR
318DA2:  STRHLT.W        R1, [R3,#0xB]
318DA6:  IT LT
318DA8:  LDRLT.W         R1, [R8]
318DAC:  ADDS            R6, #1
318DAE:  ADDS            R5, #0xE
318DB0:  CMP             R6, R1
318DB2:  BLT             loc_318D4C
318DB4:  ADD.W           R9, R9, #1
318DB8:  CMP.W           R9, #0x40 ; '@'
318DBC:  BNE             loc_318D2E
318DBE:  POP.W           {R8,R9,R11}
318DC2:  POP             {R4-R7,PC}
