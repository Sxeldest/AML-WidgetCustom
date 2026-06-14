; =========================================================
; Game Engine Function: _ZN6CTrain34FindNextStationPositionInDirectionEbfPfPi
; Address            : 0x580D58 - 0x580E74
; =========================================================

580D58:  PUSH            {R7,LR}
580D5A:  MOV             R7, SP
580D5C:  LDR.W           R12, =(StationDist_ptr - 0x580D68)
580D60:  VMOV            S0, R1
580D64:  ADD             R12, PC; StationDist_ptr
580D66:  LDR.W           R12, [R12]; StationDist
580D6A:  VLDR            S2, [R12]
580D6E:  VCMPE.F32       S2, S0
580D72:  VMRS            APSR_nzcv, FPSCR
580D76:  BLE             loc_580D7E
580D78:  MOV.W           LR, #0
580D7C:  B               loc_580E02
580D7E:  LDR             R1, =(StationDist_ptr - 0x580D84)
580D80:  ADD             R1, PC; StationDist_ptr
580D82:  LDR             R1, [R1]; StationDist
580D84:  VLDR            S2, [R1,#4]
580D88:  VCMPE.F32       S2, S0
580D8C:  VMRS            APSR_nzcv, FPSCR
580D90:  BLE             loc_580D98
580D92:  MOV.W           LR, #1
580D96:  B               loc_580E02
580D98:  LDR             R1, =(StationDist_ptr - 0x580D9E)
580D9A:  ADD             R1, PC; StationDist_ptr
580D9C:  LDR             R1, [R1]; StationDist
580D9E:  VLDR            S2, [R1,#8]
580DA2:  VCMPE.F32       S2, S0
580DA6:  VMRS            APSR_nzcv, FPSCR
580DAA:  BLE             loc_580DB2
580DAC:  MOV.W           LR, #2
580DB0:  B               loc_580E02
580DB2:  LDR             R1, =(StationDist_ptr - 0x580DB8)
580DB4:  ADD             R1, PC; StationDist_ptr
580DB6:  LDR             R1, [R1]; StationDist
580DB8:  VLDR            S2, [R1,#0xC]
580DBC:  VCMPE.F32       S2, S0
580DC0:  VMRS            APSR_nzcv, FPSCR
580DC4:  BLE             loc_580DCC
580DC6:  MOV.W           LR, #3
580DCA:  B               loc_580E02
580DCC:  LDR             R1, =(StationDist_ptr - 0x580DD2)
580DCE:  ADD             R1, PC; StationDist_ptr
580DD0:  LDR             R1, [R1]; StationDist
580DD2:  VLDR            S2, [R1,#0x10]
580DD6:  VCMPE.F32       S2, S0
580DDA:  VMRS            APSR_nzcv, FPSCR
580DDE:  BLE             loc_580DE6
580DE0:  MOV.W           LR, #4
580DE4:  B               loc_580E02
580DE6:  LDR             R1, =(StationDist_ptr - 0x580DEC)
580DE8:  ADD             R1, PC; StationDist_ptr
580DEA:  LDR             R1, [R1]; StationDist
580DEC:  VLDR            S2, [R1,#0x14]
580DF0:  VCMPE.F32       S2, S0
580DF4:  VMRS            APSR_nzcv, FPSCR
580DF8:  ITE LE
580DFA:  MOVLE.W         LR, #6
580DFE:  MOVGT.W         LR, #5
580E02:  CMP.W           LR, #5
580E06:  IT HI
580E08:  MOVHI.W         LR, #0
580E0C:  CBNZ            R0, loc_580E1E
580E0E:  MOV.W           R12, #0xFFFFFFFF
580E12:  CMP.W           LR, #0
580E16:  IT EQ
580E18:  MOVEQ.W         R12, #5
580E1C:  ADD             LR, R12
580E1E:  LDR             R1, =(StationDist_ptr - 0x580E24)
580E20:  ADD             R1, PC; StationDist_ptr
580E22:  LDR             R1, [R1]; StationDist
580E24:  ADD.W           R1, R1, LR,LSL#2
580E28:  VLDR            S2, [R1]
580E2C:  VSUB.F32        S0, S0, S2
580E30:  VLDR            S2, =100.0
580E34:  VABS.F32        S0, S0
580E38:  VCMPE.F32       S0, S2
580E3C:  VMRS            APSR_nzcv, FPSCR
580E40:  BGE             loc_580E62
580E42:  MOV.W           R1, #0xFFFFFFFF
580E46:  CMP             R0, #0
580E48:  IT NE
580E4A:  MOVNE           R1, #1
580E4C:  ADD             LR, R1
580E4E:  CMP.W           LR, #0
580E52:  IT LT
580E54:  ADDLT.W         LR, LR, #6
580E58:  CMP.W           LR, #5
580E5C:  IT GT
580E5E:  MOVGT.W         LR, #0
580E62:  LDR             R0, =(StationDist_ptr - 0x580E6C)
580E64:  STR.W           LR, [R3]
580E68:  ADD             R0, PC; StationDist_ptr
580E6A:  LDR             R0, [R0]; StationDist
580E6C:  LDR.W           R0, [R0,LR,LSL#2]
580E70:  STR             R0, [R2]
580E72:  POP             {R7,PC}
