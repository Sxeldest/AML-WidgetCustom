; =========================================================
; Game Engine Function: _ZN27CWidgetButtonAutoHydraulics6UpdateEv
; Address            : 0x2B6774 - 0x2B67FA
; =========================================================

2B6774:  PUSH            {R4,R5,R7,LR}
2B6776:  ADD             R7, SP, #8
2B6778:  MOV             R4, R0
2B677A:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B677E:  LDRB.W          R5, [R4,#0xA8]
2B6782:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
2B6786:  CMP             R5, R0
2B6788:  BEQ             loc_2B6798
2B678A:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
2B678E:  CMP             R0, #0
2B6790:  ITT NE
2B6792:  MOVNE           R0, #0; this
2B6794:  STRNE.W         R0, [R4,#0x84]
2B6798:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
2B679C:  STRB.W          R0, [R4,#0xA8]
2B67A0:  MOV.W           R0, #0xFFFFFFFF; int
2B67A4:  MOVS            R1, #0; bool
2B67A6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2B67AA:  CMP             R0, #0
2B67AC:  IT EQ
2B67AE:  POPEQ           {R4,R5,R7,PC}
2B67B0:  LDRSH.W         R0, [R0,#0x26]
2B67B4:  MOVW            R1, #0x213
2B67B8:  CMP             R0, R1
2B67BA:  ITT NE
2B67BC:  MOVWNE          R1, #0x20D
2B67C0:  CMPNE           R0, R1
2B67C2:  BNE             loc_2B67DA
2B67C4:  VLDR            S0, [R4,#0x84]
2B67C8:  ADD.W           R1, R4, #8
2B67CC:  VCMPE.F32       S0, #0.0
2B67D0:  VMRS            APSR_nzcv, FPSCR
2B67D4:  BLE             loc_2B67EC
2B67D6:  ADR             R2, aMenuUp; "menu_up"
2B67D8:  B               loc_2B67EE
2B67DA:  VLDR            S0, [R4,#0x84]
2B67DE:  ADD.W           R1, R4, #8; int
2B67E2:  VCMPE.F32       S0, #0.0
2B67E6:  VMRS            APSR_nzcv, FPSCR
2B67EA:  BLE             loc_2B67D6
2B67EC:  ADR             R2, aMenuDown; "menu_down"
2B67EE:  MOV             R0, R4; int
2B67F0:  MOVS            R3, #0
2B67F2:  POP.W           {R4,R5,R7,LR}
2B67F6:  B.W             j_j__ZN7CWidget10SetTextureER9CSprite2dPcb; j_CWidget::SetTexture(CSprite2d &,char *,bool)
