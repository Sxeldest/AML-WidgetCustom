; =========================================================
; Game Engine Function: sub_75EC8
; Address            : 0x75EC8 - 0x764E2
; =========================================================

75EC8:  PUSH            {R4-R7,LR}
75ECA:  ADD             R7, SP, #0xC
75ECC:  PUSH.W          {R8-R11}
75ED0:  SUB             SP, SP, #0x94
75ED2:  LDR             R5, =(byte_1A44F4 - 0x75ED8)
75ED4:  ADD             R5, PC; byte_1A44F4
75ED6:  LDRB            R0, [R5]
75ED8:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x75EE2)
75EDC:  CMP             R0, #0
75EDE:  ADD             R1, PC; __stack_chk_guard_ptr
75EE0:  LDR             R1, [R1]; __stack_chk_guard
75EE2:  LDR             R1, [R1]
75EE4:  STR             R1, [SP,#0xB0+var_20]
75EE6:  BEQ.W           loc_764A4
75EEA:  BL              sub_8C514
75EEE:  LDR             R6, =(byte_116D32 - 0x75EFE)
75EF0:  MOV.W           R1, #0x3F000000
75EF4:  STR.W           R1, [R0,#0x90]
75EF8:  MOVS            R0, #1
75EFA:  ADD             R6, PC; byte_116D32
75EFC:  ADD             R2, SP, #0xB0+var_40
75EFE:  MOVS            R1, #1
75F00:  STRB            R0, [R6]
75F02:  MOVS            R0, #0x44020000
75F08:  STR             R0, [SP,#0xB0+var_54]
75F0A:  MOVS            R0, #0x43B40000
75F10:  STR             R0, [SP,#0xB0+var_58]
75F12:  MOVS            R0, #0x43160000
75F18:  STR             R0, [SP,#0xB0+var_5C]
75F1A:  MOVS            R0, #0x43340000
75F20:  STR             R0, [SP,#0xB0+var_60]
75F22:  MOVS            R0, #0
75F24:  STRD.W          R0, R0, [SP,#0xB0+var_40]
75F28:  ADD             R0, SP, #0xB0+var_60
75F2A:  BL              sub_976E0
75F2E:  ADD             R0, SP, #0xB0+var_58
75F30:  MOVS            R1, #1
75F32:  BL              sub_8FCD4
75F36:  LDR             R0, =(aSampMobileMenu - 0x75F40); "SAMP Mobile - Menu" ...
75F38:  MOV             R1, R6
75F3A:  MOVS            R2, #0x22 ; '"'
75F3C:  ADD             R0, PC; "SAMP Mobile - Menu"
75F3E:  BL              sub_8FD20
75F42:  CMP             R0, #0
75F44:  BEQ.W           loc_7649A
75F48:  STR             R5, [SP,#0xB0+var_8C]
75F4A:  ADD             R5, SP, #0xB0+var_40
75F4C:  MOV             R0, R5
75F4E:  BL              sub_977EC
75F52:  LDR             R0, [SP,#0xB0+var_40]
75F54:  BL              sub_970FC
75F58:  LDR             R0, =(aSensitivity_0 - 0x75F5E); "Sensitivity" ...
75F5A:  ADD             R0, PC; "Sensitivity"
75F5C:  BL              sub_A61F0
75F60:  LDR             R0, =(aSensitivity_1 - 0x75F6E); "##Sensitivity" ...
75F62:  MOV.W           R2, #0x3F800000
75F66:  LDR             R1, =(dword_1A44FC - 0x75F70)
75F68:  LDR             R3, =(a3f - 0x75F74); "%.3f" ...
75F6A:  ADD             R0, PC; "##Sensitivity"
75F6C:  ADD             R1, PC; dword_1A44FC ; int
75F6E:  STR             R1, [SP,#0xB0+var_90]
75F70:  ADD             R3, PC; "%.3f"
75F72:  STRD.W          R3, R2, [SP,#0xB0+var_B0]
75F76:  MOVS            R3, #0
75F78:  MOVS            R2, #0
75F7A:  MOVT            R3, #0x42C8
75F7E:  BL              sub_AB738
75F82:  CBZ             R0, loc_75FB4
75F84:  LDR             R0, [SP,#0xB0+var_90]
75F86:  MOVW            R1, #0x9F30
75F8A:  VLDR            S0, =3000.0
75F8E:  MOVT            R1, #0x6A ; 'j'
75F92:  VLDR            S2, [R0]
75F96:  LDR             R0, =(off_114AA8 - 0x75FA0)
75F98:  VDIV.F32        S0, S2, S0
75F9C:  ADD             R0, PC; off_114AA8
75F9E:  LDR             R0, [R0]; dword_1A4404
75FA0:  LDR             R0, [R0]
75FA2:  ADD             R0, R1
75FA4:  VLDR            S2, =0.001
75FA8:  VADD.F32        S0, S0, S2
75FAC:  VSTR            S0, [R0]
75FB0:  BL              sub_76564
75FB4:  BL              sub_A74FC
75FB8:  BL              sub_A77B4
75FBC:  BL              sub_A74FC
75FC0:  LDR             R0, =(aAspectRatio_0 - 0x75FC6); "Aspect Ratio" ...
75FC2:  ADD             R0, PC; "Aspect Ratio"
75FC4:  BL              sub_A61F0
75FC8:  LDR             R0, =(byte_1A4538 - 0x75FCE)
75FCA:  ADD             R0, PC; byte_1A4538
75FCC:  LDRB            R0, [R0]
75FCE:  DMB.W           ISH
75FD2:  LSLS            R0, R0, #0x1F
75FD4:  LDR             R0, =(off_114B08 - 0x75FDA)
75FD6:  ADD             R0, PC; off_114B08
75FD8:  STR             R0, [SP,#0xB0+var_88]
75FDA:  BEQ.W           loc_764BE
75FDE:  LDR             R0, =(off_110B58 - 0x75FE8); "Default" ...
75FE0:  MOV             R2, R5
75FE2:  MOVS            R3, #8
75FE4:  ADD             R0, PC; off_110B58
75FE6:  VLD1.64         {D16-D17}, [R0]!
75FEA:  VLD1.64         {D18-D19}, [R0]
75FEE:  LDR             R0, =(aAspectratio - 0x75FFA); "##AspectRatio" ...
75FF0:  LDR             R1, =(dword_1A4534 - 0x75FFC)
75FF2:  VST1.64         {D16-D17}, [R2]!
75FF6:  ADD             R0, PC; "##AspectRatio"
75FF8:  ADD             R1, PC; dword_1A4534
75FFA:  VST1.64         {D18-D19}, [R2]
75FFE:  MOV.W           R2, #0xFFFFFFFF
76002:  STR             R2, [SP,#0xB0+var_B0]
76004:  MOV             R2, R5
76006:  STR             R1, [SP,#0xB0+var_94]
76008:  BL              sub_A8070
7600C:  LDR             R5, =(off_114B48 - 0x76012)
7600E:  ADD             R5, PC; off_114B48
76010:  CBZ             R0, loc_76038
76012:  LDR             R1, [SP,#0xB0+var_88]
76014:  LDR             R0, [R5]; dword_1A41D8
76016:  LDR             R4, [R1]
76018:  LDR             R1, [SP,#0xB0+var_94]
7601A:  LDR             R0, [R0]
7601C:  LDR             R3, [R1]
7601E:  STR             R3, [R4]
76020:  CBZ             R0, loc_7602A
76022:  MOV             R1, R3
76024:  BL              sub_69984
76028:  LDR             R3, [R4]
7602A:  LDR             R1, =(aSampOrig - 0x76034); "SAMP_ORIG" ...
7602C:  MOVS            R0, #4; prio
7602E:  LDR             R2, =(aAspectRatioD - 0x76036); "aspect_ratio %d" ...
76030:  ADD             R1, PC; "SAMP_ORIG"
76032:  ADD             R2, PC; "aspect_ratio %d"
76034:  BLX             __android_log_print
76038:  STR             R6, [SP,#0xB0+var_98]
7603A:  BL              sub_A74FC
7603E:  BL              sub_A77B4
76042:  BL              sub_A74FC
76046:  LDR             R0, =(aDrawDistance_0 - 0x7604C); "Draw Distance" ...
76048:  ADD             R0, PC; "Draw Distance"
7604A:  BL              sub_A61F0
7604E:  LDR             R0, =(aDrawdistance - 0x7605C); "##DrawDistance" ...
76050:  MOV.W           R2, #0x3F800000
76054:  LDR             R1, =(dword_1A44F8 - 0x7605E)
76056:  LDR             R3, =(a0f - 0x76062); "%.0f" ...
76058:  ADD             R0, PC; "##DrawDistance"
7605A:  ADD             R1, PC; dword_1A44F8 ; int
7605C:  STR             R1, [SP,#0xB0+var_A4]
7605E:  ADD             R3, PC; "%.0f"
76060:  STRD.W          R3, R2, [SP,#0xB0+var_B0]
76064:  MOVS            R2, #0
76066:  MOVS            R3, #0
76068:  MOVT            R2, #0x4248
7606C:  MOVT            R3, #0x4496
76070:  BL              sub_AB738
76074:  CMP             R0, #0
76076:  IT NE
76078:  BLNE            sub_76564
7607C:  BL              sub_A74FC
76080:  BL              sub_A77B4
76084:  BL              sub_A74FC
76088:  LDR             R0, =(aAdjustVoiceBut - 0x7608E); "Adjust Voice Button" ...
7608A:  ADD             R0, PC; "Adjust Voice Button"
7608C:  BL              sub_A61F0
76090:  LDR             R0, =(aPositionX - 0x76096); "Position X" ...
76092:  ADD             R0, PC; "Position X"
76094:  BL              sub_A61F0
76098:  LDR             R0, =(aVoicex - 0x760A8); "##voiceX" ...
7609A:  MOVS            R2, #0
7609C:  LDR             R1, =(dword_1A4500 - 0x760AA)
7609E:  MOVW            R3, #0x5DC
760A2:  LDR             R6, =(aD - 0x760AC); "%d" ...
760A4:  ADD             R0, PC; "##voiceX"
760A6:  ADD             R1, PC; dword_1A4500 ; int
760A8:  ADD             R6, PC; "%d"
760AA:  STR             R6, [SP,#0xB0+var_B0]
760AC:  MOV             R8, R1
760AE:  BL              sub_AB784
760B2:  MOV             R4, R0
760B4:  LDR             R0, =(aPositionY - 0x760BA); "Position Y" ...
760B6:  ADD             R0, PC; "Position Y"
760B8:  BL              sub_A61F0
760BC:  LDR             R0, =(aVoicey - 0x760CC); "##voiceY" ...
760BE:  MOVW            R9, #0xFC18
760C2:  LDR             R1, =(dword_1A4504 - 0x760D0)
760C4:  MOVT            R9, #0xFFFF
760C8:  ADD             R0, PC; "##voiceY"
760CA:  MOV             R2, R9
760CC:  ADD             R1, PC; dword_1A4504 ; int
760CE:  MOVW            R3, #0x9C4
760D2:  STR             R6, [SP,#0xB0+var_B0]
760D4:  STR             R1, [SP,#0xB0+var_9C]
760D6:  BL              sub_AB784
760DA:  LDR.W           R10, [R5]; dword_1A41D8
760DE:  ORRS            R0, R4
760E0:  CMP             R0, #1
760E2:  BNE             loc_760FA
760E4:  LDR.W           R0, [R10]
760E8:  CBZ             R0, loc_760FA
760EA:  LDR             R1, [SP,#0xB0+var_9C]
760EC:  LDR             R2, [R1]
760EE:  LDR.W           R1, [R8]
760F2:  BL              sub_69A58
760F6:  BL              sub_76564
760FA:  BL              sub_A74FC
760FE:  BL              sub_A77B4
76102:  BL              sub_A74FC
76106:  LDR             R0, =(aAdjustVoiceSiz - 0x7610C); "Adjust Voice Size" ...
76108:  ADD             R0, PC; "Adjust Voice Size"
7610A:  BL              sub_A61F0
7610E:  LDR             R0, =(aWidth - 0x76114); "Width" ...
76110:  ADD             R0, PC; "Width"
76112:  BL              sub_A61F0
76116:  LDR             R0, =(aVoicew - 0x76122); "##voiceW" ...
76118:  MOVS            R2, #0
7611A:  LDR             R5, =(dword_1A4508 - 0x76126)
7611C:  MOVS            R3, #0xC8
7611E:  ADD             R0, PC; "##voiceW"
76120:  STR             R6, [SP,#0xB0+var_B0]
76122:  ADD             R5, PC; dword_1A4508
76124:  MOV             R1, R5; int
76126:  BL              sub_AB784
7612A:  MOV             R4, R0
7612C:  LDR             R0, =(aHeight - 0x76132); "Height" ...
7612E:  ADD             R0, PC; "Height"
76130:  BL              sub_A61F0
76134:  LDR             R0, =(aVoiceh - 0x76140); "##voiceH" ...
76136:  MOVS            R2, #0
76138:  LDR             R1, =(dword_1A450C - 0x76144)
7613A:  MOVS            R3, #0xC8
7613C:  ADD             R0, PC; "##voiceH"
7613E:  STR             R6, [SP,#0xB0+var_B0]
76140:  ADD             R1, PC; dword_1A450C ; int
76142:  STR             R1, [SP,#0xB0+var_A0]
76144:  BL              sub_AB784
76148:  ORRS            R0, R4
7614A:  CMP             R0, #1
7614C:  BNE             loc_76162
7614E:  LDR.W           R0, [R10]
76152:  CBZ             R0, loc_76162
76154:  LDR             R1, [SP,#0xB0+var_A0]
76156:  LDR             R2, [R1]
76158:  LDR             R1, [R5]
7615A:  BL              sub_69A82
7615E:  BL              sub_76564
76162:  BL              sub_A74FC
76166:  BL              sub_A77B4
7616A:  BL              sub_A74FC
7616E:  LDR             R0, =(aAdjustPassenge - 0x76174); "Adjust Passenger Button" ...
76170:  ADD             R0, PC; "Adjust Passenger Button"
76172:  BL              sub_A61F0
76176:  BL              sub_955FC
7617A:  STR             R5, [SP,#0xB0+var_A8]
7617C:  CBZ             R0, loc_76184
7617E:  MOV.W           R11, #1
76182:  B               loc_7618C
76184:  MOVS            R0, #0
76186:  BL              sub_8B850
7618A:  MOV             R11, R0
7618C:  LDR             R0, =(aPositionX - 0x76192); "Position X" ...
7618E:  ADD             R0, PC; "Position X"
76190:  BL              sub_A61F0
76194:  LDR             R0, =(aPassengerx - 0x761A2); "##passengerX" ...
76196:  MOV             R2, R9
76198:  LDR             R1, =(dword_1A451C - 0x761A6)
7619A:  MOV.W           R3, #0x7D0
7619E:  ADD             R0, PC; "##passengerX"
761A0:  STR             R6, [SP,#0xB0+var_B0]
761A2:  ADD             R1, PC; dword_1A451C ; int
761A4:  BL              sub_AB784
761A8:  MOV             R5, R0
761AA:  BL              sub_955FC
761AE:  CBZ             R0, loc_761B4
761B0:  MOVS            R4, #1
761B2:  B               loc_761BC
761B4:  MOVS            R0, #0
761B6:  BL              sub_8B850
761BA:  MOV             R4, R0
761BC:  LDR             R0, =(aPositionY - 0x761C2); "Position Y" ...
761BE:  ADD             R0, PC; "Position Y"
761C0:  BL              sub_A61F0
761C4:  LDR             R0, =(aPassengery - 0x761D2); "##passengerY" ...
761C6:  MOV             R2, R9
761C8:  LDR             R1, =(dword_1A4520 - 0x761D6)
761CA:  MOV.W           R3, #0x7D0
761CE:  ADD             R0, PC; "##passengerY"
761D0:  STR             R6, [SP,#0xB0+var_B0]
761D2:  ADD             R1, PC; dword_1A4520 ; int
761D4:  BL              sub_AB784
761D8:  ORRS            R5, R0
761DA:  ORR.W           R4, R4, R11
761DE:  BL              sub_955FC
761E2:  CMP             R0, #0
761E4:  BEQ             loc_76284
761E6:  MOVS            R0, #1
761E8:  B               loc_7628A
761EA:  ALIGN 4
761EC:  DCD byte_1A44F4 - 0x75ED8
761F0:  DCD byte_116D32 - 0x75EFE
761F4:  DCD aSampMobileMenu - 0x75F40
761F8:  DCD aSensitivity_0 - 0x75F5E
761FC:  DCD aSensitivity_1 - 0x75F6E
76200:  DCD dword_1A44FC - 0x75F70
76204:  DCD a3f - 0x75F74
76208:  DCFS 3000.0
7620C:  DCD off_114AA8 - 0x75FA0
76210:  DCFS 0.001
76214:  DCD aAspectRatio_0 - 0x75FC6
76218:  DCD byte_1A4538 - 0x75FCE
7621C:  DCD off_114B08 - 0x75FDA
76220:  DCD off_110B58 - 0x75FE8
76224:  DCD aAspectratio - 0x75FFA
76228:  DCD dword_1A4534 - 0x75FFC
7622C:  DCD off_114B48 - 0x76012
76230:  DCD aSampOrig - 0x76034
76234:  DCD aAspectRatioD - 0x76036
76238:  DCD aDrawDistance_0 - 0x7604C
7623C:  DCD aDrawdistance - 0x7605C
76240:  DCD dword_1A44F8 - 0x7605E
76244:  DCD a0f - 0x76062
76248:  DCD aAdjustVoiceBut - 0x7608E
7624C:  DCD aPositionX - 0x76096
76250:  DCD aVoicex - 0x760A8
76254:  DCD dword_1A4500 - 0x760AA
76258:  DCD aD - 0x760AC
7625C:  DCD aPositionY - 0x760BA
76260:  DCD aVoicey - 0x760CC
76264:  DCD dword_1A4504 - 0x760D0
76268:  DCD aAdjustVoiceSiz - 0x7610C
7626C:  DCD aWidth - 0x76114
76270:  DCD aVoicew - 0x76122
76274:  DCD dword_1A4508 - 0x76126
76278:  DCD aHeight - 0x76132
7627C:  DCD aVoiceh - 0x76140
76280:  DCD dword_1A450C - 0x76144
76284:  MOVS            R0, #0
76286:  BL              sub_8B850
7628A:  LDR             R1, =(off_114C54 - 0x76298)
7628C:  CMP             R4, #0
7628E:  IT NE
76290:  MOVNE           R4, #1
76292:  CMP             R5, #0
76294:  ADD             R1, PC; off_114C54
76296:  ORR.W           R0, R0, R4
7629A:  LDR             R1, [R1]; byte_1A4598
7629C:  STRB            R0, [R1]
7629E:  IT NE
762A0:  BLNE            sub_76564
762A4:  BL              sub_A74FC
762A8:  BL              sub_A77B4
762AC:  BL              sub_A74FC
762B0:  LDR             R0, =(aSpeakerList_0 - 0x762B6); "Speaker List" ...
762B2:  ADD             R0, PC; "Speaker List"
762B4:  BL              sub_A61F0
762B8:  LDR             R4, =(dword_1A4510 - 0x762C4)
762BA:  MOV.W           R6, #0xFFFFFFFF
762BE:  LDR             R1, =(off_110B78 - 0x762C6); "Off" ...
762C0:  ADD             R4, PC; dword_1A4510
762C2:  ADD             R1, PC; off_110B78
762C4:  LDR             R2, [R4]
762C6:  LDR             R0, =(aSpeakerlist - 0x762D6); "##SpeakerList" ...
762C8:  CMP             R2, #0
762CA:  IT NE
762CC:  MOVNE           R2, #1
762CE:  LDRD.W          R1, R3, [R1]; "Off" ...
762D2:  ADD             R0, PC; "##SpeakerList"
762D4:  STRD.W          R1, R3, [SP,#0xB0+var_70]
762D8:  ADD             R1, SP, #0xB0+var_64
762DA:  STR             R2, [SP,#0xB0+var_64]
762DC:  ADD             R2, SP, #0xB0+var_70
762DE:  MOVS            R3, #2
762E0:  STR             R6, [SP,#0xB0+var_B0]
762E2:  BL              sub_A8070
762E6:  CBZ             R0, loc_762F8
762E8:  LDR             R0, [SP,#0xB0+var_64]
762EA:  SUBS            R0, #1
762EC:  CLZ.W           R0, R0
762F0:  LSRS            R0, R0, #5
762F2:  STR             R0, [R4]
762F4:  BL              sub_76564
762F8:  BL              sub_A74FC
762FC:  BL              sub_A77B4
76300:  BL              sub_A74FC
76304:  LDR             R0, =(aHideGui - 0x7630A); "Hide GUI" ...
76306:  ADD             R0, PC; "Hide GUI"
76308:  BL              sub_A61F0
7630C:  LDR             R0, =(off_110B80 - 0x76318); "Show All" ...
7630E:  ADD             R2, SP, #0xB0+var_50
76310:  LDR             R5, =(dword_1A4518 - 0x7631A)
76312:  MOVS            R3, #4
76314:  ADD             R0, PC; off_110B80
76316:  ADD             R5, PC; dword_1A4518
76318:  VLD1.64         {D16-D17}, [R0]
7631C:  LDR             R0, =(aHidegui - 0x76326); "##HideGui" ...
7631E:  LDR             R1, [R5]
76320:  STR             R1, [SP,#0xB0+var_74]
76322:  ADD             R0, PC; "##HideGui"
76324:  ADD             R1, SP, #0xB0+var_74
76326:  VST1.64         {D16-D17}, [R2]
7632A:  STR             R6, [SP,#0xB0+var_B0]
7632C:  BL              sub_A8070
76330:  CMP             R0, #0
76332:  BEQ             loc_763BC
76334:  LDR             R0, [SP,#0xB0+var_74]
76336:  LDR             R6, =(byte_116D30 - 0x7633E)
76338:  CMP             R0, #3; switch 4 cases
7633A:  ADD             R6, PC; byte_116D30
7633C:  BHI             def_7633E; jumptable 0007633E default case
7633E:  TBB.W           [PC,R0]; switch jump
76342:  DCB 2; jump table for switch statement
76343:  DCB 7
76344:  DCB 0xC
76345:  DCB 0x11
76346:  LDR             R0, =(byte_116D31 - 0x76350); jumptable 0007633E case 0
76348:  MOVS            R1, #1
7634A:  STRB            R1, [R6]
7634C:  ADD             R0, PC; byte_116D31
7634E:  B               loc_7636E
76350:  LDR             R0, =(byte_116D31 - 0x7635A); jumptable 0007633E case 1
76352:  MOVS            R1, #0
76354:  STRB            R1, [R6]
76356:  ADD             R0, PC; byte_116D31
76358:  B               loc_7636E
7635A:  LDRB            R0, [R6]; jumptable 0007633E case 2
7635C:  EOR.W           R0, R0, #1
76360:  STRB            R0, [R6]
76362:  B               def_7633E; jumptable 0007633E default case
76364:  LDR             R0, =(byte_116D31 - 0x7636A); jumptable 0007633E case 3
76366:  ADD             R0, PC; byte_116D31
76368:  LDRB            R1, [R0]
7636A:  EOR.W           R1, R1, #1
7636E:  STRB            R1, [R0]
76370:  BL              sub_6C808; jumptable 0007633E default case
76374:  LDR             R0, [R0,#0x60]
76376:  LDRB            R1, [R6]
76378:  BL              sub_6C90C
7637C:  LDR             R0, =(off_114B44 - 0x76382)
7637E:  ADD             R0, PC; off_114B44
76380:  LDR             R0, [R0]; byte_1A4480
76382:  LDRB            R0, [R0]
76384:  CBZ             R0, loc_76396
76386:  LDR             R0, =(byte_116D31 - 0x7638C)
76388:  ADD             R0, PC; byte_116D31
7638A:  LDRB            R1, [R0]
7638C:  LDR.W           R0, [R10]
76390:  BL              sub_68F78
76394:  B               loc_763AA
76396:  LDR             R0, =(off_114B10 - 0x7639C)
76398:  ADD             R0, PC; off_114B10
7639A:  LDR             R0, [R0]; dword_1A442C
7639C:  LDR             R0, [R0]
7639E:  LDR             R1, =(byte_116D31 - 0x763A4)
763A0:  ADD             R1, PC; byte_116D31
763A2:  LDR.W           R0, [R0,#0x88]
763A6:  LDRB            R1, [R1]
763A8:  STRB            R1, [R0,#8]
763AA:  LDR             R3, [SP,#0xB0+var_74]
763AC:  MOVS            R0, #4; prio
763AE:  LDR             R1, =(aSampOrig - 0x763B6); "SAMP_ORIG" ...
763B0:  LDR             R2, =(aHideGuiD - 0x763BA); "hide_gui %d" ...
763B2:  ADD             R1, PC; "SAMP_ORIG"
763B4:  STR             R3, [R5]
763B6:  ADD             R2, PC; "hide_gui %d"
763B8:  BLX             __android_log_print
763BC:  BL              sub_A74FC
763C0:  BL              sub_A77B4
763C4:  BL              sub_A74FC
763C8:  ADD             R0, SP, #0xB0+var_84
763CA:  BL              sub_977EC
763CE:  LDR             R0, =(aReset - 0x763E0); "Reset" ...
763D0:  MOVS            R2, #0
763D2:  LDR             R1, [SP,#0xB0+var_84]
763D4:  MOVT            R2, #0x4220
763D8:  STRD.W          R1, R2, [SP,#0xB0+var_7C]
763DC:  ADD             R0, PC; "Reset"
763DE:  ADD             R1, SP, #0xB0+var_7C
763E0:  BL              sub_A69B0
763E4:  LDR             R5, [SP,#0xB0+var_8C]
763E6:  CMP             R0, #0
763E8:  LDR             R6, [SP,#0xB0+var_98]
763EA:  BEQ             loc_76492
763EC:  LDR             R0, [SP,#0xB0+var_90]
763EE:  MOVS            R1, #0x42480000
763F4:  LDR             R3, [SP,#0xB0+var_94]
763F6:  MOVS            R2, #0
763F8:  STR             R1, [R0]
763FA:  LDR             R0, [SP,#0xB0+var_88]
763FC:  STR             R2, [R3]
763FE:  LDR             R1, [R0]
76400:  LDR.W           R0, [R10]
76404:  STR             R2, [R1]
76406:  CBZ             R0, loc_7645A
76408:  MOVS            R1, #0
7640A:  BL              sub_69984
7640E:  LDR             R1, [SP,#0xB0+var_A4]
76410:  MOVS            R0, #0x44480000
76416:  LDR             R2, [SP,#0xB0+var_9C]
76418:  STR             R0, [R1]
7641A:  MOVW            R0, #0x14B
7641E:  STR.W           R0, [R8]
76422:  MOV             R1, #0xFFFFFFF2
76426:  LDR.W           R0, [R10]
7642A:  STR             R1, [R2]
7642C:  CBZ             R0, loc_76480
7642E:  MOVW            R1, #0x14B
76432:  MOV             R2, #0xFFFFFFF2
76436:  BL              sub_69A58
7643A:  LDR             R2, [SP,#0xB0+var_A8]
7643C:  MOVS            R0, #1
7643E:  MOVS            R1, #0x50 ; 'P'
76440:  STR             R0, [R4]
76442:  LDR.W           R0, [R10]
76446:  STR             R1, [R2]
76448:  LDR             R2, [SP,#0xB0+var_A0]
7644A:  CMP             R0, #0
7644C:  STR             R1, [R2]
7644E:  ITTT NE
76450:  MOVNE           R1, #0x50 ; 'P'
76452:  MOVNE           R2, #0x50 ; 'P'
76454:  BLNE            sub_69A82
76458:  B               loc_7648E
7645A:  MOVW            R0, #0x14B
7645E:  LDR             R1, [SP,#0xB0+var_A4]
76460:  STR.W           R0, [R8]
76464:  MOVS            R0, #0x44480000
7646A:  STR             R0, [R1]
7646C:  MOV             R0, #0xFFFFFFF2
76470:  LDR             R1, [SP,#0xB0+var_9C]
76472:  STR             R0, [R1]
76474:  MOVS            R0, #1
76476:  LDR             R1, [SP,#0xB0+var_A8]
76478:  STR             R0, [R4]
7647A:  MOVS            R0, #0x50 ; 'P'
7647C:  STR             R0, [R1]
7647E:  B               loc_7648A
76480:  LDR             R1, [SP,#0xB0+var_A8]
76482:  MOVS            R0, #0x50 ; 'P'
76484:  STR             R0, [R1]
76486:  MOVS            R1, #1
76488:  STR             R1, [R4]
7648A:  LDR             R1, [SP,#0xB0+var_A0]
7648C:  STR             R0, [R1]
7648E:  BL              sub_76564
76492:  BL              sub_971E8
76496:  BL              sub_94DC0
7649A:  LDRB            R0, [R6]
7649C:  CMP             R0, #0
7649E:  ITT EQ
764A0:  MOVEQ           R0, #0
764A2:  STRBEQ          R0, [R5]
764A4:  LDR             R0, [SP,#0xB0+var_20]
764A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x764AC)
764A8:  ADD             R1, PC; __stack_chk_guard_ptr
764AA:  LDR             R1, [R1]; __stack_chk_guard
764AC:  LDR             R1, [R1]
764AE:  CMP             R1, R0
764B0:  ITTT EQ
764B2:  ADDEQ           SP, SP, #0x94
764B4:  POPEQ.W         {R8-R11}
764B8:  POPEQ           {R4-R7,PC}
764BA:  BLX             __stack_chk_fail
764BE:  LDR             R0, =(byte_1A4538 - 0x764C4)
764C0:  ADD             R0, PC; byte_1A4538 ; __guard *
764C2:  BLX             j___cxa_guard_acquire
764C6:  CMP             R0, #0
764C8:  BEQ.W           loc_75FDE
764CC:  LDR             R1, =(dword_1A4534 - 0x764D4)
764CE:  LDR             R0, [SP,#0xB0+var_88]
764D0:  ADD             R1, PC; dword_1A4534
764D2:  LDR             R0, [R0]
764D4:  LDR             R2, [R0]
764D6:  LDR             R0, =(byte_1A4538 - 0x764DE)
764D8:  STR             R2, [R1]
764DA:  ADD             R0, PC; byte_1A4538 ; __guard *
764DC:  BLX             j___cxa_guard_release
764E0:  B               loc_75FDE
