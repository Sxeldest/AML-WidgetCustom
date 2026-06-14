; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop16LookForCarAlarmsEP4CPed
; Address            : 0x523D60 - 0x523E1A
; =========================================================

523D60:  PUSH            {R4,R6,R7,LR}
523D62:  ADD             R7, SP, #8
523D64:  MOV             R4, R1
523D66:  MOV.W           R0, #0xFFFFFFFF; int
523D6A:  MOVS            R1, #0; bool
523D6C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
523D70:  CMP             R0, #0
523D72:  BEQ             locret_523E18
523D74:  MOV.W           R0, #0xFFFFFFFF; int
523D78:  MOVS            R1, #0; bool
523D7A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
523D7E:  LDR.W           R0, [R0,#0x5A0]
523D82:  CMP             R0, #0
523D84:  BNE             locret_523E18
523D86:  MOV.W           R0, #0xFFFFFFFF; int
523D8A:  MOVS            R1, #0; bool
523D8C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
523D90:  LDRH.W          R1, [R0,#0x460]
523D94:  CMP             R1, #0
523D96:  ITT NE
523D98:  MOVWNE          R2, #0xFFFF
523D9C:  CMPNE           R1, R2
523D9E:  BEQ             locret_523E18
523DA0:  LDRB.W          R0, [R0,#0x3A]
523DA4:  AND.W           R0, R0, #0xF8
523DA8:  CMP             R0, #0x28 ; '('
523DAA:  IT EQ
523DAC:  POPEQ           {R4,R6,R7,PC}
523DAE:  MOV.W           R0, #0xFFFFFFFF; int
523DB2:  MOVS            R1, #0; bool
523DB4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
523DB8:  LDR             R1, [R0,#0x14]
523DBA:  LDR             R2, [R4,#0x14]
523DBC:  ADD.W           R3, R1, #0x30 ; '0'
523DC0:  CMP             R1, #0
523DC2:  IT EQ
523DC4:  ADDEQ           R3, R0, #4
523DC6:  ADD.W           R0, R2, #0x30 ; '0'
523DCA:  CMP             R2, #0
523DCC:  VLDR            S0, [R3]
523DD0:  IT EQ
523DD2:  ADDEQ           R0, R4, #4
523DD4:  VLDR            D16, [R3,#4]
523DD8:  VLDR            S2, [R0]
523DDC:  VLDR            D17, [R0,#4]
523DE0:  VSUB.F32        S0, S0, S2
523DE4:  VSUB.F32        D16, D16, D17
523DE8:  VMUL.F32        D1, D16, D16
523DEC:  VMUL.F32        S0, S0, S0
523DF0:  VADD.F32        S0, S0, S2
523DF4:  VADD.F32        S0, S0, S3
523DF8:  VLDR            S2, =400.0
523DFC:  VCMPE.F32       S0, S2
523E00:  VMRS            APSR_nzcv, FPSCR
523E04:  BGE             locret_523E18
523E06:  MOV.W           R0, #0xFFFFFFFF; int
523E0A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523E0E:  MOVS            R1, #1; int
523E10:  POP.W           {R4,R6,R7,LR}
523E14:  B.W             sub_190E38
523E18:  POP             {R4,R6,R7,PC}
