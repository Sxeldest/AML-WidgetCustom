; =========================================================
; Game Engine Function: _ZN19CWidgetButtonAttack6UpdateEv
; Address            : 0x2B4E30 - 0x2B4F74
; =========================================================

2B4E30:  PUSH            {R4-R7,LR}
2B4E32:  ADD             R7, SP, #0xC
2B4E34:  PUSH.W          {R11}
2B4E38:  MOV             R4, R0
2B4E3A:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B4E3E:  MOV.W           R0, #0xFFFFFFFF; int
2B4E42:  ADD.W           R5, R4, #8
2B4E46:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2B4E4A:  CMP             R0, #0
2B4E4C:  BEQ             loc_2B4EA6
2B4E4E:  LDRSB.W         R1, [R0,#0x71C]
2B4E52:  LDR             R2, =(aWidgetVcShoot+0xA - 0x2B4E5C); "shoot"
2B4E54:  RSB.W           R1, R1, R1,LSL#3
2B4E58:  ADD             R2, PC; "shoot"
2B4E5A:  ADD.W           R0, R0, R1,LSL#2
2B4E5E:  LDR.W           R1, [R0,#0x5A4]
2B4E62:  CMP             R1, #0x2E ; '.'; switch 47 cases
2B4E64:  BHI.W           def_2B4E6C; jumptable 002B4E6C default case, cases 19-36,38,43
2B4E68:  LDR             R0, =(aHudThrow - 0x2B4E6E); "hud_throw"
2B4E6A:  ADD             R0, PC; "hud_throw"
2B4E6C:  TBB.W           [PC,R1]; switch jump
2B4E70:  DCB 0x18; jump table for switch statement
2B4E71:  DCB 0x1E
2B4E72:  DCB 0x21
2B4E73:  DCB 0x24
2B4E74:  DCB 0x27
2B4E75:  DCB 0x2A
2B4E76:  DCB 0x2D
2B4E77:  DCB 0x30
2B4E78:  DCB 0x33
2B4E79:  DCB 0x36
2B4E7A:  DCB 0x39
2B4E7B:  DCB 0x3C
2B4E7C:  DCB 0x3F
2B4E7D:  DCB 0x42
2B4E7E:  DCB 0x45
2B4E7F:  DCB 0x48
2B4E80:  DCB 0x62
2B4E81:  DCB 0x4B
2B4E82:  DCB 0x62
2B4E83:  DCB 0x63
2B4E84:  DCB 0x63
2B4E85:  DCB 0x63
2B4E86:  DCB 0x63
2B4E87:  DCB 0x63
2B4E88:  DCB 0x63
2B4E89:  DCB 0x63
2B4E8A:  DCB 0x63
2B4E8B:  DCB 0x63
2B4E8C:  DCB 0x63
2B4E8D:  DCB 0x63
2B4E8E:  DCB 0x63
2B4E8F:  DCB 0x63
2B4E90:  DCB 0x63
2B4E91:  DCB 0x63
2B4E92:  DCB 0x63
2B4E93:  DCB 0x63
2B4E94:  DCB 0x63
2B4E95:  DCB 0x4E
2B4E96:  DCB 0x63
2B4E97:  DCB 0x62
2B4E98:  DCB 0x51
2B4E99:  DCB 0x54
2B4E9A:  DCB 0x57
2B4E9B:  DCB 0x63
2B4E9C:  DCB 0x5A
2B4E9D:  DCB 0x5D
2B4E9E:  DCB 0x60
2B4E9F:  ALIGN 2
2B4EA0:  LDR             R0, =(aWidgetExplicit_27+0x10 - 0x2B4EA6); jumptable 002B4E6C case 0
2B4EA2:  ADD             R0, PC; "punch"
2B4EA4:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EA6:  LDR             R2, =(aWidgetVcShoot+0xA - 0x2B4EAC); "shoot"
2B4EA8:  ADD             R2, PC; "shoot"
2B4EAA:  B               def_2B4E6C; jumptable 002B4E6C default case, cases 19-36,38,43
2B4EAC:  LDR             R0, =(aBrassknuckle - 0x2B4EB2); jumptable 002B4E6C case 1
2B4EAE:  ADD             R0, PC; "brassknuckle"
2B4EB0:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EB2:  LDR             R0, =(aHudGolfclub - 0x2B4EB8); jumptable 002B4E6C case 2
2B4EB4:  ADD             R0, PC; "hud_golfclub"
2B4EB6:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EB8:  LDR             R0, =(aHudNightstick - 0x2B4EBE); jumptable 002B4E6C case 3
2B4EBA:  ADD             R0, PC; "hud_nightstick"
2B4EBC:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EBE:  LDR             R0, =(aHudKnife - 0x2B4EC4); jumptable 002B4E6C case 4
2B4EC0:  ADD             R0, PC; "hud_knife"
2B4EC2:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EC4:  LDR             R0, =(aHudBat - 0x2B4ECA); jumptable 002B4E6C case 5
2B4EC6:  ADD             R0, PC; "hud_bat"
2B4EC8:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4ECA:  LDR             R0, =(aShovel - 0x2B4ED0); jumptable 002B4E6C case 6
2B4ECC:  ADD             R0, PC; "shovel"
2B4ECE:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4ED0:  LDR             R0, =(aHudPoolcue - 0x2B4ED6); jumptable 002B4E6C case 7
2B4ED2:  ADD             R0, PC; "hud_poolcue"
2B4ED4:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4ED6:  LDR             R0, =(aHudKatana - 0x2B4EDC); jumptable 002B4E6C case 8
2B4ED8:  ADD             R0, PC; "hud_katana"
2B4EDA:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EDC:  LDR             R0, =(aHudChainsaw - 0x2B4EE2); jumptable 002B4E6C case 9
2B4EDE:  ADD             R0, PC; "hud_chainsaw"
2B4EE0:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EE2:  LDR             R0, =(aHudDildo1 - 0x2B4EE8); jumptable 002B4E6C case 10
2B4EE4:  ADD             R0, PC; "hud_dildo1"
2B4EE6:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EE8:  LDR             R0, =(aHudDildo1 - 0x2B4EEE); jumptable 002B4E6C case 11
2B4EEA:  ADD             R0, PC; "hud_dildo1"
2B4EEC:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EEE:  LDR             R0, =(aHudDildo2 - 0x2B4EF4); jumptable 002B4E6C case 12
2B4EF0:  ADD             R0, PC; "hud_dildo2"
2B4EF2:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EF4:  LDR             R0, =(aHudDildo2 - 0x2B4EFA); jumptable 002B4E6C case 13
2B4EF6:  ADD             R0, PC; "hud_dildo2"
2B4EF8:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4EFA:  LDR             R0, =(aHudFlowers - 0x2B4F00); jumptable 002B4E6C case 14
2B4EFC:  ADD             R0, PC; "hud_flowers"
2B4EFE:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F00:  LDR             R0, =(aHudCane - 0x2B4F06); jumptable 002B4E6C case 15
2B4F02:  ADD             R0, PC; "hud_cane"
2B4F04:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F06:  LDR             R0, =(aHudTeargas - 0x2B4F0C); jumptable 002B4E6C case 17
2B4F08:  ADD             R0, PC; "hud_teargas"
2B4F0A:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F0C:  LDR             R0, =(aFlamethrower - 0x2B4F12); jumptable 002B4E6C case 37
2B4F0E:  ADD             R0, PC; "flamethrower"
2B4F10:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F12:  LDR             R0, =(aHudDetonator_0 - 0x2B4F18); jumptable 002B4E6C case 40
2B4F14:  ADD             R0, PC; "hud_detonator"
2B4F16:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F18:  LDR             R0, =(aHudSpraycan - 0x2B4F1E); jumptable 002B4E6C case 41
2B4F1A:  ADD             R0, PC; "hud_spraycan"
2B4F1C:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F1E:  LDR             R0, =(aHudExtinguishe - 0x2B4F24); jumptable 002B4E6C case 42
2B4F20:  ADD             R0, PC; "hud_extinguisher"
2B4F22:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F24:  LDR             R0, =(aGoggles - 0x2B4F2A); jumptable 002B4E6C case 44
2B4F26:  ADD             R0, PC; "goggles"
2B4F28:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F2A:  LDR             R0, =(aGoggles - 0x2B4F30); jumptable 002B4E6C case 45
2B4F2C:  ADD             R0, PC; "goggles"
2B4F2E:  B               loc_2B4F34; jumptable 002B4E6C cases 16,18,39
2B4F30:  LDR             R0, =(aWidgetExplicit_27+0x10 - 0x2B4F36); jumptable 002B4E6C case 46
2B4F32:  ADD             R0, PC; "punch"
2B4F34:  MOV             R2, R0; jumptable 002B4E6C cases 16,18,39
2B4F36:  MOV             R0, R4; jumptable 002B4E6C default case, cases 19-36,38,43
2B4F38:  MOV             R1, R5; CSprite2d *
2B4F3A:  MOVS            R3, #1; bool
2B4F3C:  MOVS            R6, #1
2B4F3E:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2B4F42:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2B4F46:  CMP             R0, #2
2B4F48:  BNE             loc_2B4F6C
2B4F4A:  MOV.W           R0, #0xFFFFFFFF; int
2B4F4E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2B4F52:  MOVS            R6, #1
2B4F54:  CBZ             R0, loc_2B4F6C
2B4F56:  MOV.W           R0, #0xFFFFFFFF; int
2B4F5A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2B4F5E:  LDR.W           R0, [R0,#0x440]; this
2B4F62:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
2B4F66:  CMP             R0, #0
2B4F68:  IT NE
2B4F6A:  MOVNE           R6, #0x58 ; 'X'
2B4F6C:  STR             R6, [R4,#4]
2B4F6E:  POP.W           {R11}
2B4F72:  POP             {R4-R7,PC}
