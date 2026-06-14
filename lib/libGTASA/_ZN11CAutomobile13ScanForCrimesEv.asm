; =========================================================
; Game Engine Function: _ZN11CAutomobile13ScanForCrimesEv
; Address            : 0x558934 - 0x5589FE
; =========================================================

558934:  PUSH            {R4,R6,R7,LR}
558936:  ADD             R7, SP, #8
558938:  MOV             R4, R0
55893A:  MOV.W           R0, #0xFFFFFFFF; int
55893E:  MOVS            R1, #0; bool
558940:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
558944:  CMP             R0, #0
558946:  BEQ             locret_5589FC
558948:  MOV.W           R0, #0xFFFFFFFF; int
55894C:  MOVS            R1, #0; bool
55894E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
558952:  LDR.W           R0, [R0,#0x5A0]
558956:  CMP             R0, #0
558958:  BNE             locret_5589FC
55895A:  MOV.W           R0, #0xFFFFFFFF; int
55895E:  MOVS            R1, #0; bool
558960:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
558964:  LDRH.W          R1, [R0,#0x460]
558968:  CMP             R1, #0
55896A:  ITT NE
55896C:  MOVWNE          R2, #0xFFFF
558970:  CMPNE           R1, R2
558972:  BEQ             locret_5589FC
558974:  LDRB.W          R0, [R0,#0x3A]
558978:  AND.W           R0, R0, #0xF8
55897C:  CMP             R0, #0x28 ; '('
55897E:  IT EQ
558980:  POPEQ           {R4,R6,R7,PC}
558982:  MOV.W           R0, #0xFFFFFFFF; int
558986:  MOVS            R1, #0; bool
558988:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55898C:  LDR             R1, [R0,#0x14]
55898E:  LDR             R2, [R4,#0x14]
558990:  ADD.W           R3, R1, #0x30 ; '0'
558994:  CMP             R1, #0
558996:  IT EQ
558998:  ADDEQ           R3, R0, #4
55899A:  ADD.W           R0, R2, #0x30 ; '0'
55899E:  CMP             R2, #0
5589A0:  VLDR            S0, [R3]
5589A4:  IT EQ
5589A6:  ADDEQ           R0, R4, #4
5589A8:  VLDR            D16, [R3,#4]
5589AC:  VLDR            S2, [R0]
5589B0:  VLDR            D17, [R0,#4]
5589B4:  VSUB.F32        S0, S0, S2
5589B8:  VSUB.F32        D16, D16, D17
5589BC:  VMUL.F32        D1, D16, D16
5589C0:  VMUL.F32        S0, S0, S0
5589C4:  VADD.F32        S0, S0, S2
5589C8:  VADD.F32        S0, S0, S3
5589CC:  VLDR            S2, =400.0
5589D0:  VCMPE.F32       S0, S2
5589D4:  VMRS            APSR_nzcv, FPSCR
5589D8:  BGE             locret_5589FC
5589DA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5589E6)
5589DC:  MOV.W           R2, #0x194
5589E0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x5589E8)
5589E2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5589E4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5589E6:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5589E8:  LDR             R1, [R1]; CWorld::Players ...
5589EA:  LDR             R0, [R0]; CWorld::PlayerInFocus
5589EC:  SMULBB.W        R0, R0, R2
5589F0:  LDR             R0, [R1,R0]; this
5589F2:  MOVS            R1, #1; int
5589F4:  POP.W           {R4,R6,R7,LR}
5589F8:  B.W             sub_190E38
5589FC:  POP             {R4,R6,R7,PC}
