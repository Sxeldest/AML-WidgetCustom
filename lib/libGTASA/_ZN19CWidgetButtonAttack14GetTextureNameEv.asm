; =========================================================
; Game Engine Function: _ZN19CWidgetButtonAttack14GetTextureNameEv
; Address            : 0x2B4FE0 - 0x2B50DC
; =========================================================

2B4FE0:  PUSH            {R7,LR}
2B4FE2:  MOV             R7, SP
2B4FE4:  MOV.W           R0, #0xFFFFFFFF; int
2B4FE8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2B4FEC:  MOV             R1, R0
2B4FEE:  CMP             R1, #0
2B4FF0:  BEQ             loc_2B504A
2B4FF2:  LDRSB.W         R2, [R1,#0x71C]
2B4FF6:  LDR             R0, =(aWidgetVcShoot+0xA - 0x2B5000); "shoot"
2B4FF8:  RSB.W           R2, R2, R2,LSL#3
2B4FFC:  ADD             R0, PC; "shoot"
2B4FFE:  ADD.W           R1, R1, R2,LSL#2
2B5002:  LDR.W           R2, [R1,#0x5A4]
2B5006:  CMP             R2, #0x2E ; '.'; switch 47 cases
2B5008:  IT HI
2B500A:  POPHI           {R7,PC}
2B500C:  LDR             R1, =(aHudThrow - 0x2B5012); "hud_throw"
2B500E:  ADD             R1, PC; "hud_throw"
2B5010:  TBB.W           [PC,R2]; switch jump
2B5014:  DCB 0x18; jump table for switch statement
2B5015:  DCB 0x1E
2B5016:  DCB 0x21
2B5017:  DCB 0x24
2B5018:  DCB 0x27
2B5019:  DCB 0x2A
2B501A:  DCB 0x2D
2B501B:  DCB 0x30
2B501C:  DCB 0x33
2B501D:  DCB 0x36
2B501E:  DCB 0x39
2B501F:  DCB 0x3C
2B5020:  DCB 0x3F
2B5021:  DCB 0x42
2B5022:  DCB 0x45
2B5023:  DCB 0x48
2B5024:  DCB 0x62
2B5025:  DCB 0x4B
2B5026:  DCB 0x62
2B5027:  DCB 0x63
2B5028:  DCB 0x63
2B5029:  DCB 0x63
2B502A:  DCB 0x63
2B502B:  DCB 0x63
2B502C:  DCB 0x63
2B502D:  DCB 0x63
2B502E:  DCB 0x63
2B502F:  DCB 0x63
2B5030:  DCB 0x63
2B5031:  DCB 0x63
2B5032:  DCB 0x63
2B5033:  DCB 0x63
2B5034:  DCB 0x63
2B5035:  DCB 0x63
2B5036:  DCB 0x63
2B5037:  DCB 0x63
2B5038:  DCB 0x63
2B5039:  DCB 0x4E
2B503A:  DCB 0x63
2B503B:  DCB 0x62
2B503C:  DCB 0x51
2B503D:  DCB 0x54
2B503E:  DCB 0x57
2B503F:  DCB 0x63
2B5040:  DCB 0x5A
2B5041:  DCB 0x5D
2B5042:  DCB 0x60
2B5043:  ALIGN 2
2B5044:  LDR             R1, =(aWidgetExplicit_27+0x10 - 0x2B504A); jumptable 002B5010 case 0
2B5046:  ADD             R1, PC; "punch"
2B5048:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B504A:  LDR             R0, =(aWidgetVcShoot+0xA - 0x2B5050); "shoot"
2B504C:  ADD             R0, PC; "shoot"
2B504E:  POP             {R7,PC}
2B5050:  LDR             R1, =(aBrassknuckle - 0x2B5056); jumptable 002B5010 case 1
2B5052:  ADD             R1, PC; "brassknuckle"
2B5054:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5056:  LDR             R1, =(aHudGolfclub - 0x2B505C); jumptable 002B5010 case 2
2B5058:  ADD             R1, PC; "hud_golfclub"
2B505A:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B505C:  LDR             R1, =(aHudNightstick - 0x2B5062); jumptable 002B5010 case 3
2B505E:  ADD             R1, PC; "hud_nightstick"
2B5060:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5062:  LDR             R1, =(aHudKnife - 0x2B5068); jumptable 002B5010 case 4
2B5064:  ADD             R1, PC; "hud_knife"
2B5066:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5068:  LDR             R1, =(aHudBat - 0x2B506E); jumptable 002B5010 case 5
2B506A:  ADD             R1, PC; "hud_bat"
2B506C:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B506E:  LDR             R1, =(aShovel - 0x2B5074); jumptable 002B5010 case 6
2B5070:  ADD             R1, PC; "shovel"
2B5072:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5074:  LDR             R1, =(aHudPoolcue - 0x2B507A); jumptable 002B5010 case 7
2B5076:  ADD             R1, PC; "hud_poolcue"
2B5078:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B507A:  LDR             R1, =(aHudKatana - 0x2B5080); jumptable 002B5010 case 8
2B507C:  ADD             R1, PC; "hud_katana"
2B507E:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5080:  LDR             R1, =(aHudChainsaw - 0x2B5086); jumptable 002B5010 case 9
2B5082:  ADD             R1, PC; "hud_chainsaw"
2B5084:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5086:  LDR             R1, =(aHudDildo1 - 0x2B508C); jumptable 002B5010 case 10
2B5088:  ADD             R1, PC; "hud_dildo1"
2B508A:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B508C:  LDR             R1, =(aHudDildo1 - 0x2B5092); jumptable 002B5010 case 11
2B508E:  ADD             R1, PC; "hud_dildo1"
2B5090:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5092:  LDR             R1, =(aHudDildo2 - 0x2B5098); jumptable 002B5010 case 12
2B5094:  ADD             R1, PC; "hud_dildo2"
2B5096:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B5098:  LDR             R1, =(aHudDildo2 - 0x2B509E); jumptable 002B5010 case 13
2B509A:  ADD             R1, PC; "hud_dildo2"
2B509C:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B509E:  LDR             R1, =(aHudFlowers - 0x2B50A4); jumptable 002B5010 case 14
2B50A0:  ADD             R1, PC; "hud_flowers"
2B50A2:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50A4:  LDR             R1, =(aHudCane - 0x2B50AA); jumptable 002B5010 case 15
2B50A6:  ADD             R1, PC; "hud_cane"
2B50A8:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50AA:  LDR             R1, =(aHudTeargas - 0x2B50B0); jumptable 002B5010 case 17
2B50AC:  ADD             R1, PC; "hud_teargas"
2B50AE:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50B0:  LDR             R1, =(aFlamethrower - 0x2B50B6); jumptable 002B5010 case 37
2B50B2:  ADD             R1, PC; "flamethrower"
2B50B4:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50B6:  LDR             R1, =(aHudDetonator_0 - 0x2B50BC); jumptable 002B5010 case 40
2B50B8:  ADD             R1, PC; "hud_detonator"
2B50BA:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50BC:  LDR             R1, =(aHudSpraycan - 0x2B50C2); jumptable 002B5010 case 41
2B50BE:  ADD             R1, PC; "hud_spraycan"
2B50C0:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50C2:  LDR             R1, =(aHudExtinguishe - 0x2B50C8); jumptable 002B5010 case 42
2B50C4:  ADD             R1, PC; "hud_extinguisher"
2B50C6:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50C8:  LDR             R1, =(aGoggles - 0x2B50CE); jumptable 002B5010 case 44
2B50CA:  ADD             R1, PC; "goggles"
2B50CC:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50CE:  LDR             R1, =(aGoggles - 0x2B50D4); jumptable 002B5010 case 45
2B50D0:  ADD             R1, PC; "goggles"
2B50D2:  B               loc_2B50D8; jumptable 002B5010 cases 16,18,39
2B50D4:  LDR             R1, =(aWidgetExplicit_27+0x10 - 0x2B50DA); jumptable 002B5010 case 46
2B50D6:  ADD             R1, PC; "punch"
2B50D8:  MOV             R0, R1; jumptable 002B5010 cases 16,18,39
2B50DA:  POP             {R7,PC}; jumptable 002B5010 cases 19-36,38,43
