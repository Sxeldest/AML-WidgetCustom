; =========================================================
; Game Engine Function: _ZN10CGameLogic18SkipCanBeActivatedEv
; Address            : 0x309B5C - 0x309C2E
; =========================================================

309B5C:  PUSH            {R4,R6,R7,LR}
309B5E:  ADD             R7, SP, #8
309B60:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x309B66)
309B62:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
309B64:  LDR             R0, [R0]; CGame::currArea ...
309B66:  LDR             R1, [R0]; CGame::currArea
309B68:  MOVS            R0, #0
309B6A:  CMP             R1, #0
309B6C:  IT NE
309B6E:  POPNE           {R4,R6,R7,PC}
309B70:  LDR             R1, =(TheCamera_ptr - 0x309B76)
309B72:  ADD             R1, PC; TheCamera_ptr
309B74:  LDR             R1, [R1]; TheCamera
309B76:  LDRB.W          R1, [R1,#(byte_951FF7 - 0x951FA8)]
309B7A:  CBNZ            R1, locret_309BD0
309B7C:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309B82)
309B7E:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309B80:  LDR             R0, [R0]; CGameLogic::SkipState ...
309B82:  LDR             R0, [R0]; CGameLogic::SkipState
309B84:  CMP             R0, #4
309B86:  IT NE
309B88:  CMPNE           R0, #1
309B8A:  BNE             loc_309BB8
309B8C:  MOV.W           R0, #0xFFFFFFFF; int
309B90:  MOVS            R1, #0; bool
309B92:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309B96:  CBZ             R0, loc_309BB0
309B98:  LDR             R0, =(_ZN10CGameLogic11SkipVehicleE_ptr - 0x309B9E)
309B9A:  ADD             R0, PC; _ZN10CGameLogic11SkipVehicleE_ptr
309B9C:  LDR             R0, [R0]; CGameLogic::SkipVehicle ...
309B9E:  LDR             R4, [R0]; CGameLogic::SkipVehicle
309BA0:  CBZ             R4, loc_309BD2
309BA2:  MOV.W           R0, #0xFFFFFFFF; int
309BA6:  MOVS            R1, #0; bool
309BA8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309BAC:  CMP             R4, R0
309BAE:  BEQ             loc_309BD2
309BB0:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309BB6)
309BB2:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309BB4:  LDR             R0, [R0]; CGameLogic::SkipState ...
309BB6:  LDR             R0, [R0]; CGameLogic::SkipState
309BB8:  CMP             R0, #4
309BBA:  BNE             loc_309BCE
309BBC:  MOV.W           R0, #0xFFFFFFFF; int
309BC0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
309BC4:  LDR.W           R0, [R0,#0x440]; this
309BC8:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
309BCC:  CBNZ            R0, loc_309C2A
309BCE:  MOVS            R0, #0
309BD0:  POP             {R4,R6,R7,PC}
309BD2:  MOV.W           R0, #0xFFFFFFFF; int
309BD6:  MOVS            R1, #0; bool
309BD8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309BDC:  LDR.W           R0, [R0,#0x5A4]
309BE0:  CMP             R0, #9
309BE2:  BEQ             loc_309C2A
309BE4:  MOV.W           R0, #0xFFFFFFFF; int
309BE8:  MOVS            R1, #0; bool
309BEA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309BEE:  LDR.W           R0, [R0,#0x5A4]
309BF2:  CBZ             R0, loc_309C2A
309BF4:  MOV.W           R0, #0xFFFFFFFF; int
309BF8:  MOVS            R1, #0; bool
309BFA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309BFE:  LDR.W           R0, [R0,#0x5A4]
309C02:  CMP             R0, #1
309C04:  BEQ             loc_309C2A
309C06:  MOV.W           R0, #0xFFFFFFFF; int
309C0A:  MOVS            R1, #0; bool
309C0C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309C10:  LDR.W           R0, [R0,#0x5A4]
309C14:  CMP             R0, #2
309C16:  BEQ             loc_309C2A
309C18:  MOV.W           R0, #0xFFFFFFFF; int
309C1C:  MOVS            R1, #0; bool
309C1E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309C22:  LDR.W           R0, [R0,#0x5A4]
309C26:  CMP             R0, #0xA
309C28:  BNE             loc_309BB0
309C2A:  MOVS            R0, #1
309C2C:  POP             {R4,R6,R7,PC}
