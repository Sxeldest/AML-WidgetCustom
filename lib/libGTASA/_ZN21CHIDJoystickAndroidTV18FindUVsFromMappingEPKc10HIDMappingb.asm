; =========================================================
; Game Engine Function: _ZN21CHIDJoystickAndroidTV18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28DF0C - 0x28E08E
; =========================================================

28DF0C:  PUSH            {R4-R7,LR}
28DF0E:  ADD             R7, SP, #0xC
28DF10:  PUSH.W          {R8-R10}
28DF14:  MOV             R8, R0
28DF16:  LDR             R0, [R1,#8]
28DF18:  MOV             R9, R2
28DF1A:  CMP             R0, #0
28DF1C:  BEQ.W           loc_28E00C
28DF20:  LDR             R1, [R1,#0xC]
28DF22:  MOVS            R2, #0
28DF24:  MOV.W           R10, #0
28DF28:  MOVS            R5, #0
28DF2A:  ADDS            R1, #4
28DF2C:  LDR             R6, [R1]
28DF2E:  CMP             R6, R3
28DF30:  BNE.W           def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DF34:  LDR.W           R6, [R1,#-4]
28DF38:  CMP             R6, #0x45 ; 'E'; switch 70 cases
28DF3A:  BHI.W           def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DF3E:  TBB.W           [PC,R6]; switch jump
28DF42:  DCB 0x23; jump table for switch statement
28DF43:  DCB 0x23
28DF44:  DCB 0x23
28DF45:  DCB 0x23
28DF46:  DCB 0x55
28DF47:  DCB 0x55
28DF48:  DCB 0x2F
28DF49:  DCB 0x33
28DF4A:  DCB 0x37
28DF4B:  DCB 0x3B
28DF4C:  DCB 0x3E
28DF4D:  DCB 0x42
28DF4E:  DCB 0x46
28DF4F:  DCB 0x4A
28DF50:  DCB 0x55
28DF51:  DCB 0x55
28DF52:  DCB 0x55
28DF53:  DCB 0x55
28DF54:  DCB 0x55
28DF55:  DCB 0x55
28DF56:  DCB 0x55
28DF57:  DCB 0x55
28DF58:  DCB 0x55
28DF59:  DCB 0x55
28DF5A:  DCB 0x55
28DF5B:  DCB 0x55
28DF5C:  DCB 0x55
28DF5D:  DCB 0x55
28DF5E:  DCB 0x55
28DF5F:  DCB 0x55
28DF60:  DCB 0x55
28DF61:  DCB 0x55
28DF62:  DCB 0x55
28DF63:  DCB 0x55
28DF64:  DCB 0x55
28DF65:  DCB 0x55
28DF66:  DCB 0x55
28DF67:  DCB 0x55
28DF68:  DCB 0x55
28DF69:  DCB 0x55
28DF6A:  DCB 0x55
28DF6B:  DCB 0x55
28DF6C:  DCB 0x55
28DF6D:  DCB 0x55
28DF6E:  DCB 0x55
28DF6F:  DCB 0x55
28DF70:  DCB 0x55
28DF71:  DCB 0x55
28DF72:  DCB 0x55
28DF73:  DCB 0x55
28DF74:  DCB 0x55
28DF75:  DCB 0x55
28DF76:  DCB 0x55
28DF77:  DCB 0x55
28DF78:  DCB 0x55
28DF79:  DCB 0x55
28DF7A:  DCB 0x55
28DF7B:  DCB 0x55
28DF7C:  DCB 0x55
28DF7D:  DCB 0x55
28DF7E:  DCB 0x55
28DF7F:  DCB 0x55
28DF80:  DCB 0x55
28DF81:  DCB 0x55
28DF82:  DCB 0x27
28DF83:  DCB 0x27
28DF84:  DCB 0x2B
28DF85:  DCB 0x2B
28DF86:  DCB 0x4E
28DF87:  DCB 0x52
28DF88:  MOV.W           R10, #1; jumptable 0028DF3E cases 0-3
28DF8C:  MOV             R5, R6
28DF8E:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DF90:  MOV.W           R10, #3; jumptable 0028DF3E cases 64,65
28DF94:  MOVS            R5, #0
28DF96:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DF98:  MOV.W           R10, #4; jumptable 0028DF3E cases 66,67
28DF9C:  MOVS            R5, #0
28DF9E:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFA0:  MOVS            R5, #2; jumptable 0028DF3E case 6
28DFA2:  MOV.W           R10, #2
28DFA6:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFA8:  MOV.W           R10, #2; jumptable 0028DF3E case 7
28DFAC:  MOVS            R5, #3
28DFAE:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFB0:  MOV.W           R10, #3; jumptable 0028DF3E case 8
28DFB4:  MOVS            R5, #4
28DFB6:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFB8:  MOV.W           R10, #3; jumptable 0028DF3E case 9
28DFBC:  B               loc_28DFEA
28DFBE:  MOV.W           R10, #3; jumptable 0028DF3E case 10
28DFC2:  MOVS            R5, #2
28DFC4:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFC6:  MOVS            R5, #3; jumptable 0028DF3E case 11
28DFC8:  MOV.W           R10, #3
28DFCC:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFCE:  MOV.W           R10, #5; jumptable 0028DF3E case 12
28DFD2:  MOVS            R5, #0
28DFD4:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFD6:  MOV.W           R10, #6; jumptable 0028DF3E case 13
28DFDA:  MOVS            R5, #0
28DFDC:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFDE:  MOV.W           R10, #2; jumptable 0028DF3E case 68
28DFE2:  MOVS            R5, #0
28DFE4:  B               def_28DF3E; jumptable 0028DF3E default case, cases 4,5,14-63
28DFE6:  MOV.W           R10, #2; jumptable 0028DF3E case 69
28DFEA:  MOVS            R5, #1
28DFEC:  ADDS            R2, #1; jumptable 0028DF3E default case, cases 4,5,14-63
28DFEE:  ADDS            R1, #0x14
28DFF0:  CMP             R2, R0
28DFF2:  BCC.W           loc_28DF2C
28DFF6:  CMP.W           R9, #0
28DFFA:  BEQ             loc_28E018
28DFFC:  ADR             R1, aWidgetPedMoveL_0; "widget_ped_move_left"
28DFFE:  MOV             R0, R9; haystack
28E000:  BLX             strstr
28E004:  CBZ             R0, loc_28E01C
28E006:  MOVS            R6, #5
28E008:  MOVS            R5, #2
28E00A:  B               loc_28E02A
28E00C:  MOVS            R5, #0
28E00E:  MOV.W           R10, #0
28E012:  CMP.W           R9, #0
28E016:  BNE             loc_28DFFC
28E018:  MOV             R6, R10
28E01A:  B               loc_28E02A
28E01C:  ADR             R1, aWidgetPedMoveR_0; "widget_ped_move_right"
28E01E:  MOV             R0, R9; haystack
28E020:  BLX             strstr
28E024:  CBZ             R0, loc_28E054
28E026:  MOVS            R6, #5
28E028:  MOVS            R5, #3
28E02A:  VMOV.32         D16[0], R5
28E02E:  ADDS            R0, R5, #1
28E030:  VMOV.I32        Q9, #0x3E000000
28E034:  VMOV.32         D17[0], R0
28E038:  ADDS            R0, R6, #1
28E03A:  VMOV.32         D16[1], R0
28E03E:  VMOV.32         D17[1], R6
28E042:  VCVT.F32.S32    Q8, Q8
28E046:  VMUL.F32        Q8, Q8, Q9
28E04A:  VST1.32         {D16-D17}, [R8]
28E04E:  POP.W           {R8-R10}
28E052:  POP             {R4-R7,PC}
28E054:  ADR             R1, aWidgetVehicleS_1; "widget_vehicle_steer_left"
28E056:  MOV             R0, R9; haystack
28E058:  BLX             strstr
28E05C:  CMP             R0, #0
28E05E:  BNE             loc_28E006
28E060:  ADR             R1, aWidgetVehicleS_2; "widget_vehicle_steer_right"
28E062:  MOV             R0, R9; haystack
28E064:  BLX             strstr
28E068:  CMP             R0, #0
28E06A:  BNE             loc_28E026
28E06C:  ADR             R1, aWidgetPedMoveU_0; "widget_ped_move_up"
28E06E:  MOV             R0, R9; haystack
28E070:  BLX             strstr
28E074:  MOVS            R6, #5
28E076:  CBZ             R0, loc_28E07C
28E078:  MOVS            R5, #4
28E07A:  B               loc_28E02A
28E07C:  ADR             R1, aWidgetPedMoveD_0; "widget_ped_move_down"
28E07E:  MOV             R0, R9; haystack
28E080:  BLX             strstr
28E084:  CMP             R0, #0
28E086:  ITE EQ
28E088:  MOVEQ           R6, R10
28E08A:  MOVNE           R5, #1
28E08C:  B               loc_28E02A
