; =========================================================
; Game Engine Function: _ZN7CGarage6UpdateEi
; Address            : 0x30E820 - 0x310F72
; =========================================================

30E820:  PUSH            {R4-R7,LR}
30E822:  ADD             R7, SP, #0xC
30E824:  PUSH.W          {R8-R11}
30E828:  SUB             SP, SP, #4
30E82A:  VPUSH           {D8-D15}
30E82E:  SUB             SP, SP, #0x90; float
30E830:  MOV             R4, R0
30E832:  MOV             R8, R1
30E834:  LDRB.W          R0, [R4,#0x4C]
30E838:  CMP             R0, #0xD
30E83A:  BEQ.W           loc_30E980
30E83E:  LDRB.W          R0, [R4,#0x4D]
30E842:  CMP             R0, #5
30E844:  BHI.W           loc_30E980
30E848:  MOV.W           R0, #0xFFFFFFFF; int
30E84C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30E850:  CMP             R0, #0
30E852:  BEQ.W           loc_30E980
30E856:  LDRB.W          R0, [R4,#0x4E]
30E85A:  LSLS            R0, R0, #0x1A
30E85C:  BMI.W           loc_30E980
30E860:  MOV.W           R0, #0xFFFFFFFF; int
30E864:  MOVS            R1, #0; bool
30E866:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30E86A:  MOV             R6, R0
30E86C:  MOV.W           R0, #0xFFFFFFFF; int
30E870:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30E874:  MOV             R5, R0
30E876:  MOV.W           R0, #0xFFFFFFFF; int
30E87A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30E87E:  LDRB.W          R0, [R0,#0x485]
30E882:  LSLS            R0, R0, #0x1F
30E884:  BEQ             loc_30E8B6
30E886:  MOV.W           R0, #0xFFFFFFFF; int
30E88A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30E88E:  LDR.W           R0, [R0,#0x590]
30E892:  CBZ             R0, loc_30E8B6
30E894:  MOV.W           R0, #0xFFFFFFFF; int
30E898:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30E89C:  LDR.W           R0, [R0,#0x590]
30E8A0:  MOVW            R1, #0x23B
30E8A4:  LDRH            R0, [R0,#0x26]
30E8A6:  CMP             R0, R1
30E8A8:  BNE             loc_30E8B6
30E8AA:  MOV.W           R0, #0xFFFFFFFF; int
30E8AE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30E8B2:  LDR.W           R5, [R0,#0x590]
30E8B6:  MOV             R0, R4; this
30E8B8:  MOV             R1, R5; CEntity *
30E8BA:  MOV.W           R2, #0x3E800000; float
30E8BE:  BLX             j__ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
30E8C2:  CMP             R0, #1
30E8C4:  BNE             loc_30E8DE
30E8C6:  LDR.W           R0, =(TheCamera_ptr - 0x30E8D2)
30E8CA:  LDR.W           R1, =(_ZN8CGarages19bCamShouldBeOutsideE_ptr - 0x30E8D4)
30E8CE:  ADD             R0, PC; TheCamera_ptr
30E8D0:  ADD             R1, PC; _ZN8CGarages19bCamShouldBeOutsideE_ptr
30E8D2:  LDR             R0, [R0]; TheCamera
30E8D4:  LDR             R1, [R1]; CGarages::bCamShouldBeOutside ...
30E8D6:  STR.W           R4, [R0,#(dword_952748 - 0x951FA8)]
30E8DA:  MOVS            R0, #1
30E8DC:  STRB            R0, [R1]; CGarages::bCamShouldBeOutside
30E8DE:  CMP             R6, #0
30E8E0:  BEQ             loc_30E980
30E8E2:  MOV             R0, R4; this
30E8E4:  MOV             R1, R6; CEntity *
30E8E6:  MOVS            R2, #0; float
30E8E8:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
30E8EC:  CBNZ            R0, loc_30E8FA
30E8EE:  LDR.W           R0, =(TheCamera_ptr - 0x30E8F6)
30E8F2:  ADD             R0, PC; TheCamera_ptr
30E8F4:  LDR             R0, [R0]; TheCamera
30E8F6:  STR.W           R4, [R0,#(dword_95274C - 0x951FA8)]
30E8FA:  LDRH            R0, [R6,#0x26]
30E8FC:  MOVW            R1, #0x1A7
30E900:  CMP             R0, R1
30E902:  BNE             loc_30E980
30E904:  VMOV.F32        S0, #-0.5
30E908:  VLDR            S2, [R4,#0x28]
30E90C:  LDR             R1, [R6,#0x14]
30E90E:  ADD.W           R0, R1, #0x30 ; '0'
30E912:  CMP             R1, #0
30E914:  IT EQ
30E916:  ADDEQ           R0, R6, #4
30E918:  VLDR            S4, [R0]
30E91C:  VADD.F32        S2, S2, S0
30E920:  VCMPE.F32       S4, S2
30E924:  VMRS            APSR_nzcv, FPSCR
30E928:  BLE             loc_30E980
30E92A:  VMOV.F32        S2, #0.5
30E92E:  VLDR            S6, [R4,#0x2C]
30E932:  VADD.F32        S6, S6, S2
30E936:  VCMPE.F32       S4, S6
30E93A:  VMRS            APSR_nzcv, FPSCR
30E93E:  BGE             loc_30E980
30E940:  VLDR            S6, [R4,#0x30]
30E944:  VLDR            S4, [R0,#4]
30E948:  VADD.F32        S0, S6, S0
30E94C:  VCMPE.F32       S4, S0
30E950:  VMRS            APSR_nzcv, FPSCR
30E954:  BLE             loc_30E980
30E956:  VLDR            S0, [R4,#0x34]
30E95A:  VADD.F32        S0, S0, S2
30E95E:  VCMPE.F32       S4, S0
30E962:  VMRS            APSR_nzcv, FPSCR
30E966:  BGE             loc_30E980
30E968:  LDR.W           R0, =(TheCamera_ptr - 0x30E974)
30E96C:  LDR.W           R1, =(_ZN8CGarages19bCamShouldBeOutsideE_ptr - 0x30E976)
30E970:  ADD             R0, PC; TheCamera_ptr
30E972:  ADD             R1, PC; _ZN8CGarages19bCamShouldBeOutsideE_ptr
30E974:  LDR             R0, [R0]; TheCamera
30E976:  LDR             R1, [R1]; CGarages::bCamShouldBeOutside ...
30E978:  STR.W           R4, [R0,#(dword_952748 - 0x951FA8)]
30E97C:  MOVS            R0, #1
30E97E:  STRB            R0, [R1]; CGarages::bCamShouldBeOutside
30E980:  LDRB.W          R0, [R4,#0x4E]
30E984:  TST.W           R0, #2
30E988:  BEQ             loc_30E994
30E98A:  LDRB.W          R1, [R4,#0x4D]
30E98E:  CMP             R1, #0
30E990:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30E994:  LSLS            R1, R0, #0x1C
30E996:  BPL             loc_30E9C4
30E998:  LDRB.W          R1, [R4,#0x4D]
30E99C:  CMP             R1, #1
30E99E:  BEQ             loc_30E9B6
30E9A0:  CMP             R1, #3
30E9A2:  BNE             loc_30E9BC
30E9A4:  VLDR            S0, =0.4
30E9A8:  VLDR            S2, [R4,#0x38]
30E9AC:  VCMPE.F32       S2, S0
30E9B0:  VMRS            APSR_nzcv, FPSCR
30E9B4:  BLE             loc_30E9BC
30E9B6:  AND.W           R0, R0, #0xBF
30E9BA:  B               loc_30E9C0
30E9BC:  ORR.W           R0, R0, #0x40 ; '@'
30E9C0:  STRB.W          R0, [R4,#0x4E]
30E9C4:  LDRB.W          R0, [R4,#0x4C]
30E9C8:  SUBS            R1, R0, #1; switch 45 cases
30E9CA:  CMP             R1, #0x2C ; ','
30E9CC:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30E9D0:  TBH.W           [PC,R1,LSL#1]; switch jump
30E9D4:  DCW 0x1D5; jump table for switch statement
30E9D6:  DCW 0x99
30E9D8:  DCW 0x99
30E9DA:  DCW 0x99
30E9DC:  DCW 0x248
30E9DE:  DCW 0xC8F
30E9E0:  DCW 0xC8F
30E9E2:  DCW 0xC8F
30E9E4:  DCW 0xC8F
30E9E6:  DCW 0xC8F
30E9E8:  DCW 0x28C
30E9EA:  DCW 0xC8F
30E9EC:  DCW 0xC8F
30E9EE:  DCW 0x125
30E9F0:  DCW 0x2C8
30E9F2:  DCW 0x2D
30E9F4:  DCW 0x2D
30E9F6:  DCW 0x2D
30E9F8:  DCW 0x2CE
30E9FA:  DCW 0x2D8
30E9FC:  DCW 0x125
30E9FE:  DCW 0xC8F
30EA00:  DCW 0x31C
30EA02:  DCW 0x2D
30EA04:  DCW 0x2D
30EA06:  DCW 0x2D
30EA08:  DCW 0x2D
30EA0A:  DCW 0x2D
30EA0C:  DCW 0x2D
30EA0E:  DCW 0x2D
30EA10:  DCW 0x2D
30EA12:  DCW 0x2D
30EA14:  DCW 0xC7
30EA16:  DCW 0xC7
30EA18:  DCW 0xC7
30EA1A:  DCW 0xEE
30EA1C:  DCW 0xEE
30EA1E:  DCW 0xEE
30EA20:  DCW 0x2D
30EA22:  DCW 0x2D
30EA24:  DCW 0x2D
30EA26:  DCW 0x2D
30EA28:  DCW 0x347
30EA2A:  DCW 0x2D
30EA2C:  DCW 0x2D
30EA2E:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 cases 16-18,24-32,39-42,44,45
30EA32:  CMP             R0, #3; switch 4 cases
30EA34:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EA38:  TBH.W           [PC,R0,LSL#1]; switch jump
30EA3C:  DCW 4; jump table for switch statement
30EA3E:  DCW 0x34
30EA40:  DCW 0x54
30EA42:  DCW 0x37A
30EA44:  ADD             R0, SP, #0xF0+var_B8; jumptable 0030EA38 case 0
30EA46:  MOV.W           R1, #0xFFFFFFFF
30EA4A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EA4E:  VLDR            S0, =950.0
30EA52:  VLDR            S2, [SP,#0xF0+var_B0]
30EA56:  VCMPE.F32       S2, S0
30EA5A:  VMRS            APSR_nzcv, FPSCR
30EA5E:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EA62:  ADD             R0, SP, #0xF0+var_B8; int
30EA64:  MOV.W           R1, #0xFFFFFFFF
30EA68:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EA6C:  ADD             R0, SP, #0xF0+var_6C; int
30EA6E:  MOV.W           R1, #0xFFFFFFFF
30EA72:  VLDR            S16, [SP,#0xF0+var_B8]
30EA76:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EA7A:  VLDR            S2, [R4,#0x28]
30EA7E:  VLDR            S0, [SP,#0xF0+var_68]
30EA82:  VCMPE.F32       S2, S16
30EA86:  VMRS            APSR_nzcv, FPSCR
30EA8A:  BGT             loc_30EA9C
30EA8C:  VLDR            S2, [R4,#0x2C]
30EA90:  VCMPE.F32       S2, S16
30EA94:  VMRS            APSR_nzcv, FPSCR
30EA98:  BGE.W           loc_30F4E0
30EA9C:  VSUB.F32        S2, S16, S2
30EAA0:  B.W             loc_30F4E4
30EAA4:  ADD             R0, SP, #0xF0+var_B8; jumptable 0030EA38 case 1
30EAA6:  MOV.W           R1, #0xFFFFFFFF
30EAAA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EAAE:  ADD             R0, SP, #0xF0+var_6C; int
30EAB0:  MOV.W           R1, #0xFFFFFFFF
30EAB4:  VLDR            S16, [SP,#0xF0+var_B8]
30EAB8:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EABC:  VLDR            S2, [R4,#0x28]
30EAC0:  VLDR            S0, [SP,#0xF0+var_68]
30EAC4:  VCMPE.F32       S2, S16
30EAC8:  VMRS            APSR_nzcv, FPSCR
30EACC:  BGT             loc_30EADE
30EACE:  VLDR            S2, [R4,#0x2C]
30EAD2:  VCMPE.F32       S2, S16
30EAD6:  VMRS            APSR_nzcv, FPSCR
30EADA:  BGE.W           loc_30F142
30EADE:  VSUB.F32        S2, S16, S2
30EAE2:  B               loc_30F146
30EAE4:  MOV             R0, R4; jumptable 0030EA38 case 2
30EAE6:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30EAEA:  MOV.W           R0, #0xFFFFFFFF; int
30EAEE:  MOVS            R1, #0; bool
30EAF0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EAF4:  CMP             R0, #0
30EAF6:  BEQ.W           loc_30ED00
30EAFA:  MOV.W           R0, #0xFFFFFFFF; int
30EAFE:  MOVS            R1, #0; bool
30EB00:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EB04:  B               loc_30ED08
30EB06:  LDRB.W          R1, [R4,#0x4D]; jumptable 0030E9D0 cases 2-4
30EB0A:  CMP             R1, #4; switch 5 cases
30EB0C:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EB10:  TBH.W           [PC,R1,LSL#1]; switch jump
30EB14:  DCW 5; jump table for switch statement
30EB16:  DCW 0x451
30EB18:  DCW 0x4B6
30EB1A:  DCW 0x41E
30EB1C:  DCW 0x443
30EB1E:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30EB28); jumptable 0030EB10 case 0
30EB22:  LDR             R2, [R4,#0x3C]
30EB24:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30EB26:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30EB28:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30EB2A:  CMP             R1, R2
30EB2C:  BLS.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EB30:  CMP             R0, #2
30EB32:  BEQ.W           loc_310022
30EB36:  CMP             R0, #3
30EB38:  BEQ.W           loc_31002A
30EB3C:  CMP             R0, #4
30EB3E:  BNE.W           loc_31003C
30EB42:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30EB4E)
30EB46:  MOV.W           R1, #(byte_713FB0 - 0x712330)
30EB4A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30EB4C:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
30EB4E:  LDRB            R0, [R0,R1]
30EB50:  CMP             R0, #1
30EB52:  BNE.W           loc_30F4C6
30EB56:  LDR.W           R0, =(AudioEngine_ptr - 0x30EB60)
30EB5A:  MOVS            R1, #0x14
30EB5C:  ADD             R0, PC; AudioEngine_ptr
30EB5E:  B.W             loc_310030
30EB62:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 cases 33-35
30EB66:  SUBS            R1, R0, #1
30EB68:  CMP             R1, #2
30EB6A:  BCS.W           loc_30ECB8
30EB6E:  ADD             R0, SP, #0xF0+var_B8; int
30EB70:  MOV.W           R1, #0xFFFFFFFF
30EB74:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EB78:  ADD             R0, SP, #0xF0+var_6C; int
30EB7A:  MOV.W           R1, #0xFFFFFFFF
30EB7E:  VLDR            S16, [SP,#0xF0+var_B8]
30EB82:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EB86:  VLDR            S2, [R4,#0x28]
30EB8A:  VLDR            S0, [SP,#0xF0+var_68]
30EB8E:  VCMPE.F32       S2, S16
30EB92:  VMRS            APSR_nzcv, FPSCR
30EB96:  BGT             loc_30EBA8
30EB98:  VLDR            S2, [R4,#0x2C]
30EB9C:  VCMPE.F32       S2, S16
30EBA0:  VMRS            APSR_nzcv, FPSCR
30EBA4:  BGE.W           loc_30F5D4
30EBA8:  VSUB.F32        S16, S16, S2
30EBAC:  B.W             loc_30F5D8
30EBB0:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 cases 36-38
30EBB4:  CMP             R0, #3; switch 4 cases
30EBB6:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EBBA:  TBH.W           [PC,R0,LSL#1]; switch jump
30EBBE:  DCW 4; jump table for switch statement
30EBC0:  DCW 0x341
30EBC2:  DCW 0x329
30EBC4:  DCW 0x2B9
30EBC6:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030EBBA case 0
30EBCA:  MOVS            R1, #0; bool
30EBCC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EBD0:  CMP             R0, #0
30EBD2:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EBD6:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x30EBE2)
30EBDA:  LDRSH.W         R0, [R0,#0x26]
30EBDE:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
30EBE0:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
30EBE2:  LDR.W           R0, [R1,R0,LSL#2]
30EBE6:  LDRB.W          R1, [R4,#0x4C]
30EBEA:  LDRB.W          R0, [R0,#0x62]
30EBEE:  CMP             R1, #0x26 ; '&'
30EBF0:  BEQ.W           loc_30FDC6
30EBF4:  CMP             R1, #0x25 ; '%'
30EBF6:  BEQ.W           loc_30FDE6
30EBFA:  CMP             R1, #0x24 ; '$'
30EBFC:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EC00:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x30EC0C)
30EC04:  RSB.W           R0, R0, R0,LSL#3
30EC08:  ADD             R1, PC; mod_HandlingManager_ptr
30EC0A:  LDR             R1, [R1]; mod_HandlingManager
30EC0C:  ADD.W           R0, R1, R0,LSL#5
30EC10:  LDRB.W          R0, [R0,#0xE7]
30EC14:  LSLS            R0, R0, #0x1E
30EC16:  BMI.W           loc_30EFB2
30EC1A:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EC1E:  LDRB.W          R1, [R4,#0x4D]; jumptable 0030E9D0 cases 14,21
30EC22:  CMP             R1, #5; switch 6 cases
30EC24:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EC28:  TBH.W           [PC,R1,LSL#1]; switch jump
30EC2C:  DCW 6; jump table for switch statement
30EC2E:  DCW 0x59C
30EC30:  DCW 0x60A
30EC32:  DCW 0x282
30EC34:  DCW 0xB63
30EC36:  DCW 0x62D
30EC38:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030EC28 case 0
30EC3C:  MOVS            R1, #0; bool
30EC3E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EC42:  LDR             R1, [R4,#0x40]
30EC44:  CMP             R1, #0
30EC46:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EC4A:  CMP             R0, R1
30EC4C:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EC50:  MOV.W           R0, #0xFFFFFFFF; int
30EC54:  MOVS            R1, #0; bool
30EC56:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EC5A:  LDR             R1, [R0,#0x14]
30EC5C:  ADD.W           R2, R1, #0x30 ; '0'
30EC60:  CMP             R1, #0
30EC62:  IT EQ
30EC64:  ADDEQ           R2, R0, #4
30EC66:  MOV.W           R0, #0xFFFFFFFF; int
30EC6A:  MOVS            R1, #0; bool
30EC6C:  VLDR            S16, [R2]
30EC70:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EC74:  LDR             R1, [R0,#0x14]
30EC76:  VLDR            S2, [R4,#0x28]
30EC7A:  ADD.W           R2, R1, #0x30 ; '0'
30EC7E:  CMP             R1, #0
30EC80:  IT EQ
30EC82:  ADDEQ           R2, R0, #4
30EC84:  VCMPE.F32       S2, S16
30EC88:  VLDR            S0, [R2,#4]
30EC8C:  VMRS            APSR_nzcv, FPSCR
30EC90:  BGT             loc_30ECA2
30EC92:  VLDR            S2, [R4,#0x2C]
30EC96:  VCMPE.F32       S2, S16
30EC9A:  VMRS            APSR_nzcv, FPSCR
30EC9E:  BGE.W           loc_31024C
30ECA2:  VSUB.F32        S2, S16, S2
30ECA6:  B.W             loc_310250
30ECAA:  ALIGN 4
30ECAC:  DCFS 0.4
30ECB0:  DCFS 950.0
30ECB4:  DCFS 900.0
30ECB8:  CMP             R0, #0
30ECBA:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30ECBE:  ADD             R0, SP, #0xF0+var_B8; int
30ECC0:  MOV.W           R1, #0xFFFFFFFF
30ECC4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30ECC8:  ADD             R0, SP, #0xF0+var_6C; int
30ECCA:  MOV.W           R1, #0xFFFFFFFF
30ECCE:  VLDR            S16, [SP,#0xF0+var_B8]
30ECD2:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30ECD6:  VLDR            S2, [R4,#0x28]
30ECDA:  VLDR            S0, [SP,#0xF0+var_68]
30ECDE:  VCMPE.F32       S2, S16
30ECE2:  VMRS            APSR_nzcv, FPSCR
30ECE6:  BGT             loc_30ECF8
30ECE8:  VLDR            S2, [R4,#0x2C]
30ECEC:  VCMPE.F32       S2, S16
30ECF0:  VMRS            APSR_nzcv, FPSCR
30ECF4:  BGE.W           loc_30FA9E
30ECF8:  VSUB.F32        S16, S16, S2
30ECFC:  B.W             loc_30FAA2
30ED00:  MOV.W           R0, #0xFFFFFFFF; int
30ED04:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30ED08:  MOV             R1, R0; CEntity *
30ED0A:  MOV             R0, R4; this
30ED0C:  MOVS            R2, #0; float
30ED0E:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
30ED12:  CMP             R0, #0
30ED14:  BEQ.W           loc_3102EC; jumptable 0030F55A case 44
30ED18:  VLDR            S0, [R4,#0x38]
30ED1C:  VCMP.F32        S0, #0.0
30ED20:  VMRS            APSR_nzcv, FPSCR
30ED24:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30ED28:  LDRB.W          R1, [R4,#0x4C]
30ED2C:  MOVS            R0, #0
30ED2E:  STRB.W          R0, [R4,#0x4D]
30ED32:  SUBS            R1, #0x11; switch 29 cases
30ED34:  CMP             R1, #0x1C
30ED36:  BHI.W           def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
30ED3A:  TBH.W           [PC,R1,LSL#1]; switch jump
30ED3E:  DCW 0x1D; jump table for switch statement
30ED40:  DCW 0xA27
30ED42:  DCW 0xA4A
30ED44:  DCW 0xA4A
30ED46:  DCW 0xA4A
30ED48:  DCW 0xA4A
30ED4A:  DCW 0xA4A
30ED4C:  DCW 0xA29
30ED4E:  DCW 0xA2B
30ED50:  DCW 0xA2D
30ED52:  DCW 0xA2F
30ED54:  DCW 0xA31
30ED56:  DCW 0xA33
30ED58:  DCW 0xA35
30ED5A:  DCW 0xA37
30ED5C:  DCW 0xA39
30ED5E:  DCW 0xA3B
30ED60:  DCW 0xA3D
30ED62:  DCW 0xA3F
30ED64:  DCW 0xA4A
30ED66:  DCW 0xA4A
30ED68:  DCW 0xA4A
30ED6A:  DCW 0xA41
30ED6C:  DCW 0xA43
30ED6E:  DCW 0xA45
30ED70:  DCW 0xA47
30ED72:  DCW 0xA4A
30ED74:  DCW 0xADA
30ED76:  DCW 0xA49
30ED78:  MOVS            R0, #1; jumptable 0030ED3A case 17
30ED7A:  B.W             def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
30ED7E:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 1
30ED82:  CMP             R0, #3; switch 4 cases
30ED84:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30ED88:  TBH.W           [PC,R0,LSL#1]; switch jump
30ED8C:  DCW 0x107; jump table for switch statement
30ED8E:  DCW 4
30ED90:  DCW 0x605
30ED92:  DCW 0x1D2
30ED94:  ADD             R0, SP, #0xF0+var_B8; jumptable 0030ED88 case 1
30ED96:  MOV.W           R1, #0xFFFFFFFF
30ED9A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30ED9E:  ADD             R0, SP, #0xF0+var_6C; int
30EDA0:  MOV.W           R1, #0xFFFFFFFF
30EDA4:  VLDR            S16, [R4,#0x28]
30EDA8:  VLDR            S18, [R4,#0x2C]
30EDAC:  VLDR            S20, [SP,#0xF0+var_B8]
30EDB0:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EDB4:  ADD             R0, SP, #0xF0+var_78; int
30EDB6:  MOV.W           R1, #0xFFFFFFFF
30EDBA:  VLDR            S22, [R4,#0x28]
30EDBE:  VLDR            S24, [R4,#0x2C]
30EDC2:  VLDR            S26, [SP,#0xF0+var_6C]
30EDC6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EDCA:  ADD             R0, SP, #0xF0+var_C8; int
30EDCC:  MOV.W           R1, #0xFFFFFFFF
30EDD0:  VLDR            S28, [R4,#0x30]
30EDD4:  VLDR            S30, [R4,#0x34]
30EDD8:  VLDR            S17, [SP,#0xF0+var_78+4]
30EDDC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EDE0:  VLDR            S6, [R4,#0x30]
30EDE4:  VMOV.F32        S0, #0.5
30EDE8:  VLDR            S8, [R4,#0x34]
30EDEC:  VADD.F32        S2, S16, S18
30EDF0:  VADD.F32        S4, S22, S24
30EDF4:  VADD.F32        S10, S28, S30
30EDF8:  VADD.F32        S6, S6, S8
30EDFC:  VMUL.F32        S2, S2, S0
30EE00:  VMUL.F32        S4, S4, S0
30EE04:  VMUL.F32        S8, S10, S0
30EE08:  VMUL.F32        S0, S6, S0
30EE0C:  VLDR            S6, [SP,#0xF0+var_C4]
30EE10:  VSUB.F32        S2, S20, S2
30EE14:  VSUB.F32        S4, S26, S4
30EE18:  VSUB.F32        S8, S17, S8
30EE1C:  VSUB.F32        S0, S6, S0
30EE20:  VMUL.F32        S2, S2, S4
30EE24:  VMUL.F32        S0, S8, S0
30EE28:  VADD.F32        S0, S2, S0
30EE2C:  VLDR            S2, =900.0
30EE30:  VCMPE.F32       S0, S2
30EE34:  VMRS            APSR_nzcv, FPSCR
30EE38:  BLE.W           loc_30FD86
30EE3C:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x30EE44)
30EE40:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
30EE42:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
30EE44:  LDRB            R0, [R0]; CTimer::m_FrameCounter
30EE46:  LSLS            R0, R0, #0x1B
30EE48:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EE4C:  LDR             R1, [R4,#0x40]; CEntity *
30EE4E:  CMP             R1, #0
30EE50:  BEQ.W           loc_310356
30EE54:  MOV             R0, R4; this
30EE56:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
30EE5A:  CMP             R0, #0
30EE5C:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EE60:  B.W             loc_310356
30EE64:  ADD             R6, SP, #0xF0+var_B8; jumptable 0030E9D0 case 5
30EE66:  MOV.W           R1, #0xFFFFFFFF
30EE6A:  MOV             R0, R6; int
30EE6C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30EE70:  VLDR            S0, =950.0
30EE74:  VLDR            S2, [SP,#0xF0+var_B0]
30EE78:  VCMPE.F32       S2, S0
30EE7C:  VMRS            APSR_nzcv, FPSCR
30EE80:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EE84:  LDRB.W          R0, [R4,#0x4D]
30EE88:  CMP             R0, #4; switch 5 cases
30EE8A:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EE8E:  TBH.W           [PC,R0,LSL#1]; switch jump
30EE92:  DCW 5; jump table for switch statement
30EE94:  DCW 0x7DD
30EE96:  DCW 0x840
30EE98:  DCW 0x25F
30EE9A:  DCW 0x284
30EE9C:  LDR.W           R0, =(_ZN8CGarages10NoRespraysE_ptr - 0x30EEA4); jumptable 0030EE8E case 0
30EEA0:  ADD             R0, PC; _ZN8CGarages10NoRespraysE_ptr
30EEA2:  LDR             R0, [R0]; CGarages::NoResprays ...
30EEA4:  LDRB            R0, [R0]; CGarages::NoResprays
30EEA6:  CMP             R0, #0
30EEA8:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EEAC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30EEB6)
30EEB0:  LDR             R1, [R4,#0x3C]
30EEB2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30EEB4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30EEB6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30EEB8:  CMP             R0, R1
30EEBA:  BLS.W           loc_30FFA8
30EEBE:  MOVS            R0, #3
30EEC0:  STRB.W          R0, [R4,#0x4D]
30EEC4:  MOV.W           R0, #0xFFFFFFFF; int
30EEC8:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
30EECC:  LDR.W           R8, [R0,#0x2C]
30EED0:  CMP.W           R8, #0
30EED4:  BEQ.W           loc_310514
30EED8:  MOV.W           R0, #0xFFFFFFFF; int
30EEDC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
30EEE0:  BLX             j__ZN7CWanted29ClearWantedLevelAndGoOnParoleEv; CWanted::ClearWantedLevelAndGoOnParole(void)
30EEE4:  MOV.W           R11, #1
30EEE8:  B.W             loc_310518
30EEEC:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 11
30EEF0:  CMP             R0, #3
30EEF2:  BEQ.W           loc_30F130; jumptable 0030EA38 case 3
30EEF6:  CMP             R0, #2
30EEF8:  BEQ.W           loc_30F8E0
30EEFC:  CMP             R0, #1
30EEFE:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EF02:  ADD.W           R6, R4, #0x28 ; '('
30EF06:  LDR             R0, [R4,#8]
30EF08:  ADD             R5, SP, #0xF0+var_B8
30EF0A:  LDM             R6, {R1-R3,R6}
30EF0C:  STRD.W          R1, R3, [SP,#0xF0+var_6C]
30EF10:  MOVS            R1, #1
30EF12:  STR             R0, [SP,#0xF0+var_64]
30EF14:  MOVS            R3, #word_10; __int16 *
30EF16:  LDR             R0, [R4,#0x1C]
30EF18:  STRD.W          R2, R6, [SP,#0xF0+var_78]
30EF1C:  ADD             R2, SP, #0xF0+var_C8; CVector *
30EF1E:  STR             R0, [SP,#0xF0+var_70]
30EF20:  MOVS            R0, #0
30EF22:  STRD.W          R5, R0, [SP,#0xF0+var_F0]; __int16
30EF26:  STRD.W          R1, R1, [SP,#0xF0+var_E8]; bool
30EF2A:  ADD             R1, SP, #0xF0+var_78; CVector *
30EF2C:  STRD.W          R0, R0, [SP,#0xF0+var_E0]; bool
30EF30:  ADD             R0, SP, #0xF0+var_6C; this
30EF32:  BLX             j__ZN6CWorld27FindObjectsIntersectingCubeERK7CVectorS2_PssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool,bool,bool)
30EF36:  LDRSH.W         R0, [SP,#0xF0+var_C8]
30EF3A:  CMP             R0, #1
30EF3C:  BLT.W           loc_30F8BA
30EF40:  MOVS            R6, #0
30EF42:  SXTH            R0, R6
30EF44:  LDR.W           R1, [R5,R0,LSL#2]; CEntity *
30EF48:  MOV             R0, R4; this
30EF4A:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
30EF4E:  CMP             R0, #1
30EF50:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EF54:  ADDS            R0, R6, #1
30EF56:  SXTH            R6, R0
30EF58:  LDRSH.W         R0, [SP,#0xF0+var_C8]
30EF5C:  CMP             R6, R0
30EF5E:  BLT             loc_30EF42
30EF60:  B.W             loc_30F8BA
30EF64:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 15
30EF68:  CMP             R0, #3
30EF6A:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EF6E:  B               loc_30F130; jumptable 0030EA38 case 3
30EF70:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 19
30EF74:  CMP             R0, #3
30EF76:  BEQ.W           loc_30F130; jumptable 0030EA38 case 3
30EF7A:  CMP             R0, #2
30EF7C:  BEQ.W           loc_30F22E
30EF80:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EF84:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 20
30EF88:  CMP             R0, #3; switch 4 cases
30EF8A:  BHI.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EF8E:  TBH.W           [PC,R0,LSL#1]; switch jump
30EF92:  DCW 4; jump table for switch statement
30EF94:  DCW 0x51F
30EF96:  DCW 0x580
30EF98:  DCW 0xCF
30EF9A:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030ED88 case 0
30EF9E:  MOVS            R1, #0; bool
30EFA0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EFA4:  LDR             R1, [R4,#0x40]
30EFA6:  CMP             R1, #0
30EFA8:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EFAC:  CMP             R0, R1
30EFAE:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30EFB2:  MOV.W           R0, #0xFFFFFFFF; int
30EFB6:  MOVS            R1, #0; bool
30EFB8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EFBC:  LDR             R1, [R0,#0x14]
30EFBE:  ADD.W           R2, R1, #0x30 ; '0'
30EFC2:  CMP             R1, #0
30EFC4:  IT EQ
30EFC6:  ADDEQ           R2, R0, #4
30EFC8:  MOV.W           R0, #0xFFFFFFFF; int
30EFCC:  MOVS            R1, #0; bool
30EFCE:  VLDR            S16, [R2]
30EFD2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30EFD6:  LDR             R1, [R0,#0x14]
30EFD8:  VLDR            S2, [R4,#0x28]
30EFDC:  ADD.W           R2, R1, #0x30 ; '0'
30EFE0:  CMP             R1, #0
30EFE2:  IT EQ
30EFE4:  ADDEQ           R2, R0, #4
30EFE6:  VCMPE.F32       S2, S16
30EFEA:  VLDR            S0, [R2,#4]
30EFEE:  VMRS            APSR_nzcv, FPSCR
30EFF2:  BGT             loc_30F004
30EFF4:  VLDR            S2, [R4,#0x2C]
30EFF8:  VCMPE.F32       S2, S16
30EFFC:  VMRS            APSR_nzcv, FPSCR
30F000:  BGE.W           loc_30FFE6
30F004:  VSUB.F32        S2, S16, S2
30F008:  B.W             loc_30FFEA
30F00C:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 23
30F010:  CMP             R0, #3
30F012:  BEQ.W           loc_30F130; jumptable 0030EA38 case 3
30F016:  CMP             R0, #2
30F018:  BEQ.W           loc_30F952
30F01C:  CMP             R0, #1
30F01E:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F022:  LDR             R1, [R4,#0x40]; CEntity *
30F024:  CMP             R1, #0
30F026:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F02A:  MOV             R0, R4; this
30F02C:  MOVS            R2, #0; float
30F02E:  BLX             j__ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
30F032:  CMP             R0, #1
30F034:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F038:  MOV             R0, R4; this
30F03A:  BLX             j__ZN7CGarage20IsAnyCarBlockingDoorEv; CGarage::IsAnyCarBlockingDoor(void)
30F03E:  CMP             R0, #0
30F040:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F044:  MOV.W           R0, #0xFFFFFFFF; int
30F048:  MOVS            R1, #0; bool
30F04A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F04E:  CMP             R0, #0
30F050:  BEQ.W           loc_31037C
30F054:  MOV.W           R0, #0xFFFFFFFF; int
30F058:  MOVS            R1, #0; bool
30F05A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F05E:  B.W             loc_310384
30F062:  LDRB.W          R0, [R4,#0x4D]; jumptable 0030E9D0 case 43
30F066:  CMP             R0, #3
30F068:  BEQ             loc_30F130; jumptable 0030EA38 case 3
30F06A:  CMP             R0, #2
30F06C:  BEQ.W           loc_30F210; jumptable 0030EBBA case 2
30F070:  CMP             R0, #1
30F072:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F076:  ADD             R0, SP, #0xF0+var_B8; int
30F078:  MOV.W           R1, #0xFFFFFFFF
30F07C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F080:  ADD             R0, SP, #0xF0+var_6C; int
30F082:  MOV.W           R1, #0xFFFFFFFF
30F086:  VLDR            S16, [R4,#0x28]
30F08A:  VLDR            S18, [R4,#0x2C]
30F08E:  VLDR            S20, [SP,#0xF0+var_B8]
30F092:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F096:  ADD             R0, SP, #0xF0+var_78; int
30F098:  MOV.W           R1, #0xFFFFFFFF
30F09C:  VLDR            S22, [R4,#0x28]
30F0A0:  VLDR            S24, [R4,#0x2C]
30F0A4:  VLDR            S26, [SP,#0xF0+var_6C]
30F0A8:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F0AC:  ADD             R0, SP, #0xF0+var_C8; int
30F0AE:  MOV.W           R1, #0xFFFFFFFF
30F0B2:  VLDR            S28, [R4,#0x30]
30F0B6:  VLDR            S30, [R4,#0x34]
30F0BA:  VLDR            S17, [SP,#0xF0+var_78+4]
30F0BE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F0C2:  VLDR            S6, [R4,#0x30]
30F0C6:  VMOV.F32        S0, #0.5
30F0CA:  VLDR            S8, [R4,#0x34]
30F0CE:  VADD.F32        S2, S16, S18
30F0D2:  VADD.F32        S4, S22, S24
30F0D6:  VADD.F32        S10, S28, S30
30F0DA:  VADD.F32        S6, S6, S8
30F0DE:  VMUL.F32        S2, S2, S0
30F0E2:  VMUL.F32        S4, S4, S0
30F0E6:  VMUL.F32        S8, S10, S0
30F0EA:  VMUL.F32        S0, S6, S0
30F0EE:  VLDR            S6, [SP,#0xF0+var_C4]
30F0F2:  VSUB.F32        S2, S20, S2
30F0F6:  VSUB.F32        S4, S26, S4
30F0FA:  VSUB.F32        S8, S17, S8
30F0FE:  VSUB.F32        S0, S6, S0
30F102:  VMUL.F32        S2, S2, S4
30F106:  VMUL.F32        S0, S8, S0
30F10A:  VADD.F32        S0, S2, S0
30F10E:  VLDR            S2, =900.0
30F112:  VCMPE.F32       S0, S2
30F116:  VMRS            APSR_nzcv, FPSCR
30F11A:  BLE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F11E:  MOV             R0, R4; this
30F120:  MOVS            R1, #0; CVehicle *
30F122:  BLX             j__ZN7CGarage27IsAnyOtherCarTouchingGarageEP8CVehicle; CGarage::IsAnyOtherCarTouchingGarage(CVehicle *)
30F126:  CMP             R0, #0
30F128:  BEQ.W           loc_30F8BA
30F12C:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F130:  MOV             R0, R4; jumptable 0030EA38 case 3
30F132:  BLX             j__ZN7CGarage13SlideDoorOpenEv; CGarage::SlideDoorOpen(void)
30F136:  CMP             R0, #1
30F138:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F13C:  MOVS            R0, #1
30F13E:  B.W             loc_3102EE
30F142:  VLDR            S2, =0.0
30F146:  VLDR            S4, [R4,#0x30]
30F14A:  VCMPE.F32       S4, S0
30F14E:  VMRS            APSR_nzcv, FPSCR
30F152:  BGT             loc_30F162
30F154:  VLDR            S4, [R4,#0x34]
30F158:  VCMPE.F32       S4, S0
30F15C:  VMRS            APSR_nzcv, FPSCR
30F160:  BGE             loc_30F168
30F162:  VSUB.F32        S0, S0, S4
30F166:  B               loc_30F16C
30F168:  VLDR            S0, =0.0
30F16C:  VMUL.F32        S0, S0, S0
30F170:  VMUL.F32        S2, S2, S2
30F174:  VADD.F32        S16, S2, S0
30F178:  VLDR            S0, =225.0
30F17C:  VCMPE.F32       S16, S0
30F180:  VMRS            APSR_nzcv, FPSCR
30F184:  BLE             loc_30F192
30F186:  MOV             R0, R4; this
30F188:  BLX             j__ZN7CGarage20IsAnyCarBlockingDoorEv; CGarage::IsAnyCarBlockingDoor(void)
30F18C:  CMP             R0, #1
30F18E:  BEQ             loc_30F1C0
30F190:  B               loc_30F8BA
30F192:  VMOV.F32        S0, #16.0
30F196:  VCMPE.F32       S16, S0
30F19A:  VMRS            APSR_nzcv, FPSCR
30F19E:  BLE             loc_30F1C0
30F1A0:  MOV.W           R0, #0xFFFFFFFF; int
30F1A4:  MOVS            R1, #0; bool
30F1A6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F1AA:  CMP             R0, #0
30F1AC:  BEQ             loc_30F186
30F1AE:  MOV.W           R0, #0xFFFFFFFF; int
30F1B2:  MOVS            R1, #0; bool
30F1B4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F1B8:  LDR.W           R0, [R0,#0x5A4]
30F1BC:  CMP             R0, #0xA
30F1BE:  BEQ             loc_30F186
30F1C0:  MOV.W           R0, #0xFFFFFFFF; int
30F1C4:  MOVS            R1, #0; bool
30F1C6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F1CA:  CMP             R0, #0
30F1CC:  BEQ.W           loc_30F8C0
30F1D0:  MOV.W           R0, #0xFFFFFFFF; int
30F1D4:  MOVS            R1, #0; bool
30F1D6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F1DA:  MOV             R1, R0; CEntity *
30F1DC:  MOV             R0, R4; this
30F1DE:  BLX             j__ZN7CGarage36CountCarsWithCenterPointWithinGarageEP7CEntity; CGarage::CountCarsWithCenterPointWithinGarage(CEntity *)
30F1E2:  LDRB.W          R1, [R4,#0x4C]
30F1E6:  MOVS            R2, #4
30F1E8:  CMP             R1, #0x10
30F1EA:  IT EQ
30F1EC:  MOVEQ           R2, #2
30F1EE:  CMP             R0, R2
30F1F0:  BLT.W           loc_30F8C0
30F1F4:  MOV.W           R0, #0xFFFFFFFF; int
30F1F8:  MOVS            R1, #0; bool
30F1FA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F1FE:  CMP             R0, #0
30F200:  BEQ.W           loc_30F8A2
30F204:  MOV.W           R0, #0xFFFFFFFF; int
30F208:  MOVS            R1, #0; bool
30F20A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F20E:  B               loc_30F8AA
30F210:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030EBBA case 2
30F214:  MOVS            R1, #0; bool
30F216:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F21A:  CBZ             R0, loc_30F22E
30F21C:  MOV.W           R0, #0xFFFFFFFF; int
30F220:  MOVS            R1, #0; bool
30F222:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F226:  MOV             R1, R0; CVehicle *
30F228:  MOV             R0, R4; this
30F22A:  BLX             j__ZN7CGarage28ThrowCarsNearDoorOutOfGarageEP8CVehicle; CGarage::ThrowCarsNearDoorOutOfGarage(CVehicle *)
30F22E:  MOV             R0, R4; this
30F230:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30F234:  CMP             R0, #1
30F236:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F23A:  MOVS            R0, #0
30F23C:  B.W             loc_3102EE
30F240:  ADD             R0, SP, #0xF0+var_B8; jumptable 0030EBBA case 1
30F242:  MOV.W           R1, #0xFFFFFFFF
30F246:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F24A:  ADD             R0, SP, #0xF0+var_6C; int
30F24C:  MOV.W           R1, #0xFFFFFFFF
30F250:  VLDR            S16, [R4,#0x28]
30F254:  VLDR            S18, [R4,#0x2C]
30F258:  VLDR            S20, [SP,#0xF0+var_B8]
30F25C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F260:  ADD             R0, SP, #0xF0+var_78; int
30F262:  MOV.W           R1, #0xFFFFFFFF
30F266:  VLDR            S22, [R4,#0x28]
30F26A:  VLDR            S24, [R4,#0x2C]
30F26E:  VLDR            S26, [SP,#0xF0+var_6C]
30F272:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F276:  ADD             R0, SP, #0xF0+var_C8; int
30F278:  MOV.W           R1, #0xFFFFFFFF
30F27C:  VLDR            S28, [R4,#0x30]
30F280:  VLDR            S30, [R4,#0x34]
30F284:  VLDR            S17, [SP,#0xF0+var_78+4]
30F288:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F28C:  VLDR            S6, [R4,#0x30]
30F290:  VMOV.F32        S0, #0.5
30F294:  VLDR            S8, [R4,#0x34]
30F298:  VADD.F32        S2, S16, S18
30F29C:  VADD.F32        S4, S22, S24
30F2A0:  VADD.F32        S10, S28, S30
30F2A4:  VADD.F32        S6, S6, S8
30F2A8:  VMUL.F32        S2, S2, S0
30F2AC:  VMUL.F32        S4, S4, S0
30F2B0:  VMUL.F32        S8, S10, S0
30F2B4:  VMUL.F32        S0, S6, S0
30F2B8:  VLDR            S6, [SP,#0xF0+var_C4]
30F2BC:  VSUB.F32        S2, S20, S2
30F2C0:  VSUB.F32        S4, S26, S4
30F2C4:  VSUB.F32        S8, S17, S8
30F2C8:  VSUB.F32        S0, S6, S0
30F2CC:  VMUL.F32        S2, S2, S4
30F2D0:  VMUL.F32        S0, S8, S0
30F2D4:  VADD.F32        S0, S2, S0
30F2D8:  VLDR            S2, =900.0
30F2DC:  VCMPE.F32       S0, S2
30F2E0:  VMRS            APSR_nzcv, FPSCR
30F2E4:  BLE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F2E8:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x30F2F0)
30F2EC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
30F2EE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
30F2F0:  LDRB            R0, [R0]; CTimer::m_FrameCounter
30F2F2:  LSLS            R0, R0, #0x1B
30F2F4:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F2F8:  MOV.W           R0, #0xFFFFFFFF; int
30F2FC:  MOVS            R1, #0; bool
30F2FE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F302:  CMP             R0, #0
30F304:  BEQ.W           loc_31034A
30F308:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x30F314)
30F30C:  LDRSH.W         R0, [R0,#0x26]
30F310:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
30F312:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
30F314:  LDR.W           R0, [R1,R0,LSL#2]
30F318:  LDRB.W          R1, [R4,#0x4C]
30F31C:  LDRB.W          R0, [R0,#0x62]
30F320:  CMP             R1, #0x26 ; '&'
30F322:  BEQ.W           loc_310300
30F326:  CMP             R1, #0x25 ; '%'
30F328:  BEQ.W           loc_31031C
30F32C:  CMP             R1, #0x24 ; '$'
30F32E:  BNE.W           loc_31034A
30F332:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x30F33E)
30F336:  RSB.W           R0, R0, R0,LSL#3
30F33A:  ADD             R1, PC; mod_HandlingManager_ptr
30F33C:  LDR             R1, [R1]; mod_HandlingManager
30F33E:  ADD.W           R0, R1, R0,LSL#5
30F342:  LDRB.W          R0, [R0,#0xE7]
30F346:  LSLS            R0, R0, #0x1E
30F348:  BMI.W           loc_310334
30F34C:  B.W             loc_31034A
30F350:  MOV             R0, R4; jumptable 0030EB10 case 3
30F352:  BLX             j__ZN7CGarage13SlideDoorOpenEv; CGarage::SlideDoorOpen(void)
30F356:  VMOV.F32        S0, #0.5
30F35A:  CMP             R0, #1
30F35C:  ITT EQ
30F35E:  MOVEQ           R0, #4
30F360:  STRBEQ.W        R0, [R4,#0x4D]
30F364:  VLDR            S2, [R4,#0x38]
30F368:  VCMPE.F32       S2, S0
30F36C:  VMRS            APSR_nzcv, FPSCR
30F370:  BLE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F374:  MOVS            R0, #0; this
30F376:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30F37A:  LDRH.W          R1, [R0,#0x110]
30F37E:  BIC.W           R1, R1, #4
30F382:  STRH.W          R1, [R0,#0x110]
30F386:  MOV.W           R0, #0xFFFFFFFF; int
30F38A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
30F38E:  LDRB            R1, [R0,#0x1E]
30F390:  AND.W           R1, R1, #0xFD
30F394:  STRB            R1, [R0,#0x1E]
30F396:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F39A:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030EB10 case 4
30F39E:  MOVS            R1, #0; bool
30F3A0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F3A4:  CMP             R0, #0
30F3A6:  BEQ.W           loc_30F97A
30F3AA:  MOV.W           R0, #0xFFFFFFFF; int
30F3AE:  MOVS            R1, #0; bool
30F3B0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F3B4:  B               loc_30F982
30F3B6:  MOV             R0, R4; jumptable 0030EB10 case 1
30F3B8:  BLX             j__ZN7CGarage31IsStaticPlayerCarEntirelyInsideEv; CGarage::IsStaticPlayerCarEntirelyInside(void)
30F3BC:  CMP             R0, #1
30F3BE:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F3C2:  MOV.W           R0, #0xFFFFFFFF; int
30F3C6:  MOVS            R1, #0; bool
30F3C8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F3CC:  CMP             R0, #0
30F3CE:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F3D2:  MOV.W           R0, #0xFFFFFFFF; int
30F3D6:  MOVS            R1, #0; bool
30F3D8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F3DC:  LDR.W           R0, [R0,#0x5A4]
30F3E0:  CMP             R0, #9
30F3E2:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F3E6:  MOV.W           R0, #0xFFFFFFFF; int
30F3EA:  MOVS            R1, #0; bool
30F3EC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F3F0:  LDR.W           R0, [R0,#0x5A4]
30F3F4:  CMP             R0, #0xA
30F3F6:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F3FA:  MOV.W           R0, #0xFFFFFFFF; int
30F3FE:  MOVS            R1, #0; bool
30F400:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F404:  LDRB.W          R0, [R0,#0x4B2]
30F408:  LSLS            R0, R0, #0x1D
30F40A:  BEQ.W           loc_3103A6
30F40E:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x30F414)
30F410:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
30F412:  LDR             R1, [R0]; char *
30F414:  ADR             R0, aGa5; "GA_5"
30F416:  BLX             strcmp
30F41A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F422)
30F41C:  CMP             R0, #0
30F41E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30F420:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30F422:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30F424:  BEQ.W           loc_310452
30F428:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x30F430)
30F42A:  MOVS            R2, #0
30F42C:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
30F42E:  LDR             R0, [R0]; CGarages::MessageIDString ...
30F430:  STRB            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
30F432:  MOV             R2, #0x355F4147
30F43A:  STR             R2, [R0]; CGarages::MessageIDString
30F43C:  LDR             R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x30F44A)
30F43E:  ADD.W           R5, R1, #0xFA0
30F442:  LDR             R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x30F44E)
30F444:  LDR             R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x30F450)
30F446:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
30F448:  LDR             R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x30F454)
30F44A:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
30F44C:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
30F44E:  LDR             R0, [R0]; CGarages::MessageEndTime ...
30F450:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
30F452:  LDR             R2, [R2]; CGarages::MessageStartTime ...
30F454:  LDR             R3, [R3]; CGarages::MessageNumberInString2 ...
30F456:  LDR             R6, [R6]; CGarages::MessageNumberInString ...
30F458:  STR             R5, [R0]; CGarages::MessageEndTime
30F45A:  MOV.W           R0, #0xFFFFFFFF
30F45E:  STR             R1, [R2]; CGarages::MessageStartTime
30F460:  STR             R0, [R6]; CGarages::MessageNumberInString
30F462:  STR             R0, [R3]; CGarages::MessageNumberInString2
30F464:  LDR             R0, =(AudioEngine_ptr - 0x30F472)
30F466:  MOVS            R1, #4
30F468:  STRB.W          R1, [R4,#0x4D]
30F46C:  MOVS            R1, #0x11; int
30F46E:  ADD             R0, PC; AudioEngine_ptr
30F470:  LDR             R0, [R0]; AudioEngine ; this
30F472:  MOVS            R2, #0; float
30F474:  MOV.W           R3, #0x3F800000; float
30F478:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
30F47C:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F480:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030EB10 case 2
30F484:  MOVS            R1, #0; bool
30F486:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F48A:  CBZ             R0, loc_30F49E
30F48C:  MOV.W           R0, #0xFFFFFFFF; int
30F490:  MOVS            R1, #0; bool
30F492:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F496:  MOV             R1, R0; CVehicle *
30F498:  MOV             R0, R4; this
30F49A:  BLX             j__ZN7CGarage28ThrowCarsNearDoorOutOfGarageEP8CVehicle; CGarage::ThrowCarsNearDoorOutOfGarage(CVehicle *)
30F49E:  MOV             R0, R4; this
30F4A0:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30F4A4:  CMP             R0, #1
30F4A6:  BNE             loc_30F4BC
30F4A8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F4B4)
30F4AA:  MOVS            R1, #0
30F4AC:  STRB.W          R1, [R4,#0x4D]
30F4B0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30F4B2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30F4B4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30F4B6:  ADD.W           R0, R0, #0x7D0
30F4BA:  STR             R0, [R4,#0x3C]
30F4BC:  LDRB.W          R0, [R4,#0x4C]
30F4C0:  CMP             R0, #4
30F4C2:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F4C6:  MOV.W           R0, #(elf_hash_bucket+0x70); this
30F4CA:  MOVS            R1, #2; int
30F4CC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30F4D0:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F4D4:  DCFS 900.0
30F4D8:  DCFS 0.0
30F4DC:  DCFS 225.0
30F4E0:  VLDR            S2, =0.0
30F4E4:  VLDR            S4, [R4,#0x30]
30F4E8:  VCMPE.F32       S4, S0
30F4EC:  VMRS            APSR_nzcv, FPSCR
30F4F0:  BGT             loc_30F500
30F4F2:  VLDR            S4, [R4,#0x34]
30F4F6:  VCMPE.F32       S4, S0
30F4FA:  VMRS            APSR_nzcv, FPSCR
30F4FE:  BGE             loc_30F506
30F500:  VSUB.F32        S0, S0, S4
30F504:  B               loc_30F50A
30F506:  VLDR            S0, =0.0
30F50A:  VMUL.F32        S0, S0, S0
30F50E:  VMUL.F32        S2, S2, S2
30F512:  VADD.F32        S0, S2, S0
30F516:  VLDR            S2, =12.25
30F51A:  VCMPE.F32       S0, S2
30F51E:  VMRS            APSR_nzcv, FPSCR
30F522:  BGE             loc_30F59E
30F524:  MOV.W           R0, #0xFFFFFFFF; int
30F528:  MOVS            R1, #0; bool
30F52A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F52E:  LDRB.W          R5, [R4,#0x4C]
30F532:  CBZ             R0, loc_30F54E
30F534:  CMP             R5, #0x2C ; ','
30F536:  BEQ.W           loc_3102EC; jumptable 0030F55A case 44
30F53A:  MOV             R0, R5; this
30F53C:  MOVS            R6, #4
30F53E:  CMP             R5, #0x10
30F540:  IT EQ
30F542:  MOVEQ           R6, #2
30F544:  BLX             j__ZN8CGarages24CountCarsInHideoutGarageEh; CGarages::CountCarsInHideoutGarage(uchar)
30F548:  CMP             R0, R6
30F54A:  BGE.W           loc_30FB44
30F54E:  SUB.W           R1, R5, #0x11; switch 29 cases
30F552:  MOVS            R0, #0
30F554:  CMP             R1, #0x1C
30F556:  BHI.W           def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
30F55A:  TBH.W           [PC,R1,LSL#1]; switch jump
30F55E:  DCW 0x1D; jump table for switch statement
30F560:  DCW 0x69A
30F562:  DCW 0x6BD
30F564:  DCW 0x6BD
30F566:  DCW 0x6BD
30F568:  DCW 0x6BD
30F56A:  DCW 0x6BD
30F56C:  DCW 0x69C
30F56E:  DCW 0x69E
30F570:  DCW 0x6A0
30F572:  DCW 0x6A2
30F574:  DCW 0x6A4
30F576:  DCW 0x6A6
30F578:  DCW 0x6A8
30F57A:  DCW 0x6AA
30F57C:  DCW 0x6AC
30F57E:  DCW 0x6AE
30F580:  DCW 0x6B0
30F582:  DCW 0x6B2
30F584:  DCW 0x6BD
30F586:  DCW 0x6BD
30F588:  DCW 0x6BD
30F58A:  DCW 0x6B4
30F58C:  DCW 0x6B6
30F58E:  DCW 0x6B8
30F590:  DCW 0x6BA
30F592:  DCW 0x6BD
30F594:  DCW 0x6C7
30F596:  DCW 0x6BC
30F598:  MOVS            R0, #1; jumptable 0030F55A case 17
30F59A:  B.W             def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
30F59E:  VLDR            S2, =100.0
30F5A2:  VCMPE.F32       S0, S2
30F5A6:  VMRS            APSR_nzcv, FPSCR
30F5AA:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F5AE:  MOV.W           R0, #0xFFFFFFFF; int
30F5B2:  MOVS            R1, #0; bool
30F5B4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F5B8:  CMP             R0, #0
30F5BA:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F5BE:  MOV.W           R0, #0xFFFFFFFF; int
30F5C2:  MOVS            R1, #0; bool
30F5C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F5C8:  LDR.W           R0, [R0,#0x5A4]
30F5CC:  CMP             R0, #0xA
30F5CE:  BNE             loc_30F524
30F5D0:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F5D4:  VLDR            S16, =0.0
30F5D8:  VLDR            S2, [R4,#0x30]
30F5DC:  VCMPE.F32       S2, S0
30F5E0:  VMRS            APSR_nzcv, FPSCR
30F5E4:  BGT             loc_30F5F4
30F5E6:  VLDR            S2, [R4,#0x34]
30F5EA:  VCMPE.F32       S2, S0
30F5EE:  VMRS            APSR_nzcv, FPSCR
30F5F2:  BGE             loc_30F5FA
30F5F4:  VSUB.F32        S18, S0, S2
30F5F8:  B               loc_30F5FE
30F5FA:  VLDR            S18, =0.0
30F5FE:  ADD             R0, SP, #0xF0+var_B8; int
30F600:  MOV.W           R1, #0xFFFFFFFF
30F604:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F608:  VMOV.F32        S0, #-2.0
30F60C:  VLDR            S2, [R4,#0x1C]
30F610:  VADD.F32        S0, S2, S0
30F614:  VLDR            S2, [SP,#0xF0+var_B0]
30F618:  VCMPE.F32       S2, S0
30F61C:  VMRS            APSR_nzcv, FPSCR
30F620:  BGE             loc_30F662
30F622:  ADD             R0, SP, #0xF0+var_6C; int
30F624:  MOV.W           R1, #0xFFFFFFFF
30F628:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F62C:  VMUL.F32        S0, S18, S18
30F630:  VMUL.F32        S2, S16, S16
30F634:  VADD.F32        S0, S2, S0
30F638:  VLDR            S2, =4225.0
30F63C:  VCMPE.F32       S0, S2
30F640:  VMRS            APSR_nzcv, FPSCR
30F644:  BGT             loc_30F662
30F646:  VLDR            S0, [R4,#8]
30F64A:  VLDR            S2, [SP,#0xF0+var_64]
30F64E:  VCMPE.F32       S2, S0
30F652:  VMRS            APSR_nzcv, FPSCR
30F656:  BLE             loc_30F662
30F658:  LDRB.W          R0, [R4,#0x4D]
30F65C:  CMP             R0, #2
30F65E:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F662:  LDRB.W          R1, [R4,#0x4C]
30F666:  MOVS            R0, #0
30F668:  STRB.W          R0, [R4,#0x4D]
30F66C:  SUBS            R1, #0x11
30F66E:  UXTB            R2, R1
30F670:  CMP             R2, #0x1C
30F672:  BHI             loc_30F67E
30F674:  LDR             R0, =(unk_60FE70 - 0x30F67C)
30F676:  SXTB            R1, R1
30F678:  ADD             R0, PC; unk_60FE70
30F67A:  LDR.W           R0, [R0,R1,LSL#2]
30F67E:  LDR             R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30F686)
30F680:  MOVS            R2, #3; int
30F682:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
30F684:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
30F686:  ADD.W           R1, R1, R0,LSL#8; CStoredCar *
30F68A:  MOV             R0, R4; this
30F68C:  BLX             j__ZN7CGarage41StoreAndRemoveCarsForThisImpoundingGarageEP10CStoredCari; CGarage::StoreAndRemoveCarsForThisImpoundingGarage(CStoredCar *,int)
30F690:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F694:  DCD TheCamera_ptr - 0x30E8D2
30F698:  DCD _ZN8CGarages19bCamShouldBeOutsideE_ptr - 0x30E8D4
30F69C:  DCD TheCamera_ptr - 0x30E8F6
30F6A0:  DCD TheCamera_ptr - 0x30E974
30F6A4:  DCD _ZN8CGarages19bCamShouldBeOutsideE_ptr - 0x30E976
30F6A8:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30EB28
30F6AC:  DCD _ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30EB4E
30F6B0:  DCD AudioEngine_ptr - 0x30EB60
30F6B4:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x30EBE2
30F6B8:  DCD mod_HandlingManager_ptr - 0x30EC0C
30F6BC:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x30EE44
30F6C0:  DCD _ZN8CGarages10NoRespraysE_ptr - 0x30EEA4
30F6C4:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30EEB6
30F6C8:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x30F2F0
30F6CC:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x30F314
30F6D0:  DCD mod_HandlingManager_ptr - 0x30F33E
30F6D4:  DCD _ZN8CGarages15MessageIDStringE_ptr - 0x30F414
30F6D8:  DCB "GA_5",0
30F6DD:  DCB 0, 0, 0
30F6E0:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F422
30F6E4:  DCD _ZN8CGarages15MessageIDStringE_ptr - 0x30F430
30F6E8:  DCD _ZN8CGarages14MessageEndTimeE_ptr - 0x30F44A
30F6EC:  DCD _ZN8CGarages16MessageStartTimeE_ptr - 0x30F44E
30F6F0:  DCD _ZN8CGarages22MessageNumberInString2E_ptr - 0x30F450
30F6F4:  DCD _ZN8CGarages21MessageNumberInStringE_ptr - 0x30F454
30F6F8:  DCD AudioEngine_ptr - 0x30F472
30F6FC:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F4B4
30F700:  DCFS 12.25
30F704:  DCFS 100.0
30F708:  DCFS 4225.0
30F70C:  DCD unk_60FE70 - 0x30F67C
30F710:  DCD _ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30F686
30F714:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F87A
30F718:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F896
30F71C:  DCFS 4900.0
30F720:  DCFS 900.0
30F724:  DCFS 0.0
30F728:  DCFS 3600.0
30F72C:  DCD unk_60FE70 - 0x30FB40
30F730:  DCD _ZN8CGarages19LastTimeHelpMessageE_ptr - 0x30FD0E
30F734:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FD10
30F738:  DCD TheText_ptr - 0x30FD58
30F73C:  DCB "GA_21",0
30F742:  ALIGN 4
30F744:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FD7C
30F748:  DCD _ZN8CGarages19LastTimeHelpMessageE_ptr - 0x30FD7E
30F74C:  DCD mod_HandlingManager_ptr - 0x30FDD2
30F750:  DCD mod_HandlingManager_ptr - 0x30FDF2
30F754:  DCD _ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30FE0C
30F758:  DCD unk_60FE70 - 0x30FE2C
30F75C:  DCD _ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30FE3A
30F760:  DCD _ZN8CGarages10NoRespraysE_ptr - 0x30FE54
30F764:  ADD             R0, SP, #0xF0+var_B8; jumptable 0030EC28 case 1
30F766:  MOV.W           R1, #0xFFFFFFFF
30F76A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F76E:  ADD             R0, SP, #0xF0+var_6C; int
30F770:  MOV.W           R1, #0xFFFFFFFF
30F774:  VLDR            S16, [R4,#0x28]
30F778:  VLDR            S18, [R4,#0x2C]
30F77C:  VLDR            S20, [SP,#0xF0+var_B8]
30F780:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F784:  ADD             R0, SP, #0xF0+var_78; int
30F786:  MOV.W           R1, #0xFFFFFFFF
30F78A:  VLDR            S22, [R4,#0x28]
30F78E:  VLDR            S24, [R4,#0x2C]
30F792:  VLDR            S26, [SP,#0xF0+var_6C]
30F796:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F79A:  ADD             R0, SP, #0xF0+var_C8; int
30F79C:  MOV.W           R1, #0xFFFFFFFF
30F7A0:  VLDR            S28, [R4,#0x30]
30F7A4:  VLDR            S30, [R4,#0x34]
30F7A8:  VLDR            S17, [SP,#0xF0+var_78+4]
30F7AC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F7B0:  VLDR            S6, [R4,#0x30]
30F7B4:  VMOV.F32        S0, #0.5
30F7B8:  VLDR            S8, [R4,#0x34]
30F7BC:  VADD.F32        S2, S16, S18
30F7C0:  VADD.F32        S4, S22, S24
30F7C4:  VADD.F32        S10, S28, S30
30F7C8:  VADD.F32        S6, S6, S8
30F7CC:  VMUL.F32        S2, S2, S0
30F7D0:  VMUL.F32        S4, S4, S0
30F7D4:  VMUL.F32        S8, S10, S0
30F7D8:  VMUL.F32        S0, S6, S0
30F7DC:  VLDR            S6, [SP,#0xF0+var_C4]
30F7E0:  VSUB.F32        S2, S20, S2
30F7E4:  VSUB.F32        S4, S26, S4
30F7E8:  VSUB.F32        S8, S17, S8
30F7EC:  VSUB.F32        S0, S6, S0
30F7F0:  VMUL.F32        S2, S2, S4
30F7F4:  VMUL.F32        S0, S8, S0
30F7F8:  VADD.F32        S0, S2, S0
30F7FC:  VLDR            S2, =900.0
30F800:  VCMPE.F32       S0, S2
30F804:  VMRS            APSR_nzcv, FPSCR
30F808:  BGT.W           loc_310356
30F80C:  LDR             R5, [R4,#0x40]
30F80E:  CMP             R5, #0
30F810:  BEQ.W           loc_310356
30F814:  MOV.W           R0, #0xFFFFFFFF; int
30F818:  MOVS            R1, #0; bool
30F81A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30F81E:  CMP             R5, R0
30F820:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F824:  MOV             R0, R4; this
30F826:  BLX             j__ZN7CGarage31IsStaticPlayerCarEntirelyInsideEv; CGarage::IsStaticPlayerCarEntirelyInside(void)
30F82A:  CMP             R0, #1
30F82C:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F830:  MOV             R0, R4; this
30F832:  BLX             j__ZN7CGarage20IsAnyCarBlockingDoorEv; CGarage::IsAnyCarBlockingDoor(void)
30F836:  CMP             R0, #0
30F838:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F83C:  B.W             loc_31041C
30F840:  LDR             R1, [R4,#0x40]; jumptable 0030EC28 case 2
30F842:  CMP             R1, #0
30F844:  ITT NE
30F846:  MOVNE           R0, R4; this
30F848:  BLXNE           j__ZN7CGarage28ThrowCarsNearDoorOutOfGarageEP8CVehicle; CGarage::ThrowCarsNearDoorOutOfGarage(CVehicle *)
30F84C:  MOV             R0, R4; this
30F84E:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30F852:  CMP             R0, #1
30F854:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F858:  LDRB.W          R0, [R4,#0x4E]
30F85C:  LSLS            R0, R0, #0x1F
30F85E:  BNE.W           loc_30F23A
30F862:  LDR             R0, [R4,#0x40]
30F864:  CMP             R0, #0
30F866:  BEQ.W           loc_3101E8
30F86A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F87A)
30F86E:  MOVS            R1, #5
30F870:  STRB.W          R1, [R4,#0x4D]
30F874:  MOVS            R1, #0
30F876:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30F878:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30F87A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30F87C:  ADD.W           R0, R0, #0x7D0
30F880:  STRD.W          R0, R1, [R4,#0x3C]
30F884:  B               loc_30F374
30F886:  CMP             R0, #0xE; jumptable 0030EC28 case 5
30F888:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F88C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30F896)
30F890:  LDR             R1, [R4,#0x3C]
30F892:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30F894:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30F896:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30F898:  CMP             R0, R1
30F89A:  BHI.W           loc_3102EC; jumptable 0030F55A case 44
30F89E:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F8A2:  MOV.W           R0, #0xFFFFFFFF; int
30F8A6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30F8AA:  MOV             R1, R0; CEntity *
30F8AC:  MOV             R0, R4; this
30F8AE:  MOV.W           R2, #0x3E800000; float
30F8B2:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
30F8B6:  CMP             R0, #1
30F8B8:  BNE             loc_30F8C0
30F8BA:  MOVS            R0, #2
30F8BC:  B.W             loc_3102EE
30F8C0:  VLDR            S0, =4900.0
30F8C4:  VCMPE.F32       S16, S0
30F8C8:  VMRS            APSR_nzcv, FPSCR
30F8CC:  BLE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F8D0:  MOVS            R0, #2
30F8D2:  STRB.W          R0, [R4,#0x4D]
30F8D6:  MOV             R0, R4; this
30F8D8:  BLX             j__ZN7CGarage31RemoveCarsBlockingDoorNotInsideEv; CGarage::RemoveCarsBlockingDoorNotInside(void)
30F8DC:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F8E0:  MOV             R0, R4; this
30F8E2:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30F8E6:  CMP             R0, #1
30F8E8:  ADD.W           R6, R4, #0x28 ; '('
30F8EC:  ITT EQ
30F8EE:  MOVEQ           R0, #0
30F8F0:  STRBEQ.W        R0, [R4,#0x4D]
30F8F4:  ADD             R5, SP, #0xF0+var_B8
30F8F6:  LDR             R0, [R4,#8]
30F8F8:  LDM             R6, {R1-R3,R6}
30F8FA:  STRD.W          R1, R3, [SP,#0xF0+var_6C]
30F8FE:  MOVS            R1, #1
30F900:  STR             R0, [SP,#0xF0+var_64]
30F902:  MOVS            R3, #word_10; __int16 *
30F904:  LDR             R0, [R4,#0x1C]
30F906:  STRD.W          R2, R6, [SP,#0xF0+var_78]
30F90A:  ADD             R2, SP, #0xF0+var_C8; CVector *
30F90C:  STR             R0, [SP,#0xF0+var_70]
30F90E:  MOVS            R0, #0
30F910:  STRD.W          R5, R0, [SP,#0xF0+var_F0]; __int16
30F914:  STRD.W          R1, R1, [SP,#0xF0+var_E8]; bool
30F918:  ADD             R1, SP, #0xF0+var_78; CVector *
30F91A:  STRD.W          R0, R0, [SP,#0xF0+var_E0]; bool
30F91E:  ADD             R0, SP, #0xF0+var_6C; this
30F920:  BLX             j__ZN6CWorld27FindObjectsIntersectingCubeERK7CVectorS2_PssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool,bool,bool)
30F924:  LDRSH.W         R0, [SP,#0xF0+var_C8]
30F928:  CMP             R0, #1
30F92A:  BLT.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F92E:  MOVS            R6, #0
30F930:  SXTH            R0, R6
30F932:  LDR.W           R1, [R5,R0,LSL#2]; CEntity *
30F936:  MOV             R0, R4; this
30F938:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
30F93C:  CMP             R0, #0
30F93E:  BNE.W           loc_3102EC; jumptable 0030F55A case 44
30F942:  ADDS            R0, R6, #1
30F944:  SXTH            R6, R0
30F946:  LDRSH.W         R0, [SP,#0xF0+var_C8]
30F94A:  CMP             R6, R0
30F94C:  BLT             loc_30F930
30F94E:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F952:  MOV             R0, R4; this
30F954:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30F958:  CMP             R0, #1
30F95A:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F95E:  MOVS            R0, #0
30F960:  STRB.W          R0, [R4,#0x4D]
30F964:  MOVS            R0, #0; this
30F966:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30F96A:  LDRH.W          R1, [R0,#0x110]
30F96E:  BIC.W           R1, R1, #4
30F972:  STRH.W          R1, [R0,#0x110]
30F976:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F97A:  MOV.W           R0, #0xFFFFFFFF; int
30F97E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30F982:  MOV             R1, R0; CEntity *
30F984:  MOV             R0, R4; this
30F986:  MOVS            R2, #0; float
30F988:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
30F98C:  CMP             R0, #1
30F98E:  BEQ.W           loc_30F13C
30F992:  B.W             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F996:  LDR             R1, [R4,#0x40]; jumptable 0030ED88 case 2
30F998:  CMP             R1, #0
30F99A:  ITT NE
30F99C:  MOVNE           R0, R4; this
30F99E:  BLXNE           j__ZN7CGarage28ThrowCarsNearDoorOutOfGarageEP8CVehicle; CGarage::ThrowCarsNearDoorOutOfGarage(CVehicle *)
30F9A2:  MOV             R0, R4; this
30F9A4:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30F9A8:  CMP             R0, #1
30F9AA:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30F9AE:  LDRB.W          R0, [R4,#0x4E]
30F9B2:  LSLS            R0, R0, #0x1F
30F9B4:  BNE.W           loc_30F23A
30F9B8:  LDR             R0, [R4,#0x40]; this
30F9BA:  CMP             R0, #0
30F9BC:  BEQ.W           loc_3101E8
30F9C0:  MOVS            R1, #5
30F9C2:  STRB.W          R1, [R4,#0x4D]
30F9C6:  BLX             j__Z36DestroyVehicleAndDriverAndPassengersP8CVehicle; DestroyVehicleAndDriverAndPassengers(CVehicle *)
30F9CA:  MOVS            R0, #0
30F9CC:  STR             R0, [R4,#0x40]
30F9CE:  B               loc_30F374
30F9D0:  ADD             R0, SP, #0xF0+var_B8; jumptable 0030EF8E case 1
30F9D2:  MOV.W           R1, #0xFFFFFFFF
30F9D6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F9DA:  ADD             R0, SP, #0xF0+var_6C; int
30F9DC:  MOV.W           R1, #0xFFFFFFFF
30F9E0:  VLDR            S16, [R4,#0x28]
30F9E4:  VLDR            S18, [R4,#0x2C]
30F9E8:  VLDR            S20, [SP,#0xF0+var_B8]
30F9EC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30F9F0:  ADD             R0, SP, #0xF0+var_78; int
30F9F2:  MOV.W           R1, #0xFFFFFFFF
30F9F6:  VLDR            S22, [R4,#0x28]
30F9FA:  VLDR            S24, [R4,#0x2C]
30F9FE:  VLDR            S26, [SP,#0xF0+var_6C]
30FA02:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30FA06:  ADD             R0, SP, #0xF0+var_C8; int
30FA08:  MOV.W           R1, #0xFFFFFFFF
30FA0C:  VLDR            S28, [R4,#0x30]
30FA10:  VLDR            S30, [R4,#0x34]
30FA14:  VLDR            S17, [SP,#0xF0+var_78+4]
30FA18:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30FA1C:  VLDR            S6, [R4,#0x30]
30FA20:  VMOV.F32        S0, #0.5
30FA24:  VLDR            S8, [R4,#0x34]
30FA28:  VADD.F32        S2, S16, S18
30FA2C:  VADD.F32        S4, S22, S24
30FA30:  VADD.F32        S10, S28, S30
30FA34:  VADD.F32        S6, S6, S8
30FA38:  VMUL.F32        S2, S2, S0
30FA3C:  VMUL.F32        S4, S4, S0
30FA40:  VMUL.F32        S8, S10, S0
30FA44:  VMUL.F32        S0, S6, S0
30FA48:  VLDR            S6, [SP,#0xF0+var_C4]
30FA4C:  VSUB.F32        S2, S20, S2
30FA50:  VSUB.F32        S4, S26, S4
30FA54:  VSUB.F32        S8, S17, S8
30FA58:  VSUB.F32        S0, S6, S0
30FA5C:  VMUL.F32        S2, S2, S4
30FA60:  VMUL.F32        S0, S8, S0
30FA64:  VADD.F32        S0, S2, S0
30FA68:  VLDR            S2, =900.0
30FA6C:  VCMPE.F32       S0, S2
30FA70:  VMRS            APSR_nzcv, FPSCR
30FA74:  BLE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FA78:  LDR             R1, [R4,#0x40]; CEntity *
30FA7A:  CMP             R1, #0
30FA7C:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FA80:  MOV             R0, R4; this
30FA82:  MOVS            R2, #0; float
30FA84:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
30FA88:  CMP             R0, #1
30FA8A:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FA8E:  B.W             loc_310356
30FA92:  LDR             R1, [R4,#0x40]; jumptable 0030EF8E case 2
30FA94:  CMP             R1, #0
30FA96:  BNE.W           loc_30F228
30FA9A:  B.W             loc_30F22E
30FA9E:  VLDR            S16, =0.0
30FAA2:  VLDR            S2, [R4,#0x30]
30FAA6:  VCMPE.F32       S2, S0
30FAAA:  VMRS            APSR_nzcv, FPSCR
30FAAE:  BGT             loc_30FABE
30FAB0:  VLDR            S2, [R4,#0x34]
30FAB4:  VCMPE.F32       S2, S0
30FAB8:  VMRS            APSR_nzcv, FPSCR
30FABC:  BGE             loc_30FAC4
30FABE:  VSUB.F32        S18, S0, S2
30FAC2:  B               loc_30FAC8
30FAC4:  VLDR            S18, =0.0
30FAC8:  ADD             R0, SP, #0xF0+var_B8; int
30FACA:  MOV.W           R1, #0xFFFFFFFF
30FACE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30FAD2:  VMOV.F32        S0, #-2.0
30FAD6:  VLDR            S2, [R4,#0x1C]
30FADA:  VADD.F32        S0, S2, S0
30FADE:  VLDR            S2, [SP,#0xF0+var_B0]
30FAE2:  VCMPE.F32       S2, S0
30FAE6:  VMRS            APSR_nzcv, FPSCR
30FAEA:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FAEE:  ADD             R0, SP, #0xF0+var_6C; int
30FAF0:  MOV.W           R1, #0xFFFFFFFF
30FAF4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30FAF8:  VMUL.F32        S0, S18, S18
30FAFC:  VMUL.F32        S2, S16, S16
30FB00:  VADD.F32        S0, S2, S0
30FB04:  VLDR            S2, =3600.0
30FB08:  VCMPE.F32       S0, S2
30FB0C:  VMRS            APSR_nzcv, FPSCR
30FB10:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FB14:  VLDR            S0, [R4,#8]
30FB18:  VLDR            S2, [SP,#0xF0+var_64]
30FB1C:  VCMPE.F32       S2, S0
30FB20:  VMRS            APSR_nzcv, FPSCR
30FB24:  BLE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FB28:  LDRB.W          R0, [R4,#0x4C]
30FB2C:  SUBS            R0, #0x11
30FB2E:  UXTB            R1, R0
30FB30:  CMP             R1, #0x1C
30FB32:  BHI.W           loc_30FE02
30FB36:  LDR.W           R1, =(unk_60FE70 - 0x30FB40)
30FB3A:  SXTB            R0, R0
30FB3C:  ADD             R1, PC; unk_60FE70
30FB3E:  LDR.W           R0, [R1,R0,LSL#2]
30FB42:  B               loc_30FE04
30FB44:  ADD             R1, SP, #0xF0+var_B8; CObject **
30FB46:  ADD             R2, SP, #0xF0+var_6C; CObject **
30FB48:  MOV             R0, R4; this
30FB4A:  BLX             j__ZN7CGarage19FindDoorsWithGarageEPP7CObjectS2_; CGarage::FindDoorsWithGarage(CObject **,CObject **)
30FB4E:  LDR             R5, [SP,#0xF0+var_B8]
30FB50:  CMP             R5, #0
30FB52:  BEQ             loc_30FC26
30FB54:  LDR             R0, [R5,#0x14]
30FB56:  ADDS            R4, R5, #4
30FB58:  CMP             R0, #0
30FB5A:  MOV             R1, R4
30FB5C:  IT NE
30FB5E:  ADDNE.W         R1, R0, #0x30 ; '0'
30FB62:  MOV.W           R0, #0xFFFFFFFF; int
30FB66:  VLDR            S16, [R1]
30FB6A:  MOVS            R1, #0; bool
30FB6C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FB70:  LDR             R1, [R0,#0x14]
30FB72:  LDR             R2, [R5,#0x14]
30FB74:  ADD.W           R3, R1, #0x30 ; '0'
30FB78:  CMP             R1, #0
30FB7A:  IT EQ
30FB7C:  ADDEQ           R3, R0, #4
30FB7E:  CMP             R2, #0
30FB80:  MOV             R0, R4
30FB82:  VLDR            S18, [R3]
30FB86:  IT NE
30FB88:  ADDNE.W         R0, R2, #0x30 ; '0'
30FB8C:  MOVS            R1, #0; bool
30FB8E:  VLDR            S20, [R0]
30FB92:  MOV.W           R0, #0xFFFFFFFF; int
30FB96:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FB9A:  LDR             R1, [R0,#0x14]
30FB9C:  LDR             R2, [R5,#0x14]
30FB9E:  ADD.W           R3, R1, #0x30 ; '0'
30FBA2:  CMP             R1, #0
30FBA4:  IT EQ
30FBA6:  ADDEQ           R3, R0, #4
30FBA8:  CMP             R2, #0
30FBAA:  MOV             R0, R4
30FBAC:  VLDR            S22, [R3]
30FBB0:  IT NE
30FBB2:  ADDNE.W         R0, R2, #0x30 ; '0'
30FBB6:  MOVS            R1, #0; bool
30FBB8:  VLDR            S24, [R0,#4]
30FBBC:  MOV.W           R0, #0xFFFFFFFF; int
30FBC0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FBC4:  LDR             R1, [R0,#0x14]
30FBC6:  LDR             R2, [R5,#0x14]
30FBC8:  ADD.W           R3, R1, #0x30 ; '0'
30FBCC:  CMP             R1, #0
30FBCE:  IT EQ
30FBD0:  ADDEQ           R3, R0, #4
30FBD2:  CMP             R2, #0
30FBD4:  VLDR            S26, [R3,#4]
30FBD8:  IT NE
30FBDA:  ADDNE.W         R4, R2, #0x30 ; '0'
30FBDE:  MOV.W           R0, #0xFFFFFFFF; int
30FBE2:  MOVS            R1, #0; bool
30FBE4:  VLDR            S28, [R4,#4]
30FBE8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FBEC:  LDR             R1, [R0,#0x14]
30FBEE:  VSUB.F32        S0, S16, S18
30FBF2:  VSUB.F32        S4, S20, S22
30FBF6:  ADD.W           R2, R1, #0x30 ; '0'
30FBFA:  CMP             R1, #0
30FBFC:  IT EQ
30FBFE:  ADDEQ           R2, R0, #4
30FC00:  VSUB.F32        S6, S24, S26
30FC04:  VLDR            S2, [R2,#4]
30FC08:  VSUB.F32        S2, S28, S2
30FC0C:  VMUL.F32        S0, S0, S4
30FC10:  VMOV.F32        S4, #25.0
30FC14:  VMUL.F32        S2, S6, S2
30FC18:  VADD.F32        S0, S0, S2
30FC1C:  VCMPE.F32       S0, S4
30FC20:  VMRS            APSR_nzcv, FPSCR
30FC24:  BLT             loc_30FD02
30FC26:  LDR             R5, [SP,#0xF0+var_6C]
30FC28:  CMP             R5, #0
30FC2A:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FC2E:  LDR             R0, [R5,#0x14]
30FC30:  ADDS            R4, R5, #4
30FC32:  CMP             R0, #0
30FC34:  MOV             R1, R4
30FC36:  IT NE
30FC38:  ADDNE.W         R1, R0, #0x30 ; '0'
30FC3C:  MOV.W           R0, #0xFFFFFFFF; int
30FC40:  VLDR            S16, [R1]
30FC44:  MOVS            R1, #0; bool
30FC46:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FC4A:  LDR             R1, [R0,#0x14]
30FC4C:  LDR             R2, [R5,#0x14]
30FC4E:  ADD.W           R3, R1, #0x30 ; '0'
30FC52:  CMP             R1, #0
30FC54:  IT EQ
30FC56:  ADDEQ           R3, R0, #4
30FC58:  CMP             R2, #0
30FC5A:  MOV             R0, R4
30FC5C:  VLDR            S18, [R3]
30FC60:  IT NE
30FC62:  ADDNE.W         R0, R2, #0x30 ; '0'
30FC66:  MOVS            R1, #0; bool
30FC68:  VLDR            S20, [R0]
30FC6C:  MOV.W           R0, #0xFFFFFFFF; int
30FC70:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FC74:  LDR             R1, [R0,#0x14]
30FC76:  LDR             R2, [R5,#0x14]
30FC78:  ADD.W           R3, R1, #0x30 ; '0'
30FC7C:  CMP             R1, #0
30FC7E:  IT EQ
30FC80:  ADDEQ           R3, R0, #4
30FC82:  CMP             R2, #0
30FC84:  MOV             R0, R4
30FC86:  VLDR            S22, [R3]
30FC8A:  IT NE
30FC8C:  ADDNE.W         R0, R2, #0x30 ; '0'
30FC90:  MOVS            R1, #0; bool
30FC92:  VLDR            S24, [R0,#4]
30FC96:  MOV.W           R0, #0xFFFFFFFF; int
30FC9A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FC9E:  LDR             R1, [R0,#0x14]
30FCA0:  LDR             R2, [R5,#0x14]
30FCA2:  ADD.W           R3, R1, #0x30 ; '0'
30FCA6:  CMP             R1, #0
30FCA8:  IT EQ
30FCAA:  ADDEQ           R3, R0, #4
30FCAC:  CMP             R2, #0
30FCAE:  VLDR            S26, [R3,#4]
30FCB2:  IT NE
30FCB4:  ADDNE.W         R4, R2, #0x30 ; '0'
30FCB8:  MOV.W           R0, #0xFFFFFFFF; int
30FCBC:  MOVS            R1, #0; bool
30FCBE:  VLDR            S28, [R4,#4]
30FCC2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FCC6:  LDR             R1, [R0,#0x14]
30FCC8:  VSUB.F32        S0, S16, S18
30FCCC:  VSUB.F32        S4, S20, S22
30FCD0:  ADD.W           R2, R1, #0x30 ; '0'
30FCD4:  CMP             R1, #0
30FCD6:  IT EQ
30FCD8:  ADDEQ           R2, R0, #4
30FCDA:  VSUB.F32        S6, S24, S26
30FCDE:  VLDR            S2, [R2,#4]
30FCE2:  VSUB.F32        S2, S28, S2
30FCE6:  VMUL.F32        S0, S0, S4
30FCEA:  VMOV.F32        S4, #25.0
30FCEE:  VMUL.F32        S2, S6, S2
30FCF2:  VADD.F32        S0, S0, S2
30FCF6:  VCMPE.F32       S0, S4
30FCFA:  VMRS            APSR_nzcv, FPSCR
30FCFE:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FD02:  LDR.W           R0, =(_ZN8CGarages19LastTimeHelpMessageE_ptr - 0x30FD0E)
30FD06:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FD10)
30FD0A:  ADD             R0, PC; _ZN8CGarages19LastTimeHelpMessageE_ptr
30FD0C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30FD0E:  LDR             R0, [R0]; CGarages::LastTimeHelpMessage ...
30FD10:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30FD12:  LDR             R0, [R0]; CGarages::LastTimeHelpMessage
30FD14:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30FD16:  SUBS            R0, R1, R0
30FD18:  MOVW            R1, #0x4651
30FD1C:  CMP             R0, R1
30FD1E:  BCC.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FD22:  MOV.W           R0, #0xFFFFFFFF; int
30FD26:  MOVS            R1, #0; bool
30FD28:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FD2C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
30FD30:  CMP             R0, #3
30FD32:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FD36:  MOV.W           R0, #0xFFFFFFFF; int
30FD3A:  MOVS            R1, #0; bool
30FD3C:  MOVS            R5, #0
30FD3E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FD42:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
30FD46:  CMP             R0, #5
30FD48:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FD4C:  LDR.W           R0, =(TheText_ptr - 0x30FD58)
30FD50:  ADR.W           R4, aGa21; "GA_21"
30FD54:  ADD             R0, PC; TheText_ptr
30FD56:  MOV             R1, R4; CKeyGen *
30FD58:  LDR             R0, [R0]; TheText ; this
30FD5A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30FD5E:  MOV             R1, R0; char *
30FD60:  MOVS            R0, #1
30FD62:  STRD.W          R0, R5, [SP,#0xF0+var_F0]; bool
30FD66:  MOV             R0, R4; this
30FD68:  MOVS            R2, #0; unsigned __int16 *
30FD6A:  MOVS            R3, #0; bool
30FD6C:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
30FD70:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FD7C)
30FD74:  LDR.W           R1, =(_ZN8CGarages19LastTimeHelpMessageE_ptr - 0x30FD7E)
30FD78:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30FD7A:  ADD             R1, PC; _ZN8CGarages19LastTimeHelpMessageE_ptr
30FD7C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30FD7E:  LDR             R1, [R1]; CGarages::LastTimeHelpMessage ...
30FD80:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30FD82:  STR             R0, [R1]; CGarages::LastTimeHelpMessage
30FD84:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FD86:  MOV.W           R0, #0xFFFFFFFF; int
30FD8A:  MOVS            R1, #0; bool
30FD8C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FD90:  LDR             R1, [R4,#0x40]; CEntity *
30FD92:  CMP             R1, #0
30FD94:  IT NE
30FD96:  CMPNE           R0, R1
30FD98:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FD9C:  MOV             R0, R4; this
30FD9E:  MOVS            R2, #0; float
30FDA0:  BLX             j__ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
30FDA4:  CMP             R0, #1
30FDA6:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FDAA:  MOV.W           R0, #0xFFFFFFFF; int
30FDAE:  MOVS            R1, #0; bool
30FDB0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FDB4:  CMP             R0, #0
30FDB6:  BEQ.W           loc_310402
30FDBA:  MOV.W           R0, #0xFFFFFFFF; int
30FDBE:  MOVS            R1, #0; bool
30FDC0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FDC4:  B               loc_31040A
30FDC6:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x30FDD2)
30FDCA:  RSB.W           R0, R0, R0,LSL#3
30FDCE:  ADD             R1, PC; mod_HandlingManager_ptr
30FDD0:  LDR             R1, [R1]; mod_HandlingManager
30FDD2:  ADD.W           R0, R1, R0,LSL#5
30FDD6:  LDRB.W          R0, [R0,#0xE7]
30FDDA:  TST.W           R0, #6
30FDDE:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FDE2:  B.W             loc_30EFB2
30FDE6:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x30FDF2)
30FDEA:  RSB.W           R0, R0, R0,LSL#3
30FDEE:  ADD             R1, PC; mod_HandlingManager_ptr
30FDF0:  LDR             R1, [R1]; mod_HandlingManager
30FDF2:  ADD.W           R0, R1, R0,LSL#5
30FDF6:  LDRB.W          R0, [R0,#0xE7]
30FDFA:  LSLS            R0, R0, #0x1D
30FDFC:  BMI.W           loc_30EFB2
30FE00:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FE02:  MOVS            R0, #0
30FE04:  LDR.W           R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30FE0C)
30FE08:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
30FE0A:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
30FE0C:  ADD.W           R1, R1, R0,LSL#8
30FE10:  MOV             R0, R4
30FE12:  BLX             j__ZN7CGarage22NeatlyLineUpStoredCarsEP10CStoredCar; CGarage::NeatlyLineUpStoredCars(CStoredCar *)
30FE16:  LDRB.W          R0, [R4,#0x4C]
30FE1A:  SUBS            R0, #0x11
30FE1C:  UXTB            R1, R0
30FE1E:  CMP             R1, #0x1C
30FE20:  BHI             loc_30FE30
30FE22:  LDR.W           R1, =(unk_60FE70 - 0x30FE2C)
30FE26:  SXTB            R0, R0
30FE28:  ADD             R1, PC; unk_60FE70
30FE2A:  LDR.W           R0, [R1,R0,LSL#2]
30FE2E:  B               loc_30FE32
30FE30:  MOVS            R0, #0
30FE32:  LDR.W           R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30FE3A)
30FE36:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
30FE38:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
30FE3A:  ADD.W           R1, R1, R0,LSL#8; CStoredCar *
30FE3E:  MOV             R0, R4; this
30FE40:  BLX             j__ZN7CGarage34RestoreCarsForThisImpoundingGarageEP10CStoredCar; CGarage::RestoreCarsForThisImpoundingGarage(CStoredCar *)
30FE44:  CMP             R0, #1
30FE46:  BEQ.W           loc_30F13C
30FE4A:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FE4C:  LDR.W           R0, =(_ZN8CGarages10NoRespraysE_ptr - 0x30FE54); jumptable 0030EE8E case 1
30FE50:  ADD             R0, PC; _ZN8CGarages10NoRespraysE_ptr
30FE52:  LDR             R0, [R0]; CGarages::NoResprays ...
30FE54:  LDRB            R0, [R0]; CGarages::NoResprays
30FE56:  CMP             R0, #0
30FE58:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FE5C:  MOV             R0, R4; this
30FE5E:  BLX             j__ZN7CGarage31IsStaticPlayerCarEntirelyInsideEv; CGarage::IsStaticPlayerCarEntirelyInside(void)
30FE62:  MOV             R6, R0
30FE64:  MOV.W           R0, #0xFFFFFFFF; int
30FE68:  MOVS            R1, #0; bool
30FE6A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FE6E:  MOV             R5, R0
30FE70:  CMP             R6, #1
30FE72:  BNE.W           loc_31036A
30FE76:  ADDW            R0, R5, #0x4CC
30FE7A:  VLDR            S0, =250.0
30FE7E:  VLDR            S2, [R0]
30FE82:  VCMPE.F32       S2, S0
30FE86:  VMRS            APSR_nzcv, FPSCR
30FE8A:  BLT             loc_30FEBE
30FE8C:  MOV             R0, R5; this
30FE8E:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
30FE92:  CBNZ            R0, loc_30FEBE
30FE94:  LDR.W           R0, [R5,#0x5A4]
30FE98:  CMP             R0, #0xA
30FE9A:  BEQ             loc_30FEBE
30FE9C:  LDRSH.W         R0, [R5,#0x26]
30FEA0:  SUBW            R1, R0, #0x197
30FEA4:  CMP             R1, #0x1E
30FEA6:  BHI.W           loc_3109C0
30FEAA:  MOVS            R2, #1
30FEAC:  LSL.W           R1, R2, R1
30FEB0:  MOV             R2, #0x41000201
30FEB8:  TST             R1, R2
30FEBA:  BEQ.W           loc_3109C0
30FEBE:  MOV.W           R0, #0xFFFFFFFF; int
30FEC2:  MOVS            R1, #0; bool
30FEC4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FEC8:  LDR.W           R0, [R0,#0x5A4]
30FECC:  CMP             R0, #0xA
30FECE:  BNE.W           loc_310484
30FED2:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x30FED8)
30FED4:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
30FED6:  LDR             R1, [R0]; char *
30FED8:  ADR             R0, aGa1b; "GA_1B"
30FEDA:  BLX             strcmp
30FEDE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FEE6)
30FEE0:  CMP             R0, #0
30FEE2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30FEE4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30FEE6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30FEE8:  BEQ.W           loc_31084E
30FEEC:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x30FEF4)
30FEEE:  MOVS            R2, #0x42 ; 'B'
30FEF0:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
30FEF2:  LDR             R0, [R0]; CGarages::MessageIDString ...
30FEF4:  STRH            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
30FEF6:  MOV             R2, #0x315F4147
30FEFE:  STR             R2, [R0]; CGarages::MessageIDString
30FF00:  LDR             R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x30FF0A)
30FF02:  LDR             R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x30FF0E)
30FF04:  LDR             R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x30FF10)
30FF06:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
30FF08:  LDR             R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x30FF12)
30FF0A:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
30FF0C:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
30FF0E:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
30FF10:  B               loc_3104D2
30FF12:  MOV.W           R0, #0xFFFFFFFF; jumptable 0030EE8E case 2
30FF16:  MOVS            R1, #0; bool
30FF18:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FF1C:  CBZ             R0, loc_30FF30
30FF1E:  MOV.W           R0, #0xFFFFFFFF; int
30FF22:  MOVS            R1, #0; bool
30FF24:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FF28:  MOV             R1, R0; CVehicle *
30FF2A:  MOV             R0, R4; this
30FF2C:  BLX             j__ZN7CGarage28ThrowCarsNearDoorOutOfGarageEP8CVehicle; CGarage::ThrowCarsNearDoorOutOfGarage(CVehicle *)
30FF30:  MOV             R0, R4; this
30FF32:  BLX             j__ZN7CGarage15SlideDoorClosedEv; CGarage::SlideDoorClosed(void)
30FF36:  CMP             R0, #1
30FF38:  BNE             loc_30FF76
30FF3A:  LDR             R0, =(AudioEngine_ptr - 0x30FF48)
30FF3C:  MOVS            R1, #0
30FF3E:  STRB.W          R1, [R4,#0x4D]
30FF42:  MOVS            R1, #0x10; int
30FF44:  ADD             R0, PC; AudioEngine_ptr
30FF46:  MOVS            R2, #0; float
30FF48:  MOV.W           R3, #0x3F800000; float
30FF4C:  LDR             R0, [R0]; AudioEngine ; this
30FF4E:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
30FF52:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FF58)
30FF54:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30FF56:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30FF58:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30FF5A:  ADD.W           R0, R0, #0x7D0
30FF5E:  STR             R0, [R4,#0x3C]
30FF60:  MOVS            R0, #dword_B0; this
30FF62:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30FF66:  MOV             R1, R0; unsigned __int16
30FF68:  MOVS            R0, #(dword_B0+1); this
30FF6A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30FF6E:  MOVS            R0, #0xB0
30FF70:  MOVS            R1, #0
30FF72:  NOP
30FF74:  NOP
30FF76:  MOV.W           R0, #0xFFFFFFFF; int
30FF7A:  MOVS            R1, #0; bool
30FF7C:  MOVS            R5, #0
30FF7E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FF82:  CBZ             R0, loc_30FFA8
30FF84:  MOV.W           R0, #0xFFFFFFFF; int
30FF88:  MOVS            R1, #0; bool
30FF8A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FF8E:  STR.W           R5, [R0,#0x8F8]
30FF92:  MOV.W           R0, #0xFFFFFFFF; int
30FF96:  MOVS            R1, #0; bool
30FF98:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30FF9C:  LDR.W           R1, [R0,#0x430]
30FFA0:  ORR.W           R1, R1, #0x800000
30FFA4:  STR.W           R1, [R0,#0x430]
30FFA8:  VMOV.F32        S0, #-10.0
30FFAC:  VLDR            S4, [R4,#0x28]
30FFB0:  VMOV.F32        S2, #10.0
30FFB4:  VLDR            S6, [R4,#0x2C]
30FFB8:  VLDR            S8, [R4,#0x30]
30FFBC:  VLDR            S10, [R4,#0x34]
30FFC0:  VADD.F32        S4, S4, S0
30FFC4:  VADD.F32        S6, S6, S2
30FFC8:  VADD.F32        S0, S8, S0
30FFCC:  VADD.F32        S2, S10, S2
30FFD0:  VMOV            R0, S4; this
30FFD4:  VMOV            R2, S6; float
30FFD8:  VMOV            R1, S0; float
30FFDC:  VMOV            R3, S2; float
30FFE0:  BLX             j__ZN6CWorld19CallOffChaseForAreaEffff; CWorld::CallOffChaseForArea(float,float,float,float)
30FFE4:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
30FFE6:  VLDR            S2, =0.0
30FFEA:  VLDR            S4, [R4,#0x30]
30FFEE:  VCMPE.F32       S4, S0
30FFF2:  VMRS            APSR_nzcv, FPSCR
30FFF6:  BGT             loc_310006
30FFF8:  VLDR            S4, [R4,#0x34]
30FFFC:  VCMPE.F32       S4, S0
310000:  VMRS            APSR_nzcv, FPSCR
310004:  BGE             loc_31000C
310006:  VSUB.F32        S0, S0, S4
31000A:  B               loc_310010
31000C:  VLDR            S0, =0.0
310010:  VMUL.F32        S0, S0, S0
310014:  VMUL.F32        S2, S2, S2
310018:  VADD.F32        S0, S2, S0
31001C:  VLDR            S2, =64.0
310020:  B               loc_310286
310022:  LDR             R0, =(AudioEngine_ptr - 0x31002A)
310024:  MOVS            R1, #0x12
310026:  ADD             R0, PC; AudioEngine_ptr
310028:  B               loc_310030
31002A:  LDR             R0, =(AudioEngine_ptr - 0x310032)
31002C:  MOVS            R1, #0x13; int
31002E:  ADD             R0, PC; AudioEngine_ptr
310030:  LDR             R0, [R0]; AudioEngine ; this
310032:  MOVS            R2, #0; float
310034:  MOV.W           R3, #0x3F800000; float
310038:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
31003C:  LDR             R0, =(_ZN8CGarages12BombsAreFreeE_ptr - 0x310048)
31003E:  MOVS            R1, #3
310040:  STRB.W          R1, [R4,#0x4D]
310044:  ADD             R0, PC; _ZN8CGarages12BombsAreFreeE_ptr
310046:  LDR             R0, [R0]; CGarages::BombsAreFree ...
310048:  LDRB            R0, [R0]; CGarages::BombsAreFree
31004A:  CBNZ            R0, loc_310074
31004C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x310058)
31004E:  MOV.W           R2, #0x194
310052:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x31005A)
310054:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
310056:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
310058:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
31005A:  LDR             R1, [R1]; CWorld::Players ...
31005C:  LDR             R0, [R0]; CWorld::PlayerInFocus
31005E:  SMLABB.W        R0, R0, R2, R1
310062:  LDR.W           R1, [R0,#0xB8]!
310066:  CMP             R1, #1
310068:  BLT             loc_310074
31006A:  SUBS.W          R1, R1, #0x1F4
31006E:  IT LT
310070:  MOVLT           R1, #0
310072:  STR             R1, [R0]
310074:  MOV.W           R0, #0xFFFFFFFF; int
310078:  MOVS            R1, #0; bool
31007A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31007E:  CMP             R0, #0
310080:  BEQ             loc_31013A
310082:  MOV.W           R0, #0xFFFFFFFF; int
310086:  MOVS            R1, #0; bool
310088:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31008C:  LDR.W           R0, [R0,#0x5A0]
310090:  CBZ             R0, loc_3100A4
310092:  MOV.W           R0, #0xFFFFFFFF; int
310096:  MOVS            R1, #0; bool
310098:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31009C:  LDR.W           R0, [R0,#0x5A0]
3100A0:  CMP             R0, #9
3100A2:  BNE             loc_31013A
3100A4:  MOV.W           R0, #0xFFFFFFFF; int
3100A8:  MOVS            R1, #0; bool
3100AA:  LDRB.W          R5, [R4,#0x4C]
3100AE:  MOV.W           R9, #0
3100B2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3100B6:  LDRB.W          R1, [R0,#0x4B2]
3100BA:  ADDS            R2, R5, #7
3100BC:  AND.W           R2, R2, #7
3100C0:  AND.W           R1, R1, #0xF8
3100C4:  ORRS            R1, R2
3100C6:  STRB.W          R1, [R0,#0x4B2]
3100CA:  MOV.W           R0, #0xFFFFFFFF; int
3100CE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3100D2:  MOV             R5, R0
3100D4:  MOV.W           R0, #0xFFFFFFFF; int
3100D8:  MOVS            R1, #0; bool
3100DA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3100DE:  STR.W           R5, [R0,#0x4DC]
3100E2:  LDRB.W          R0, [R4,#0x4C]
3100E6:  CMP             R0, #4
3100E8:  BNE             loc_31012E
3100EA:  MOV.W           R0, #0xFFFFFFFF; int
3100EE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3100F2:  MOV             R5, R0
3100F4:  MOVS            R0, #0x28 ; '('
3100F6:  MOVS            R1, #1
3100F8:  MOV.W           R8, #0x28 ; '('
3100FC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
310100:  LDR             R6, [R0,#0x14]
310102:  MOV             R0, R5
310104:  MOVS            R1, #0x28 ; '('
310106:  MOVS            R2, #1
310108:  MOVS            R3, #1
31010A:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
31010E:  RSB.W           R0, R6, R6,LSL#3
310112:  ADD.W           R0, R5, R0,LSL#2
310116:  STR.W           R9, [R0,#0x5A8]
31011A:  LDR.W           R0, [R5,#0x444]
31011E:  STRB.W          R6, [R0,#0x20]
310122:  LDR.W           R0, [R5,#0x710]
310126:  CMP             R0, #0x37 ; '7'
310128:  IT NE
31012A:  STRNE.W         R8, [R5,#0x710]
31012E:  MOVS            R1, #0
310130:  MOVS            R0, #(off_7C+3); this
310132:  MOVT            R1, #0x4120; unsigned __int16
310136:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
31013A:  LDRB.W          R0, [R4,#0x4C]
31013E:  CMP             R0, #4
310140:  BEQ             loc_310158
310142:  CMP             R0, #3
310144:  BEQ             loc_310164
310146:  CMP             R0, #2
310148:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
31014C:  LDR.W           R0, =(TheText_ptr - 0x310158)
310150:  ADR.W           R4, aGa6; "GA_6"
310154:  ADD             R0, PC; TheText_ptr
310156:  B               loc_31016E
310158:  LDR.W           R0, =(TheText_ptr - 0x310164)
31015C:  ADR.W           R4, aGa8; "GA_8"
310160:  ADD             R0, PC; TheText_ptr
310162:  B               loc_31016E
310164:  LDR.W           R0, =(TheText_ptr - 0x310170)
310168:  ADR.W           R4, aGa7; "GA_7"
31016C:  ADD             R0, PC; TheText_ptr
31016E:  LDR             R0, [R0]; TheText ; this
310170:  MOV             R1, R4; CKeyGen *
310172:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
310176:  MOV             R1, R0; char *
310178:  MOVS            R0, #0
31017A:  MOVS            R2, #1
31017C:  MOVS            R3, #0; bool
31017E:  STRD.W          R2, R0, [SP,#0xF0+var_F0]; bool
310182:  MOV             R0, R4; this
310184:  MOVS            R2, #0; unsigned __int16 *
310186:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
31018A:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
31018C:  MOVS            R0, #2; jumptable 0030ED3A case 18
31018E:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
310190:  MOVS            R0, #3; jumptable 0030ED3A case 24
310192:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
310194:  MOVS            R0, #4; jumptable 0030ED3A case 25
310196:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
310198:  MOVS            R0, #5; jumptable 0030ED3A case 26
31019A:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
31019C:  MOVS            R0, #6; jumptable 0030ED3A case 27
31019E:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101A0:  MOVS            R0, #7; jumptable 0030ED3A case 28
3101A2:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101A4:  MOVS            R0, #8; jumptable 0030ED3A case 29
3101A6:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101A8:  MOVS            R0, #9; jumptable 0030ED3A case 30
3101AA:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101AC:  MOVS            R0, #0xA; jumptable 0030ED3A case 31
3101AE:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101B0:  MOVS            R0, #0xB; jumptable 0030ED3A case 32
3101B2:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101B4:  MOVS            R0, #0xC; jumptable 0030ED3A case 33
3101B6:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101B8:  MOVS            R0, #0xD; jumptable 0030ED3A case 34
3101BA:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101BC:  MOVS            R0, #0xE; jumptable 0030ED3A case 35
3101BE:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101C0:  MOVS            R0, #0xF; jumptable 0030ED3A case 39
3101C2:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101C4:  MOVS            R0, #0x10; jumptable 0030ED3A case 40
3101C6:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101C8:  MOVS            R0, #0x11; jumptable 0030ED3A case 41
3101CA:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101CC:  MOVS            R0, #0x12; jumptable 0030ED3A case 42
3101CE:  B               def_30ED3A; jumptable 0030ED3A default case, cases 19-23,36-38,43
3101D0:  MOVS            R0, #0x13; jumptable 0030ED3A case 45
3101D2:  LDR.W           R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x3101DC); jumptable 0030ED3A default case, cases 19-23,36-38,43
3101D6:  MOVS            R2, #4; int
3101D8:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
3101DA:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
3101DC:  ADD.W           R1, R1, R0,LSL#8; CStoredCar *
3101E0:  MOV             R0, R4; this
3101E2:  BLX             j__ZN7CGarage32StoreAndRemoveCarsForThisHideOutEP10CStoredCari; CGarage::StoreAndRemoveCarsForThisHideOut(CStoredCar *,int)
3101E6:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
3101E8:  MOVS            R0, #0
3101EA:  STRB.W          R0, [R4,#0x4D]
3101EE:  B.W             loc_30F374
3101F2:  ALIGN 4
3101F4:  DCFS 250.0
3101F8:  DCD _ZN8CGarages15MessageIDStringE_ptr - 0x30FED8
3101FC:  DCB "GA_1B",0
310202:  ALIGN 4
310204:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FEE6
310208:  DCD _ZN8CGarages15MessageIDStringE_ptr - 0x30FEF4
31020C:  DCD _ZN8CGarages14MessageEndTimeE_ptr - 0x30FF0A
310210:  DCD _ZN8CGarages16MessageStartTimeE_ptr - 0x30FF0E
310214:  DCD _ZN8CGarages22MessageNumberInString2E_ptr - 0x30FF10
310218:  DCD _ZN8CGarages21MessageNumberInStringE_ptr - 0x30FF12
31021C:  DCD AudioEngine_ptr - 0x30FF48
310220:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30FF58
310224:  DCFS 0.0
310228:  DCFS 64.0
31022C:  DCD AudioEngine_ptr - 0x31002A
310230:  DCD AudioEngine_ptr - 0x310032
310234:  DCD _ZN8CGarages12BombsAreFreeE_ptr - 0x310048
310238:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x310058
31023C:  DCD _ZN6CWorld7PlayersE_ptr - 0x31005A
310240:  DCFS 289.0
310244:  DCFS 1000.0
310248:  DCFS 970.0
31024C:  VLDR            S2, =0.0
310250:  VLDR            S4, [R4,#0x30]
310254:  VCMPE.F32       S4, S0
310258:  VMRS            APSR_nzcv, FPSCR
31025C:  BGT             loc_31026C
31025E:  VLDR            S4, [R4,#0x34]
310262:  VCMPE.F32       S4, S0
310266:  VMRS            APSR_nzcv, FPSCR
31026A:  BGE             loc_310272
31026C:  VSUB.F32        S0, S0, S4
310270:  B               loc_310276
310272:  VLDR            S0, =0.0
310276:  VMUL.F32        S0, S0, S0
31027A:  VMUL.F32        S2, S2, S2
31027E:  VADD.F32        S0, S2, S0
310282:  VLDR            S2, =289.0
310286:  VCMPE.F32       S0, S2
31028A:  VMRS            APSR_nzcv, FPSCR
31028E:  BGE             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310290:  B               loc_3102EC; jumptable 0030F55A case 44
310292:  MOVS            R0, #2; jumptable 0030F55A case 18
310294:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
310296:  MOVS            R0, #3; jumptable 0030F55A case 24
310298:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
31029A:  MOVS            R0, #4; jumptable 0030F55A case 25
31029C:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
31029E:  MOVS            R0, #5; jumptable 0030F55A case 26
3102A0:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102A2:  MOVS            R0, #6; jumptable 0030F55A case 27
3102A4:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102A6:  MOVS            R0, #7; jumptable 0030F55A case 28
3102A8:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102AA:  MOVS            R0, #8; jumptable 0030F55A case 29
3102AC:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102AE:  MOVS            R0, #9; jumptable 0030F55A case 30
3102B0:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102B2:  MOVS            R0, #0xA; jumptable 0030F55A case 31
3102B4:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102B6:  MOVS            R0, #0xB; jumptable 0030F55A case 32
3102B8:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102BA:  MOVS            R0, #0xC; jumptable 0030F55A case 33
3102BC:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102BE:  MOVS            R0, #0xD; jumptable 0030F55A case 34
3102C0:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102C2:  MOVS            R0, #0xE; jumptable 0030F55A case 35
3102C4:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102C6:  MOVS            R0, #0xF; jumptable 0030F55A case 39
3102C8:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102CA:  MOVS            R0, #0x10; jumptable 0030F55A case 40
3102CC:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102CE:  MOVS            R0, #0x11; jumptable 0030F55A case 41
3102D0:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102D2:  MOVS            R0, #0x12; jumptable 0030F55A case 42
3102D4:  B               def_30F55A; jumptable 0030F55A default case, cases 19-23,36-38,43
3102D6:  MOVS            R0, #(word_12+1); jumptable 0030F55A case 45
3102D8:  LDR.W           R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x3102E0); jumptable 0030F55A default case, cases 19-23,36-38,43
3102DC:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
3102DE:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
3102E0:  ADD.W           R1, R1, R0,LSL#8; CStoredCar *
3102E4:  BLX             j__ZN7CGarage25RestoreCarsForThisHideOutEP10CStoredCar; CGarage::RestoreCarsForThisHideOut(CStoredCar *)
3102E8:  CMP             R0, #1
3102EA:  BNE             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
3102EC:  MOVS            R0, #3; jumptable 0030F55A case 44
3102EE:  STRB.W          R0, [R4,#0x4D]
3102F2:  ADD             SP, SP, #0x90; jumptable 0030E9D0 default case, cases 6-10,12,13,22
3102F4:  VPOP            {D8-D15}
3102F8:  ADD             SP, SP, #4
3102FA:  POP.W           {R8-R11}
3102FE:  POP             {R4-R7,PC}; float
310300:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x31030C)
310304:  RSB.W           R0, R0, R0,LSL#3
310308:  ADD             R1, PC; mod_HandlingManager_ptr
31030A:  LDR             R1, [R1]; mod_HandlingManager
31030C:  ADD.W           R0, R1, R0,LSL#5
310310:  LDRB.W          R0, [R0,#0xE7]
310314:  TST.W           R0, #6
310318:  BNE             loc_31034A
31031A:  B               loc_310334
31031C:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x310328)
310320:  RSB.W           R0, R0, R0,LSL#3
310324:  ADD             R1, PC; mod_HandlingManager_ptr
310326:  LDR             R1, [R1]; mod_HandlingManager
310328:  ADD.W           R0, R1, R0,LSL#5
31032C:  LDRB.W          R0, [R0,#0xE7]
310330:  LSLS            R0, R0, #0x1D
310332:  BPL             loc_31034A
310334:  MOV.W           R0, #0xFFFFFFFF; int
310338:  MOVS            R1, #0; bool
31033A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31033E:  MOV             R1, R0; CEntity *
310340:  MOV             R0, R4; this
310342:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
310346:  CMP             R0, #0
310348:  BNE             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
31034A:  MOV             R0, R4; this
31034C:  MOVS            R1, #0; CVehicle *
31034E:  BLX             j__ZN7CGarage27IsAnyOtherCarTouchingGarageEP8CVehicle; CGarage::IsAnyOtherCarTouchingGarage(CVehicle *)
310352:  CMP             R0, #0
310354:  BNE             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310356:  LDRB.W          R0, [R4,#0x4E]
31035A:  MOVS            R1, #2
31035C:  STRB.W          R1, [R4,#0x4D]
310360:  ORR.W           R0, R0, #1
310364:  STRB.W          R0, [R4,#0x4E]
310368:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
31036A:  MOV.W           R0, #0xFFFFFFFF; int
31036E:  CMP             R5, #0
310370:  BEQ.W           loc_310718
310374:  MOVS            R1, #0; bool
310376:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31037A:  B               loc_31071C
31037C:  MOV.W           R0, #0xFFFFFFFF; int
310380:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
310384:  MOV             R1, R0; CEntity *
310386:  MOV             R0, R4; this
310388:  MOVS            R2, #0; float
31038A:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
31038E:  CMP             R0, #1
310390:  BNE             def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310392:  MOVS            R0, #0; this
310394:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
310398:  LDRH.W          R1, [R0,#0x110]
31039C:  ORR.W           R1, R1, #4
3103A0:  STRH.W          R1, [R0,#0x110]
3103A4:  B               loc_31043E
3103A6:  LDR.W           R0, =(_ZN8CGarages12BombsAreFreeE_ptr - 0x3103AE)
3103AA:  ADD             R0, PC; _ZN8CGarages12BombsAreFreeE_ptr
3103AC:  LDR             R0, [R0]; CGarages::BombsAreFree ...
3103AE:  LDRB            R0, [R0]; CGarages::BombsAreFree
3103B0:  CBNZ            R0, loc_3103D8
3103B2:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3103C2)
3103B6:  MOV.W           R2, #0x194
3103BA:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3103C4)
3103BE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3103C0:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3103C2:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3103C4:  LDR             R1, [R1]; int
3103C6:  LDR             R0, [R0]; CWorld::PlayerInFocus
3103C8:  SMLABB.W        R0, R0, R2, R1
3103CC:  LDR.W           R0, [R0,#0xB8]
3103D0:  CMP.W           R0, #0x1F4
3103D4:  BLT.W           loc_3108B0
3103D8:  MOVS            R0, #2
3103DA:  STRB.W          R0, [R4,#0x4D]
3103DE:  MOVS            R0, #0; this
3103E0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3103E4:  LDRH.W          R1, [R0,#0x110]
3103E8:  ORR.W           R1, R1, #4
3103EC:  STRH.W          R1, [R0,#0x110]
3103F0:  MOV.W           R0, #0xFFFFFFFF; int
3103F4:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
3103F8:  LDRB            R1, [R0,#0x1E]
3103FA:  ORR.W           R1, R1, #2
3103FE:  STRB            R1, [R0,#0x1E]
310400:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310402:  MOV.W           R0, #0xFFFFFFFF; int
310406:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31040A:  MOV             R1, R0; CEntity *
31040C:  MOV             R0, R4; this
31040E:  MOV.W           R2, #0x40000000; float
310412:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
310416:  CMP             R0, #1
310418:  BNE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
31041C:  MOVS            R0, #0; this
31041E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
310422:  LDRH.W          R1, [R0,#0x110]
310426:  ORR.W           R1, R1, #4
31042A:  STRH.W          R1, [R0,#0x110]
31042E:  MOV.W           R0, #0xFFFFFFFF; int
310432:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
310436:  LDRB            R1, [R0,#0x1E]
310438:  ORR.W           R1, R1, #2
31043C:  STRB            R1, [R0,#0x1E]
31043E:  LDRB.W          R0, [R4,#0x4E]
310442:  MOVS            R1, #2
310444:  STRB.W          R1, [R4,#0x4D]
310448:  AND.W           R0, R0, #0xFE
31044C:  STRB.W          R0, [R4,#0x4E]
310450:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310452:  LDR.W           R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x31045A)
310456:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310458:  LDR             R0, [R0]; CGarages::MessageStartTime ...
31045A:  LDR             R0, [R0]; CGarages::MessageStartTime
31045C:  CMP             R1, R0
31045E:  BCC.W           loc_30F428
310462:  LDR.W           R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x31046A)
310466:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310468:  LDR             R2, [R2]; CGarages::MessageEndTime ...
31046A:  LDR             R2, [R2]; CGarages::MessageEndTime
31046C:  CMP             R1, R2
31046E:  BHI.W           loc_30F428
310472:  SUBS            R0, R1, R0
310474:  CMP.W           R0, #0x1F4
310478:  BLS.W           loc_30F464
31047C:  SUB.W           R1, R1, #0x1F4
310480:  B.W             loc_30F43C
310484:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x31048C)
310488:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
31048A:  LDR             R1, [R0]; char *
31048C:  ADR.W           R0, aGa1; "GA_1"
310490:  BLX             strcmp
310494:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31049E)
310498:  CMP             R0, #0
31049A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31049C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
31049E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3104A0:  BEQ.W           loc_310880
3104A4:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x3104AE)
3104A8:  MOVS            R2, #0
3104AA:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
3104AC:  LDR             R0, [R0]; CGarages::MessageIDString ...
3104AE:  STRB            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
3104B0:  MOV             R2, #0x315F4147
3104B8:  STR             R2, [R0]; CGarages::MessageIDString
3104BA:  LDR.W           R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x3104CA)
3104BE:  LDR.W           R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x3104D0)
3104C2:  LDR.W           R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x3104D2)
3104C6:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
3104C8:  LDR.W           R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x3104D4)
3104CC:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
3104CE:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
3104D0:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
3104D2:  LDR             R0, [R0]; CGarages::MessageEndTime ...
3104D4:  ADD.W           R5, R1, #0xFA0
3104D8:  LDR             R2, [R2]; CGarages::MessageStartTime ...
3104DA:  LDR             R3, [R3]; CGarages::MessageNumberInString2 ...
3104DC:  LDR             R6, [R6]; CGarages::MessageNumberInString ...
3104DE:  STR             R5, [R0]; CGarages::MessageEndTime
3104E0:  MOV.W           R0, #0xFFFFFFFF
3104E4:  STR             R1, [R2]; CGarages::MessageStartTime
3104E6:  STR             R0, [R6]; CGarages::MessageNumberInString
3104E8:  STR             R0, [R3]; CGarages::MessageNumberInString2
3104EA:  LDR.W           R0, =(AudioEngine_ptr - 0x3104FA)
3104EE:  MOVS            R1, #4
3104F0:  STRB.W          R1, [R4,#0x4D]
3104F4:  MOVS            R1, #0xF; int
3104F6:  ADD             R0, PC; AudioEngine_ptr
3104F8:  LDR             R0, [R0]; AudioEngine ; this
3104FA:  MOVS            R2, #0; float
3104FC:  MOV.W           R3, #0x3F800000; float
310500:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
310504:  MOV.W           R0, #0xFFFFFFFF; int
310508:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
31050C:  LDR.W           R1, =(_ZN8CGarages21LastGaragePlayerWasInE_ptr - 0x310514)
310510:  ADD             R1, PC; _ZN8CGarages21LastGaragePlayerWasInE_ptr
310512:  B               loc_310756
310514:  MOV.W           R11, #0
310518:  MOV.W           R0, #0xFFFFFFFF; int
31051C:  MOVS            R1, #0; bool
31051E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310522:  CMP             R0, #0
310524:  BEQ.W           loc_310716
310528:  MOV.W           R0, #0xFFFFFFFF; int
31052C:  MOVS            R1, #0; bool
31052E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310532:  LDR.W           R0, [R0,#0x5A0]
310536:  CBZ             R0, loc_31054C
310538:  MOV.W           R0, #0xFFFFFFFF; int
31053C:  MOVS            R1, #0; bool
31053E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310542:  LDR.W           R0, [R0,#0x5A0]
310546:  CMP             R0, #9
310548:  BNE.W           loc_310716
31054C:  MOV.W           R0, #0xFFFFFFFF; int
310550:  MOVS            R1, #0; bool
310552:  STR.W           R8, [SP,#0xF0+var_CC]
310556:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31055A:  ADDW            R0, R0, #0x4CC
31055E:  MOVS            R1, #0; bool
310560:  VLDR            S16, [R0]
310564:  MOV.W           R0, #0xFFFFFFFF; int
310568:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31056C:  ADDW            R0, R0, #0x4CC
310570:  VLDR            S0, =1000.0
310574:  MOVS            R1, #0; bool
310576:  VLDR            S18, =970.0
31057A:  VLDR            S2, [R0]
31057E:  MOV.W           R0, #0xFFFFFFFF; int
310582:  VMAX.F32        D10, D1, D0
310586:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31058A:  VCMPE.F32       S16, S18
31058E:  ADDW            R0, R0, #0x4CC
310592:  VMRS            APSR_nzcv, FPSCR
310596:  MOV.W           R8, #0
31059A:  VSTR            S20, [R0]
31059E:  MOV.W           R0, #0xFFFFFFFF; int
3105A2:  MOV.W           R1, #0; bool
3105A6:  IT LT
3105A8:  MOVLT.W         R8, #1
3105AC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3105B0:  LDR.W           R5, [R0,#0x5A0]
3105B4:  MOV.W           R0, #0xFFFFFFFF; int
3105B8:  MOVS            R1, #0; bool
3105BA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3105BE:  MOVS            R1, #0
3105C0:  CMP             R5, #0
3105C2:  ITE NE
3105C4:  STRNE.W         R1, [R0,#0x7D0]
3105C8:  STREQ.W         R1, [R0,#0x8F8]
3105CC:  MOV.W           R0, #0xFFFFFFFF; int
3105D0:  MOVS            R1, #0; bool
3105D2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3105D6:  LDR             R1, [R0]
3105D8:  LDR.W           R1, [R1,#0xCC]
3105DC:  BLX             R1
3105DE:  MOVS            R0, #(dword_88+2); this
3105E0:  MOV.W           R1, #0x3F800000; unsigned __int16
3105E4:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3105E8:  MOV.W           R0, #0xFFFFFFFF; int
3105EC:  MOVS            R1, #0; bool
3105EE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3105F2:  LDR             R0, [R0,#0x14]
3105F4:  VLDR            S0, [R0,#0x28]
3105F8:  VCMPE.F32       S0, #0.0
3105FC:  VMRS            APSR_nzcv, FPSCR
310600:  BGE             loc_3106DA
310602:  MOV.W           R0, #0xFFFFFFFF; int
310606:  MOVS            R1, #0; bool
310608:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31060C:  LDR             R0, [R0,#0x14]
31060E:  MOVS            R1, #0; bool
310610:  VLDR            S0, [R0,#0x20]
310614:  MOV.W           R0, #0xFFFFFFFF; int
310618:  VNEG.F32        S16, S0
31061C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310620:  LDR             R0, [R0,#0x14]
310622:  MOVS            R1, #0; bool
310624:  VSTR            S16, [R0,#0x20]
310628:  MOV.W           R0, #0xFFFFFFFF; int
31062C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310630:  LDR             R0, [R0,#0x14]
310632:  MOVS            R1, #0; bool
310634:  VLDR            S0, [R0,#0x24]
310638:  MOV.W           R0, #0xFFFFFFFF; int
31063C:  VNEG.F32        S16, S0
310640:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310644:  LDR             R0, [R0,#0x14]
310646:  MOVS            R1, #0; bool
310648:  VSTR            S16, [R0,#0x24]
31064C:  MOV.W           R0, #0xFFFFFFFF; int
310650:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310654:  LDR             R0, [R0,#0x14]
310656:  MOVS            R1, #0; bool
310658:  VLDR            S0, [R0,#0x28]
31065C:  MOV.W           R0, #0xFFFFFFFF; int
310660:  VNEG.F32        S16, S0
310664:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310668:  LDR             R0, [R0,#0x14]
31066A:  MOVS            R1, #0; bool
31066C:  VSTR            S16, [R0,#0x28]
310670:  MOV.W           R0, #0xFFFFFFFF; int
310674:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310678:  LDR             R0, [R0,#0x14]
31067A:  MOVS            R1, #0; bool
31067C:  VLDR            S0, [R0]
310680:  MOV.W           R0, #0xFFFFFFFF; int
310684:  VNEG.F32        S16, S0
310688:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31068C:  LDR             R0, [R0,#0x14]
31068E:  MOVS            R1, #0; bool
310690:  VSTR            S16, [R0]
310694:  MOV.W           R0, #0xFFFFFFFF; int
310698:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31069C:  LDR             R0, [R0,#0x14]
31069E:  MOVS            R1, #0; bool
3106A0:  VLDR            S0, [R0,#4]
3106A4:  MOV.W           R0, #0xFFFFFFFF; int
3106A8:  VNEG.F32        S16, S0
3106AC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3106B0:  LDR             R0, [R0,#0x14]
3106B2:  MOVS            R1, #0; bool
3106B4:  VSTR            S16, [R0,#4]
3106B8:  MOV.W           R0, #0xFFFFFFFF; int
3106BC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3106C0:  LDR             R0, [R0,#0x14]
3106C2:  MOVS            R1, #0; bool
3106C4:  VLDR            S0, [R0,#8]
3106C8:  MOV.W           R0, #0xFFFFFFFF; int
3106CC:  VNEG.F32        S16, S0
3106D0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3106D4:  LDR             R0, [R0,#0x14]
3106D6:  VSTR            S16, [R0,#8]
3106DA:  MOV.W           R0, #0xFFFFFFFF; int
3106DE:  MOVS            R1, #0; bool
3106E0:  ORR.W           R11, R11, R8
3106E4:  MOVS            R5, #0
3106E6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3106EA:  MOV             R9, R0
3106EC:  LDR.W           R8, [SP,#0xF0+var_CC]
3106F0:  LDRB.W          R0, [R9,#0x87C]
3106F4:  MOV.W           R10, #0
3106F8:  LSLS            R0, R0, #0x1E
3106FA:  BMI.W           loc_310C20
3106FE:  MOV             R0, R9; this
310700:  STR.W           R11, [SP,#0xF0+var_D0]
310704:  BLX             j__ZN8CVehicle13GetRemapIndexEv; CVehicle::GetRemapIndex(void)
310708:  CMP.W           R0, #0xFFFFFFFF
31070C:  BLE.W           loc_310926
310710:  MOV.W           R10, #0
310714:  B               loc_310C1A
310716:  B               loc_310C3A
310718:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31071C:  MOV             R1, R0; CEntity *
31071E:  MOV             R0, R4; this
310720:  MOVS            R2, #0; float
310722:  BLX             j__ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
310726:  CBZ             R0, loc_310748
310728:  LDR.W           R0, =(_ZN8CGarages21LastGaragePlayerWasInE_ptr - 0x310730)
31072C:  ADD             R0, PC; _ZN8CGarages21LastGaragePlayerWasInE_ptr
31072E:  LDR             R0, [R0]; CGarages::LastGaragePlayerWasIn ...
310730:  LDR             R0, [R0]; CGarages::LastGaragePlayerWasIn
310732:  CMP             R0, R8
310734:  BNE             loc_310764
310736:  MOV.W           R0, #0xFFFFFFFF; int
31073A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
31073E:  LDRB            R1, [R0,#0x1E]
310740:  AND.W           R1, R1, #0xFD
310744:  STRB            R1, [R0,#0x1E]
310746:  B               loc_310764
310748:  MOV.W           R0, #0xFFFFFFFF; int
31074C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
310750:  LDR.W           R1, =(_ZN8CGarages21LastGaragePlayerWasInE_ptr - 0x310758)
310754:  ADD             R1, PC; _ZN8CGarages21LastGaragePlayerWasInE_ptr
310756:  LDR             R1, [R1]; CGarages::LastGaragePlayerWasIn ...
310758:  LDRB            R2, [R0,#0x1E]
31075A:  ORR.W           R2, R2, #2
31075E:  STRB            R2, [R0,#0x1E]
310760:  STR.W           R8, [R1]; CGarages::LastGaragePlayerWasIn
310764:  MOV.W           R0, #0xFFFFFFFF; int
310768:  MOVS            R1, #0; bool
31076A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31076E:  CMP             R0, #0
310770:  BEQ.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310774:  MOV.W           R0, #0xFFFFFFFF; int
310778:  MOVS            R1, #0; bool
31077A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31077E:  LDR             R1, [R0,#0x14]
310780:  ADD.W           R2, R1, #0x30 ; '0'
310784:  CMP             R1, #0
310786:  IT EQ
310788:  ADDEQ           R2, R0, #4
31078A:  MOV.W           R0, #0xFFFFFFFF; int
31078E:  MOVS            R1, #0; bool
310790:  VLDR            S16, [R2]
310794:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310798:  LDR             R1, [R0,#0x14]
31079A:  VLDR            S0, [R4,#0x28]
31079E:  ADD.W           R2, R1, #0x30 ; '0'
3107A2:  CMP             R1, #0
3107A4:  IT EQ
3107A6:  ADDEQ           R2, R0, #4
3107A8:  VCMPE.F32       S0, S16
3107AC:  VLDR            S4, [R2,#4]
3107B0:  VMRS            APSR_nzcv, FPSCR
3107B4:  BLE             loc_3107BC
3107B6:  VSUB.F32        S6, S16, S0
3107BA:  B               loc_3107D2
3107BC:  VLDR            S2, [R4,#0x2C]
3107C0:  VCMPE.F32       S2, S16
3107C4:  VMRS            APSR_nzcv, FPSCR
3107C8:  ITE LT
3107CA:  VSUBLT.F32      S6, S16, S2
3107CE:  VLDRGE          S6, =0.0
3107D2:  VLDR            S2, [R4,#0x30]
3107D6:  VCMPE.F32       S2, S4
3107DA:  VMRS            APSR_nzcv, FPSCR
3107DE:  BLE             loc_3107E6
3107E0:  VSUB.F32        S4, S4, S2
3107E4:  B               loc_3107FC
3107E6:  VLDR            S8, [R4,#0x34]
3107EA:  VCMPE.F32       S8, S4
3107EE:  VMRS            APSR_nzcv, FPSCR
3107F2:  ITE LT
3107F4:  VSUBLT.F32      S4, S4, S8
3107F8:  VLDRGE          S4, =0.0
3107FC:  VMUL.F32        S4, S4, S4
310800:  VMUL.F32        S6, S6, S6
310804:  VADD.F32        S4, S6, S4
310808:  VLDR            S6, =64.0
31080C:  VCMPE.F32       S4, S6
310810:  VMRS            APSR_nzcv, FPSCR
310814:  BGE.W           def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
310818:  VMOV.F32        S4, #-10.0
31081C:  VLDR            S8, [R4,#0x2C]
310820:  VMOV.F32        S6, #10.0
310824:  VLDR            S10, [R4,#0x34]
310828:  VADD.F32        S0, S0, S4
31082C:  VADD.F32        S2, S2, S4
310830:  VADD.F32        S4, S8, S6
310834:  VADD.F32        S6, S10, S6
310838:  VMOV            R0, S0; this
31083C:  VMOV            R1, S2; float
310840:  VMOV            R2, S4; float
310844:  VMOV            R3, S6; float
310848:  BLX             j__ZN6CWorld19CallOffChaseForAreaEffff; CWorld::CallOffChaseForArea(float,float,float,float)
31084C:  B               def_30E9D0; jumptable 0030E9D0 default case, cases 6-10,12,13,22
31084E:  LDR.W           R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310856)
310852:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310854:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310856:  LDR             R0, [R0]; CGarages::MessageStartTime
310858:  CMP             R1, R0
31085A:  BCC.W           loc_30FEEC
31085E:  LDR.W           R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310866)
310862:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310864:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310866:  LDR             R2, [R2]; CGarages::MessageEndTime
310868:  CMP             R1, R2
31086A:  BHI.W           loc_30FEEC
31086E:  SUBS            R0, R1, R0
310870:  CMP.W           R0, #0x1F4
310874:  BLS.W           loc_3104EA
310878:  SUB.W           R1, R1, #0x1F4
31087C:  B.W             loc_30FF00
310880:  LDR.W           R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310888)
310884:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310886:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310888:  LDR             R0, [R0]; CGarages::MessageStartTime
31088A:  CMP             R1, R0
31088C:  BCC.W           loc_3104A4
310890:  LDR.W           R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310898)
310894:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310896:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310898:  LDR             R2, [R2]; CGarages::MessageEndTime
31089A:  CMP             R1, R2
31089C:  BHI.W           loc_3104A4
3108A0:  SUBS            R0, R1, R0
3108A2:  CMP.W           R0, #0x1F4
3108A6:  BLS.W           loc_3104EA
3108AA:  SUB.W           R1, R1, #0x1F4
3108AE:  B               loc_3104BA
3108B0:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x3108B8)
3108B4:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
3108B6:  LDR             R1, [R0]; char *
3108B8:  ADR.W           R0, aGa4; "GA_4"
3108BC:  BLX             strcmp
3108C0:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3108CA)
3108C4:  CMP             R0, #0
3108C6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3108C8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3108CA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3108CC:  BEQ             loc_31098C
3108CE:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x3108D8)
3108D2:  MOVS            R2, #0
3108D4:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
3108D6:  LDR             R0, [R0]; CGarages::MessageIDString ...
3108D8:  STRB            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
3108DA:  MOV             R2, #0x345F4147
3108E2:  STR             R2, [R0]; CGarages::MessageIDString
3108E4:  LDR.W           R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x3108F8)
3108E8:  ADD.W           R5, R1, #0xFA0
3108EC:  LDR.W           R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x3108FE)
3108F0:  LDR.W           R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310900)
3108F4:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
3108F6:  LDR.W           R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310904)
3108FA:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
3108FC:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
3108FE:  LDR             R0, [R0]; CGarages::MessageEndTime ...
310900:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310902:  LDR             R2, [R2]; CGarages::MessageStartTime ...
310904:  LDR             R3, [R3]; CGarages::MessageNumberInString2 ...
310906:  LDR             R6, [R6]; CGarages::MessageNumberInString ...
310908:  STR             R5, [R0]; CGarages::MessageEndTime
31090A:  MOV.W           R0, #0xFFFFFFFF
31090E:  STR             R1, [R2]; CGarages::MessageStartTime
310910:  STR             R0, [R6]; CGarages::MessageNumberInString
310912:  STR             R0, [R3]; CGarages::MessageNumberInString2
310914:  LDR.W           R0, =(AudioEngine_ptr - 0x310924)
310918:  MOVS            R1, #4
31091A:  STRB.W          R1, [R4,#0x4D]
31091E:  MOVS            R1, #0xE
310920:  ADD             R0, PC; AudioEngine_ptr
310922:  B.W             loc_30F470
310926:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31093A)
31092A:  SUB.W           R2, R7, #-var_BB
31092E:  LDRSH.W         R1, [R9,#0x26]
310932:  SUB.W           R3, R7, #-var_BA; unsigned __int8 *
310936:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
310938:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31093A:  LDR.W           R0, [R0,R1,LSL#2]; this
31093E:  MOVS            R1, #1
310940:  STRD.W          R2, R1, [SP,#0xF0+var_F0]; unsigned __int8 *
310944:  ADD             R1, SP, #0xF0+var_C8; unsigned __int8 *
310946:  SUB.W           R2, R7, #-var_B9; unsigned __int8 *
31094A:  BLX             j__ZN17CVehicleModelInfo19ChooseVehicleColourERhS0_S0_S0_i; CVehicleModelInfo::ChooseVehicleColour(uchar &,uchar &,uchar &,uchar &,int)
31094E:  LDRB.W          R1, [R9,#0x438]
310952:  LDRB.W          R0, [SP,#0xF0+var_C8]
310956:  CMP             R1, R0
310958:  BNE             loc_3109B6
31095A:  LDRB.W          R1, [R7,#var_B9]
31095E:  ADDW            R12, R9, #0x439
310962:  LDRB.W          R2, [R9,#0x439]
310966:  CMP             R2, R1
310968:  BNE.W           loc_310A84
31096C:  LDRB.W          R1, [R7,#var_BA]
310970:  LDRB.W          R3, [R9,#0x43A]
310974:  CMP             R3, R1
310976:  BNE.W           loc_310A86
31097A:  LDRB.W          LR, [R7,#var_BB]
31097E:  LDRB.W          R1, [R9,#0x43B]
310982:  CMP             R1, LR
310984:  BNE.W           loc_310A86
310988:  MOVS            R5, #0
31098A:  B               loc_310A90
31098C:  LDR.W           R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310994)
310990:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310992:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310994:  LDR             R0, [R0]; CGarages::MessageStartTime
310996:  CMP             R1, R0
310998:  BCC             loc_3108CE
31099A:  LDR.W           R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x3109A2)
31099E:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
3109A0:  LDR             R2, [R2]; CGarages::MessageEndTime ...
3109A2:  LDR             R2, [R2]; CGarages::MessageEndTime
3109A4:  CMP             R1, R2
3109A6:  BHI             loc_3108CE
3109A8:  SUBS            R0, R1, R0
3109AA:  CMP.W           R0, #0x1F4
3109AE:  BLS             loc_310914
3109B0:  SUB.W           R1, R1, #0x1F4
3109B4:  B               loc_3108E4
3109B6:  LDRB.W          R2, [R7,#var_B9]
3109BA:  ADDW            R12, R9, #0x439
3109BE:  B               loc_310A86
3109C0:  ADDS            R0, #2
3109C2:  BEQ.W           loc_30FEBE
3109C6:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3109D6)
3109CA:  MOV.W           R2, #0x194
3109CE:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3109D8)
3109D2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3109D4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3109D6:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3109D8:  LDR             R1, [R1]; int
3109DA:  LDR             R0, [R0]; CWorld::PlayerInFocus
3109DC:  SMLABB.W        R0, R0, R2, R1
3109E0:  LDR.W           R0, [R0,#0xB8]
3109E4:  CMP             R0, #0x63 ; 'c'
3109E6:  BGT.W           loc_310F1A
3109EA:  LDR.W           R0, =(_ZN8CGarages15RespraysAreFreeE_ptr - 0x3109F2)
3109EE:  ADD             R0, PC; _ZN8CGarages15RespraysAreFreeE_ptr
3109F0:  LDR             R0, [R0]; CGarages::RespraysAreFree ...
3109F2:  LDRB            R0, [R0]; CGarages::RespraysAreFree
3109F4:  CMP             R0, #0
3109F6:  BNE.W           loc_310F1A
3109FA:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310A02)
3109FE:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310A00:  LDR             R1, [R0]; char *
310A02:  ADR.W           R0, aGa3; "GA_3"
310A06:  BLX             strcmp
310A0A:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x310A14)
310A0E:  CMP             R0, #0
310A10:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
310A12:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
310A14:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
310A16:  BEQ.W           loc_310F46
310A1A:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310A24)
310A1E:  MOVS            R2, #0
310A20:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310A22:  LDR             R0, [R0]; CGarages::MessageIDString ...
310A24:  STRB            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
310A26:  MOV             R2, #0x335F4147
310A2E:  STR             R2, [R0]; CGarages::MessageIDString
310A30:  LDR.W           R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310A44)
310A34:  ADD.W           R5, R1, #0xFA0
310A38:  LDR.W           R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310A4A)
310A3C:  LDR.W           R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310A4C)
310A40:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
310A42:  LDR.W           R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310A50)
310A46:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
310A48:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
310A4A:  LDR             R0, [R0]; CGarages::MessageEndTime ...
310A4C:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310A4E:  LDR             R2, [R2]; CGarages::MessageStartTime ...
310A50:  LDR             R3, [R3]; CGarages::MessageNumberInString2 ...
310A52:  LDR             R6, [R6]; CGarages::MessageNumberInString ...
310A54:  STR             R5, [R0]; CGarages::MessageEndTime
310A56:  MOV.W           R0, #0xFFFFFFFF
310A5A:  STR             R1, [R2]; CGarages::MessageStartTime
310A5C:  STR             R0, [R6]; CGarages::MessageNumberInString
310A5E:  STR             R0, [R3]; CGarages::MessageNumberInString2
310A60:  LDR.W           R0, =(AudioEngine_ptr - 0x310A70)
310A64:  MOVS            R1, #4
310A66:  STRB.W          R1, [R4,#0x4D]
310A6A:  MOVS            R1, #0xE
310A6C:  ADD             R0, PC; AudioEngine_ptr
310A6E:  B               loc_3104F8
310A70:  DCFS 0.0
310A74:  DCFS 64.0
310A78:  DCFS 255.0
310A7C:  DCFS 4.6566e-10
310A80:  DCFS 0.05
310A84:  MOV             R2, R1
310A86:  LDRB.W          R1, [R7,#var_BB]
310A8A:  MOVS            R5, #1
310A8C:  LDRB.W          R3, [R7,#var_BA]
310A90:  STR             R5, [SP,#0xF0+var_D4]
310A92:  STRB.W          R0, [R9,#0x438]
310A96:  MOV             R0, R9; this
310A98:  STRB.W          R2, [R12]
310A9C:  STRB.W          R1, [R9,#0x43B]
310AA0:  MOV.W           R1, #0xFFFFFFFF; int
310AA4:  STRB.W          R3, [R9,#0x43A]
310AA8:  BLX             j__ZN8CVehicle8SetRemapEi; CVehicle::SetRemap(int)
310AAC:  LDR             R0, [SP,#0xF0+var_D4]
310AAE:  MOV.W           R10, #0
310AB2:  CMP             R0, #0
310AB4:  BEQ.W           loc_310C1A
310AB8:  MOVW            R0, #0xCCCD
310ABC:  MOVW            R2, #0x3333
310AC0:  MOVW            R3, #0x999A
310AC4:  MOVT            R0, #0x3ECC
310AC8:  MOV.W           R1, #0x3F800000
310ACC:  MOVT            R2, #0x3F33
310AD0:  MOVT            R3, #0x3F19
310AD4:  STRD.W          R3, R2, [SP,#0xF0+var_F0]; float
310AD8:  MOVS            R2, #0; float
310ADA:  STRD.W          R1, R0, [SP,#0xF0+var_E8]; float
310ADE:  MOV             R0, R6; this
310AE0:  MOV.W           R1, #0x3F800000; float
310AE4:  MOVS            R3, #0; float
310AE6:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
310AEA:  LDR.W           R0, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x310AFE)
310AEE:  VMOV.F32        S18, #6.0
310AF2:  LDRB.W          R1, [R9,#0x438]
310AF6:  VMOV.F32        S20, #-3.0
310AFA:  ADD             R0, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
310AFC:  VLDR            S2, =255.0
310B00:  VLDR            S16, =4.6566e-10
310B04:  ADD             R5, SP, #0xF0+var_6C
310B06:  LDR             R0, [R0]; CVehicleModelInfo::ms_vehicleColourTable ...
310B08:  MOV.W           R11, #0xA
310B0C:  VLDR            S22, =0.05
310B10:  VLDR            S24, =0.0
310B14:  LDRB.W          R2, [R0,R1,LSL#2]
310B18:  ADD.W           R0, R0, R1,LSL#2
310B1C:  VMOV            S0, R2
310B20:  VCVT.F32.U32    S0, S0
310B24:  LDRB            R1, [R0,#1]
310B26:  LDRB            R0, [R0,#2]
310B28:  VMOV            S4, R1
310B2C:  VMOV            S6, R0
310B30:  LDR.W           R0, =(g_fx_ptr - 0x310B40)
310B34:  VCVT.F32.U32    S4, S4
310B38:  VCVT.F32.U32    S6, S6
310B3C:  ADD             R0, PC; g_fx_ptr
310B3E:  VDIV.F32        S0, S0, S2
310B42:  LDR.W           R8, [R0]; g_fx
310B46:  VDIV.F32        S4, S4, S2
310B4A:  VDIV.F32        S2, S6, S2
310B4E:  VSTR            S0, [SP,#0xF0+var_B8]
310B52:  VSTR            S4, [SP,#0xF0+var_B4]
310B56:  VSTR            S2, [SP,#0xF0+var_B0]
310B5A:  STRD.W          R10, R10, [SP,#0xF0+var_6C]
310B5E:  STR.W           R10, [SP,#0xF0+var_64]
310B62:  LDR.W           R0, [R9,#0x14]
310B66:  ADD.W           R1, R0, #0x30 ; '0'
310B6A:  CMP             R0, #0
310B6C:  IT EQ
310B6E:  ADDEQ.W         R1, R9, #4
310B72:  VLDR            D16, [R1]
310B76:  LDR             R0, [R1,#8]
310B78:  STR             R0, [SP,#0xF0+var_70]
310B7A:  VSTR            D16, [SP,#0xF0+var_78]
310B7E:  BLX             rand
310B82:  VMOV            S0, R0
310B86:  VCVT.F32.S32    S0, S0
310B8A:  VLDR            S2, [SP,#0xF0+var_78]
310B8E:  VMUL.F32        S0, S0, S16
310B92:  VMUL.F32        S0, S0, S18
310B96:  VADD.F32        S0, S0, S20
310B9A:  VADD.F32        S0, S2, S0
310B9E:  VSTR            S0, [SP,#0xF0+var_78]
310BA2:  BLX             rand
310BA6:  VMOV            S0, R0
310BAA:  VCVT.F32.S32    S0, S0
310BAE:  VLDR            S2, [SP,#0xF0+var_78+4]
310BB2:  VMUL.F32        S0, S0, S16
310BB6:  VMUL.F32        S0, S0, S18
310BBA:  VADD.F32        S0, S0, S20
310BBE:  VADD.F32        S0, S2, S0
310BC2:  VSTR            S0, [SP,#0xF0+var_78+4]
310BC6:  BLX             rand
310BCA:  VMOV            S0, R0
310BCE:  MOVS            R1, #0xBF800000
310BD4:  MOV             R2, R5; int
310BD6:  VCVT.F32.S32    S0, S0
310BDA:  STR             R6, [SP,#0xF0+var_F0]; int
310BDC:  STR             R1, [SP,#0xF0+var_EC]; float
310BDE:  MOV             R1, #0x3F99999A
310BE6:  LDR.W           R0, [R8,#(dword_820540 - 0x820520)]; int
310BEA:  STR             R1, [SP,#0xF0+var_E8]; float
310BEC:  MOV             R1, #0x3F19999A
310BF4:  MOVS            R3, #0; int
310BF6:  VMUL.F32        S0, S0, S16
310BFA:  VMUL.F32        S0, S0, S22
310BFE:  VADD.F32        S0, S0, S24
310C02:  VSTR            S0, [SP,#0xF0+var_64]
310C06:  STRD.W          R1, R10, [SP,#0xF0+var_E4]; float
310C0A:  ADD             R1, SP, #0xF0+var_78; int
310C0C:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
310C10:  SUBS.W          R11, R11, #1
310C14:  BNE             loc_310B62
310C16:  LDR.W           R10, [SP,#0xF0+var_D4]
310C1A:  LDRD.W          R11, R8, [SP,#0xF0+var_D0]
310C1E:  MOVS            R5, #0
310C20:  LDR.W           R0, [R9,#0x430]
310C24:  CMP.W           R10, #0
310C28:  STR.W           R5, [R9,#0x4BC]
310C2C:  BIC.W           R0, R0, #0x800000
310C30:  STR.W           R0, [R9,#0x430]
310C34:  IT NE
310C36:  MOVNE.W         R10, #1
310C3A:  LDRSB.W         R0, [R4,#0x4E]
310C3E:  CMP.W           R0, #0xFFFFFFFF
310C42:  BLE             loc_310CEC
310C44:  LDR.W           R0, =(_ZN8CGarages15RespraysAreFreeE_ptr - 0x310C4E)
310C48:  MOVS            R1, #0
310C4A:  ADD             R0, PC; _ZN8CGarages15RespraysAreFreeE_ptr
310C4C:  LDR             R0, [R0]; CGarages::RespraysAreFree ...
310C4E:  LDRB            R0, [R0]; CGarages::RespraysAreFree
310C50:  CMP             R0, #0
310C52:  IT EQ
310C54:  MOVEQ           R1, #1
310C56:  AND.W           R0, R11, R1
310C5A:  CMP             R0, #1
310C5C:  BNE             loc_310D3A
310C5E:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x310C6E)
310C62:  MOV.W           R2, #0x194; float
310C66:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x310C70)
310C6A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
310C6C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
310C6E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
310C70:  LDR             R1, [R1]; CWorld::Players ...
310C72:  LDR             R0, [R0]; CWorld::PlayerInFocus
310C74:  SMLABB.W        R0, R0, R2, R1
310C78:  LDR.W           R1, [R0,#0xB8]!
310C7C:  CMP             R1, #1
310C7E:  BLT             loc_310C88
310C80:  SUBS            R1, #0x64 ; 'd'
310C82:  IT LT
310C84:  MOVLT           R1, #0
310C86:  STR             R1, [R0]
310C88:  MOVS            R1, #0
310C8A:  MOVS            R0, #word_10; this
310C8C:  MOVT            R1, #0x42C8; unsigned __int16
310C90:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
310C94:  CMP.W           R8, #0
310C98:  BEQ.W           loc_310DB2
310C9C:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310CA4)
310CA0:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310CA2:  LDR             R1, [R0]; char *
310CA4:  ADR.W           R0, aGa2; "GA_2"
310CA8:  BLX             strcmp
310CAC:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x310CB6)
310CB0:  CMP             R0, #0
310CB2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
310CB4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
310CB6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
310CB8:  BEQ.W           loc_310E76
310CBC:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310CC6)
310CC0:  MOVS            R2, #0
310CC2:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310CC4:  LDR             R0, [R0]; CGarages::MessageIDString ...
310CC6:  STRB            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
310CC8:  MOV             R2, #0x325F4147
310CD0:  STR             R2, [R0]; CGarages::MessageIDString
310CD2:  LDR.W           R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310CE2)
310CD6:  LDR.W           R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310CE8)
310CDA:  LDR.W           R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310CEA)
310CDE:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
310CE0:  LDR.W           R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310CEC)
310CE4:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
310CE6:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
310CE8:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310CEA:  B               loc_310E2C
310CEC:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310CF4)
310CF0:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310CF2:  LDR             R1, [R0]; char *
310CF4:  ADR.W           R0, aGa22; "GA_22"
310CF8:  BLX             strcmp
310CFC:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x310D06)
310D00:  CMP             R0, #0
310D02:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
310D04:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
310D06:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
310D08:  BEQ             loc_310D8C
310D0A:  LDR.W           R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310D14)
310D0E:  MOVS            R2, #0x32 ; '2'
310D10:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310D12:  LDR             R0, [R0]; CGarages::MessageIDString ...
310D14:  STRH            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
310D16:  MOV             R2, #0x325F4147
310D1E:  STR             R2, [R0]; CGarages::MessageIDString
310D20:  LDR.W           R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310D30)
310D24:  LDR.W           R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310D36)
310D28:  LDR.W           R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310D38)
310D2C:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
310D2E:  LDR.W           R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310D3A)
310D32:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
310D34:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
310D36:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310D38:  B               loc_310E2C
310D3A:  MOVS.W          R0, R10,LSL#31
310D3E:  BEQ.W           loc_310E44
310D42:  BLX             rand
310D46:  TST.W           R0, #1
310D4A:  BNE             loc_310DF0
310D4C:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310D52)
310D4E:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310D50:  LDR             R1, [R0]; char *
310D52:  ADR             R0, aGa16; "GA_16"
310D54:  BLX             strcmp
310D58:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x310D60)
310D5A:  CMP             R0, #0
310D5C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
310D5E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
310D60:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
310D62:  BEQ.W           loc_310EC6
310D66:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310D6E)
310D68:  MOVS            R2, #0x36 ; '6'
310D6A:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310D6C:  LDR             R0, [R0]; CGarages::MessageIDString ...
310D6E:  STRH            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
310D70:  MOV             R2, #0x315F4147
310D78:  STR             R2, [R0]; CGarages::MessageIDString
310D7A:  LDR             R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310D84)
310D7C:  LDR             R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310D88)
310D7E:  LDR             R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310D8A)
310D80:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
310D82:  LDR             R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310D8C)
310D84:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
310D86:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
310D88:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310D8A:  B               loc_310E2C
310D8C:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310D92)
310D8E:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310D90:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310D92:  LDR             R0, [R0]; CGarages::MessageStartTime
310D94:  CMP             R1, R0
310D96:  BCC             loc_310D0A
310D98:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310D9E)
310D9A:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310D9C:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310D9E:  LDR             R2, [R2]; CGarages::MessageEndTime
310DA0:  CMP             R1, R2
310DA2:  BHI             loc_310D0A
310DA4:  SUBS            R0, R1, R0
310DA6:  CMP.W           R0, #0x1F4
310DAA:  BLS             loc_310E44
310DAC:  SUB.W           R1, R1, #0x1F4
310DB0:  B               loc_310D20
310DB2:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310DB8)
310DB4:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310DB6:  LDR             R1, [R0]; char *
310DB8:  ADR             R0, aGaXx; "GA_XX"
310DBA:  BLX             strcmp
310DBE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x310DC6)
310DC0:  CMP             R0, #0
310DC2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
310DC4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
310DC6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
310DC8:  BEQ             loc_310EA0
310DCA:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310DD2)
310DCC:  MOVS            R2, #0x58 ; 'X'
310DCE:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310DD0:  LDR             R0, [R0]; CGarages::MessageIDString ...
310DD2:  STRH            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
310DD4:  MOV             R2, #0x585F4147
310DDC:  STR             R2, [R0]; CGarages::MessageIDString
310DDE:  LDR             R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310DE8)
310DE0:  LDR             R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310DEC)
310DE2:  LDR             R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310DEE)
310DE4:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
310DE6:  LDR             R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310DF0)
310DE8:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
310DEA:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
310DEC:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310DEE:  B               loc_310E2C
310DF0:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310DF6)
310DF2:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310DF4:  LDR             R1, [R0]; char *
310DF6:  ADR             R0, aGa15; "GA_15"
310DF8:  BLX             strcmp
310DFC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x310E04)
310DFE:  CMP             R0, #0
310E00:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
310E02:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
310E04:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
310E06:  BEQ             loc_310EF0
310E08:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x310E10)
310E0A:  MOVS            R2, #0x35 ; '5'
310E0C:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
310E0E:  LDR             R0, [R0]; CGarages::MessageIDString ...
310E10:  STRH            R2, [R0,#(word_7A4DA4 - 0x7A4DA0)]
310E12:  MOV             R2, #0x315F4147
310E1A:  STR             R2, [R0]; CGarages::MessageIDString
310E1C:  LDR             R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310E26)
310E1E:  LDR             R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310E2A)
310E20:  LDR             R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x310E2C)
310E22:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
310E24:  LDR             R6, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x310E2E)
310E26:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
310E28:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
310E2A:  ADD             R6, PC; _ZN8CGarages21MessageNumberInStringE_ptr
310E2C:  LDR             R0, [R0]; CGarages::MessageEndTime ...
310E2E:  ADD.W           R5, R1, #0xFA0
310E32:  LDR             R2, [R2]; CGarages::MessageStartTime ...
310E34:  LDR             R3, [R3]; CGarages::MessageNumberInString2 ...
310E36:  LDR             R6, [R6]; CGarages::MessageNumberInString ...
310E38:  STR             R5, [R0]; CGarages::MessageEndTime
310E3A:  MOV.W           R0, #0xFFFFFFFF
310E3E:  STR             R1, [R2]; CGarages::MessageStartTime
310E40:  STR             R0, [R6]; CGarages::MessageNumberInString
310E42:  STR             R0, [R3]; CGarages::MessageNumberInString2
310E44:  LDRB.W          R0, [R4,#0x4E]
310E48:  MOVS            R1, #0; bool
310E4A:  ORR.W           R0, R0, #4
310E4E:  STRB.W          R0, [R4,#0x4E]
310E52:  MOV.W           R0, #0xFFFFFFFF; int
310E56:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310E5A:  CMP             R0, #0
310E5C:  BEQ.W           loc_30FFA8
310E60:  MOV.W           R0, #0xFFFFFFFF; int
310E64:  MOVS            R1, #0; bool
310E66:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310E6A:  LDR.W           R1, [R0,#0x430]
310E6E:  ORR.W           R1, R1, #0x1000000
310E72:  B.W             loc_30FFA4
310E76:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310E7C)
310E78:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310E7A:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310E7C:  LDR             R0, [R0]; CGarages::MessageStartTime
310E7E:  CMP             R1, R0
310E80:  BCC.W           loc_310CBC
310E84:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310E8A)
310E86:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310E88:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310E8A:  LDR             R2, [R2]; CGarages::MessageEndTime
310E8C:  CMP             R1, R2
310E8E:  BHI.W           loc_310CBC
310E92:  SUBS            R0, R1, R0
310E94:  CMP.W           R0, #0x1F4
310E98:  BLS             loc_310E44
310E9A:  SUB.W           R1, R1, #0x1F4
310E9E:  B               loc_310CD2
310EA0:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310EA6)
310EA2:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310EA4:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310EA6:  LDR             R0, [R0]; CGarages::MessageStartTime
310EA8:  CMP             R1, R0
310EAA:  BCC             loc_310DCA
310EAC:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310EB2)
310EAE:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310EB0:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310EB2:  LDR             R2, [R2]; CGarages::MessageEndTime
310EB4:  CMP             R1, R2
310EB6:  BHI             loc_310DCA
310EB8:  SUBS            R0, R1, R0
310EBA:  CMP.W           R0, #0x1F4
310EBE:  BLS             loc_310E44
310EC0:  SUB.W           R1, R1, #0x1F4
310EC4:  B               loc_310DDE
310EC6:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310ECC)
310EC8:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310ECA:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310ECC:  LDR             R0, [R0]; CGarages::MessageStartTime
310ECE:  CMP             R1, R0
310ED0:  BCC.W           loc_310D66
310ED4:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310EDA)
310ED6:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310ED8:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310EDA:  LDR             R2, [R2]; CGarages::MessageEndTime
310EDC:  CMP             R1, R2
310EDE:  BHI.W           loc_310D66
310EE2:  SUBS            R0, R1, R0
310EE4:  CMP.W           R0, #0x1F4
310EE8:  BLS             loc_310E44
310EEA:  SUB.W           R1, R1, #0x1F4
310EEE:  B               loc_310D7A
310EF0:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310EF6)
310EF2:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310EF4:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310EF6:  LDR             R0, [R0]; CGarages::MessageStartTime
310EF8:  CMP             R1, R0
310EFA:  BCC.W           loc_310E08
310EFE:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310F04)
310F00:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310F02:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310F04:  LDR             R2, [R2]; CGarages::MessageEndTime
310F06:  CMP             R1, R2
310F08:  BHI.W           loc_310E08
310F0C:  SUBS            R0, R1, R0
310F0E:  CMP.W           R0, #0x1F4
310F12:  BLS             loc_310E44
310F14:  SUB.W           R1, R1, #0x1F4
310F18:  B               loc_310E1C
310F1A:  MOVS            R0, #2
310F1C:  MOVS            R5, #0
310F1E:  STRB.W          R0, [R4,#0x4D]
310F22:  MOVS            R0, #0; this
310F24:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
310F28:  LDRH.W          R1, [R0,#0x110]
310F2C:  ORR.W           R1, R1, #4
310F30:  STRH.W          R1, [R0,#0x110]
310F34:  MOV.W           R0, #0xFFFFFFFF; int
310F38:  MOVS            R1, #0; bool
310F3A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
310F3E:  STR.W           R5, [R0,#0x4BC]
310F42:  B.W             loc_310504
310F46:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x310F4C)
310F48:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
310F4A:  LDR             R0, [R0]; CGarages::MessageStartTime ...
310F4C:  LDR             R0, [R0]; CGarages::MessageStartTime
310F4E:  CMP             R1, R0
310F50:  BCC.W           loc_310A1A
310F54:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x310F5A)
310F56:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
310F58:  LDR             R2, [R2]; CGarages::MessageEndTime ...
310F5A:  LDR             R2, [R2]; CGarages::MessageEndTime
310F5C:  CMP             R1, R2
310F5E:  BHI.W           loc_310A1A
310F62:  SUBS            R0, R1, R0
310F64:  CMP.W           R0, #0x1F4
310F68:  BLS.W           loc_310A60
310F6C:  SUB.W           R1, R1, #0x1F4
310F70:  B               loc_310A30
