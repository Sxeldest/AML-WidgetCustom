; =========================================================
; Game Engine Function: _ZN19CHIDJoystickMogaPro18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28F118 - 0x28F2A8
; =========================================================

28F118:  PUSH            {R4-R7,LR}
28F11A:  ADD             R7, SP, #0xC
28F11C:  PUSH.W          {R8-R10}
28F120:  MOV             R8, R0
28F122:  LDR             R0, [R1,#8]
28F124:  MOV             R9, R2
28F126:  CMP             R0, #0
28F128:  BEQ.W           loc_28F226
28F12C:  LDR             R1, [R1,#0xC]
28F12E:  MOVS            R2, #0
28F130:  MOV.W           R10, #0
28F134:  MOVS            R5, #0
28F136:  ADDS            R1, #4
28F138:  LDR             R6, [R1]
28F13A:  CMP             R6, R3
28F13C:  BNE.W           def_28F14A; jumptable 0028F14A default case, cases 14-63
28F140:  LDR.W           R6, [R1,#-4]
28F144:  CMP             R6, #0x45 ; 'E'; switch 70 cases
28F146:  BHI.W           def_28F14A; jumptable 0028F14A default case, cases 14-63
28F14A:  TBB.W           [PC,R6]; switch jump
28F14E:  DCB 0x23; jump table for switch statement
28F14F:  DCB 0x23
28F150:  DCB 0x23
28F151:  DCB 0x23
28F152:  DCB 0x2F
28F153:  DCB 0x32
28F154:  DCB 0x36
28F155:  DCB 0x3A
28F156:  DCB 0x3E
28F157:  DCB 0x42
28F158:  DCB 0x45
28F159:  DCB 0x49
28F15A:  DCB 0x4D
28F15B:  DCB 0x51
28F15C:  DCB 0x5C
28F15D:  DCB 0x5C
28F15E:  DCB 0x5C
28F15F:  DCB 0x5C
28F160:  DCB 0x5C
28F161:  DCB 0x5C
28F162:  DCB 0x5C
28F163:  DCB 0x5C
28F164:  DCB 0x5C
28F165:  DCB 0x5C
28F166:  DCB 0x5C
28F167:  DCB 0x5C
28F168:  DCB 0x5C
28F169:  DCB 0x5C
28F16A:  DCB 0x5C
28F16B:  DCB 0x5C
28F16C:  DCB 0x5C
28F16D:  DCB 0x5C
28F16E:  DCB 0x5C
28F16F:  DCB 0x5C
28F170:  DCB 0x5C
28F171:  DCB 0x5C
28F172:  DCB 0x5C
28F173:  DCB 0x5C
28F174:  DCB 0x5C
28F175:  DCB 0x5C
28F176:  DCB 0x5C
28F177:  DCB 0x5C
28F178:  DCB 0x5C
28F179:  DCB 0x5C
28F17A:  DCB 0x5C
28F17B:  DCB 0x5C
28F17C:  DCB 0x5C
28F17D:  DCB 0x5C
28F17E:  DCB 0x5C
28F17F:  DCB 0x5C
28F180:  DCB 0x5C
28F181:  DCB 0x5C
28F182:  DCB 0x5C
28F183:  DCB 0x5C
28F184:  DCB 0x5C
28F185:  DCB 0x5C
28F186:  DCB 0x5C
28F187:  DCB 0x5C
28F188:  DCB 0x5C
28F189:  DCB 0x5C
28F18A:  DCB 0x5C
28F18B:  DCB 0x5C
28F18C:  DCB 0x5C
28F18D:  DCB 0x5C
28F18E:  DCB 0x27
28F18F:  DCB 0x27
28F190:  DCB 0x2B
28F191:  DCB 0x2B
28F192:  DCB 0x55
28F193:  DCB 0x59
28F194:  MOV.W           R10, #1; jumptable 0028F14A cases 0-3
28F198:  MOV             R5, R6
28F19A:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F19C:  MOV.W           R10, #3; jumptable 0028F14A cases 64,65
28F1A0:  MOVS            R5, #0
28F1A2:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1A4:  MOV.W           R10, #4; jumptable 0028F14A cases 66,67
28F1A8:  MOVS            R5, #0
28F1AA:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1AC:  MOV.W           R10, #0; jumptable 0028F14A case 4
28F1B0:  B               loc_28F204
28F1B2:  MOVS            R5, #0; jumptable 0028F14A case 5
28F1B4:  MOV.W           R10, #0
28F1B8:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1BA:  MOVS            R5, #2; jumptable 0028F14A case 6
28F1BC:  MOV.W           R10, #2
28F1C0:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1C2:  MOV.W           R10, #2; jumptable 0028F14A case 7
28F1C6:  MOVS            R5, #3
28F1C8:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1CA:  MOV.W           R10, #3; jumptable 0028F14A case 8
28F1CE:  MOVS            R5, #4
28F1D0:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1D2:  MOV.W           R10, #3; jumptable 0028F14A case 9
28F1D6:  B               loc_28F204
28F1D8:  MOV.W           R10, #3; jumptable 0028F14A case 10
28F1DC:  MOVS            R5, #2
28F1DE:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1E0:  MOVS            R5, #3; jumptable 0028F14A case 11
28F1E2:  MOV.W           R10, #3
28F1E6:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1E8:  MOV.W           R10, #5; jumptable 0028F14A case 12
28F1EC:  MOVS            R5, #0
28F1EE:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1F0:  MOV.W           R10, #6; jumptable 0028F14A case 13
28F1F4:  MOVS            R5, #0
28F1F6:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F1F8:  MOV.W           R10, #2; jumptable 0028F14A case 68
28F1FC:  MOVS            R5, #0
28F1FE:  B               def_28F14A; jumptable 0028F14A default case, cases 14-63
28F200:  MOV.W           R10, #2; jumptable 0028F14A case 69
28F204:  MOVS            R5, #1
28F206:  ADDS            R2, #1; jumptable 0028F14A default case, cases 14-63
28F208:  ADDS            R1, #0x14
28F20A:  CMP             R2, R0
28F20C:  BCC.W           loc_28F138
28F210:  CMP.W           R9, #0
28F214:  BEQ             loc_28F232
28F216:  ADR             R1, aWidgetPedMoveL_1; "widget_ped_move_left"
28F218:  MOV             R0, R9; haystack
28F21A:  BLX             strstr
28F21E:  CBZ             R0, loc_28F236
28F220:  MOVS            R6, #5
28F222:  MOVS            R5, #2
28F224:  B               loc_28F244
28F226:  MOVS            R5, #0
28F228:  MOV.W           R10, #0
28F22C:  CMP.W           R9, #0
28F230:  BNE             loc_28F216
28F232:  MOV             R6, R10
28F234:  B               loc_28F244
28F236:  ADR             R1, aWidgetPedMoveR_1; "widget_ped_move_right"
28F238:  MOV             R0, R9; haystack
28F23A:  BLX             strstr
28F23E:  CBZ             R0, loc_28F26E
28F240:  MOVS            R6, #5
28F242:  MOVS            R5, #3
28F244:  VMOV.32         D16[0], R5
28F248:  ADDS            R0, R5, #1
28F24A:  VMOV.I32        Q9, #0x3E000000
28F24E:  VMOV.32         D17[0], R0
28F252:  ADDS            R0, R6, #1
28F254:  VMOV.32         D16[1], R0
28F258:  VMOV.32         D17[1], R6
28F25C:  VCVT.F32.S32    Q8, Q8
28F260:  VMUL.F32        Q8, Q8, Q9
28F264:  VST1.32         {D16-D17}, [R8]
28F268:  POP.W           {R8-R10}
28F26C:  POP             {R4-R7,PC}
28F26E:  ADR             R1, aWidgetVehicleS_3; "widget_vehicle_steer_left"
28F270:  MOV             R0, R9; haystack
28F272:  BLX             strstr
28F276:  CMP             R0, #0
28F278:  BNE             loc_28F220
28F27A:  ADR             R1, aWidgetVehicleS_4; "widget_vehicle_steer_right"
28F27C:  MOV             R0, R9; haystack
28F27E:  BLX             strstr
28F282:  CMP             R0, #0
28F284:  BNE             loc_28F240
28F286:  ADR             R1, aWidgetPedMoveU_1; "widget_ped_move_up"
28F288:  MOV             R0, R9; haystack
28F28A:  BLX             strstr
28F28E:  MOVS            R6, #5
28F290:  CBZ             R0, loc_28F296
28F292:  MOVS            R5, #4
28F294:  B               loc_28F244
28F296:  ADR             R1, aWidgetPedMoveD_1; "widget_ped_move_down"
28F298:  MOV             R0, R9; haystack
28F29A:  BLX             strstr
28F29E:  CMP             R0, #0
28F2A0:  ITE EQ
28F2A2:  MOVEQ           R6, R10
28F2A4:  MOVNE           R5, #1
28F2A6:  B               loc_28F244
