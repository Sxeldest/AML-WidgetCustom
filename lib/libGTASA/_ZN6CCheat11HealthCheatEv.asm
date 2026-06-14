; =========================================================
; Game Engine Function: _ZN6CCheat11HealthCheatEv
; Address            : 0x2FEFA0 - 0x2FF054
; =========================================================

2FEFA0:  PUSH            {R4,R5,R7,LR}
2FEFA2:  ADD             R7, SP, #8
2FEFA4:  VPUSH           {D8}
2FEFA8:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2FEFAE)
2FEFAA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2FEFAC:  LDR             R0, [R0]; CWorld::Players ...
2FEFAE:  LDRB.W          R0, [R0,#(byte_96B7EB - 0x96B69C)]
2FEFB2:  VMOV            S0, R0
2FEFB6:  MOV.W           R0, #0xFFFFFFFF; int
2FEFBA:  VCVT.F32.U32    S16, S0
2FEFBE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FEFC2:  ADDW            R0, R0, #0x544
2FEFC6:  MOVS            R1, #0; bool
2FEFC8:  VSTR            S16, [R0]
2FEFCC:  MOV.W           R0, #0xFFFFFFFF; int
2FEFD0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FEFD4:  CBZ             R0, loc_2FF04E
2FEFD6:  MOV.W           R0, #0xFFFFFFFF; int
2FEFDA:  MOVS            R1, #0; bool
2FEFDC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FEFE0:  MOVS            R1, #0x447A0000
2FEFE6:  STR.W           R1, [R0,#0x4CC]
2FEFEA:  MOV.W           R0, #0xFFFFFFFF; int
2FEFEE:  MOVS            R1, #0; bool
2FEFF0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FEFF4:  LDR.W           R0, [R0,#0x5A0]
2FEFF8:  CBZ             R0, loc_2FF00C
2FEFFA:  MOV.W           R0, #0xFFFFFFFF; int
2FEFFE:  MOVS            R1, #0; bool
2FF000:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FF004:  LDR.W           R0, [R0,#0x5A0]
2FF008:  CMP             R0, #9
2FF00A:  BNE             loc_2FF04E
2FF00C:  MOV.W           R0, #0xFFFFFFFF; int
2FF010:  MOVS            R1, #0; bool
2FF012:  MOVS            R4, #0
2FF014:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FF018:  LDR.W           R5, [R0,#0x5A0]
2FF01C:  MOV.W           R0, #0xFFFFFFFF; int
2FF020:  MOVS            R1, #0; bool
2FF022:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FF026:  CMP             R5, #0
2FF028:  MOV.W           R1, #0; bool
2FF02C:  ITE EQ
2FF02E:  STREQ.W         R4, [R0,#0x8F8]
2FF032:  STRNE.W         R4, [R0,#0x7D0]
2FF036:  MOV.W           R0, #0xFFFFFFFF; int
2FF03A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2FF03E:  LDR             R1, [R0]
2FF040:  LDR.W           R1, [R1,#0xCC]
2FF044:  VPOP            {D8}
2FF048:  POP.W           {R4,R5,R7,LR}
2FF04C:  BX              R1
2FF04E:  VPOP            {D8}
2FF052:  POP             {R4,R5,R7,PC}
