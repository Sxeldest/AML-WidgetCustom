; =========================================================
; Game Engine Function: _ZN19CHIDJoystickXbox36018FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28FD6C - 0x28FEFC
; =========================================================

28FD6C:  PUSH            {R4-R7,LR}
28FD6E:  ADD             R7, SP, #0xC
28FD70:  PUSH.W          {R8-R10}
28FD74:  MOV             R8, R0
28FD76:  LDR             R0, [R1,#8]
28FD78:  MOV             R9, R2
28FD7A:  CMP             R0, #0
28FD7C:  BEQ.W           loc_28FE7A
28FD80:  LDR             R1, [R1,#0xC]
28FD82:  MOVS            R2, #0
28FD84:  MOV.W           R10, #0
28FD88:  MOVS            R5, #0
28FD8A:  ADDS            R1, #4
28FD8C:  LDR             R6, [R1]
28FD8E:  CMP             R6, R3
28FD90:  BNE.W           def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FD94:  LDR.W           R6, [R1,#-4]
28FD98:  CMP             R6, #0x45 ; 'E'; switch 70 cases
28FD9A:  BHI.W           def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FD9E:  TBB.W           [PC,R6]; switch jump
28FDA2:  DCB 0x23; jump table for switch statement
28FDA3:  DCB 0x23
28FDA4:  DCB 0x23
28FDA5:  DCB 0x23
28FDA6:  DCB 0x2F
28FDA7:  DCB 0x32
28FDA8:  DCB 0x36
28FDA9:  DCB 0x3A
28FDAA:  DCB 0x3E
28FDAB:  DCB 0x42
28FDAC:  DCB 0x45
28FDAD:  DCB 0x49
28FDAE:  DCB 0x4D
28FDAF:  DCB 0x51
28FDB0:  DCB 0x5C
28FDB1:  DCB 0x5C
28FDB2:  DCB 0x5C
28FDB3:  DCB 0x5C
28FDB4:  DCB 0x5C
28FDB5:  DCB 0x5C
28FDB6:  DCB 0x5C
28FDB7:  DCB 0x5C
28FDB8:  DCB 0x5C
28FDB9:  DCB 0x5C
28FDBA:  DCB 0x5C
28FDBB:  DCB 0x5C
28FDBC:  DCB 0x5C
28FDBD:  DCB 0x5C
28FDBE:  DCB 0x5C
28FDBF:  DCB 0x5C
28FDC0:  DCB 0x5C
28FDC1:  DCB 0x5C
28FDC2:  DCB 0x5C
28FDC3:  DCB 0x5C
28FDC4:  DCB 0x5C
28FDC5:  DCB 0x5C
28FDC6:  DCB 0x5C
28FDC7:  DCB 0x5C
28FDC8:  DCB 0x5C
28FDC9:  DCB 0x5C
28FDCA:  DCB 0x5C
28FDCB:  DCB 0x5C
28FDCC:  DCB 0x5C
28FDCD:  DCB 0x5C
28FDCE:  DCB 0x5C
28FDCF:  DCB 0x5C
28FDD0:  DCB 0x5C
28FDD1:  DCB 0x5C
28FDD2:  DCB 0x5C
28FDD3:  DCB 0x5C
28FDD4:  DCB 0x5C
28FDD5:  DCB 0x5C
28FDD6:  DCB 0x5C
28FDD7:  DCB 0x5C
28FDD8:  DCB 0x5C
28FDD9:  DCB 0x5C
28FDDA:  DCB 0x5C
28FDDB:  DCB 0x5C
28FDDC:  DCB 0x5C
28FDDD:  DCB 0x5C
28FDDE:  DCB 0x5C
28FDDF:  DCB 0x5C
28FDE0:  DCB 0x5C
28FDE1:  DCB 0x5C
28FDE2:  DCB 0x27
28FDE3:  DCB 0x27
28FDE4:  DCB 0x2B
28FDE5:  DCB 0x2B
28FDE6:  DCB 0x55
28FDE7:  DCB 0x59
28FDE8:  MOV.W           R10, #1; jumptable 0028FD9E cases 0-3
28FDEC:  MOV             R5, R6
28FDEE:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FDF0:  MOV.W           R10, #3; jumptable 0028FD9E cases 64,65
28FDF4:  MOVS            R5, #0
28FDF6:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FDF8:  MOV.W           R10, #4; jumptable 0028FD9E cases 66,67
28FDFC:  MOVS            R5, #0
28FDFE:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE00:  MOV.W           R10, #0; jumptable 0028FD9E case 4
28FE04:  B               loc_28FE58
28FE06:  MOVS            R5, #0; jumptable 0028FD9E case 5
28FE08:  MOV.W           R10, #0
28FE0C:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE0E:  MOVS            R5, #2; jumptable 0028FD9E case 6
28FE10:  MOV.W           R10, #2
28FE14:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE16:  MOV.W           R10, #2; jumptable 0028FD9E case 7
28FE1A:  MOVS            R5, #3
28FE1C:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE1E:  MOV.W           R10, #3; jumptable 0028FD9E case 8
28FE22:  MOVS            R5, #4
28FE24:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE26:  MOV.W           R10, #3; jumptable 0028FD9E case 9
28FE2A:  B               loc_28FE58
28FE2C:  MOV.W           R10, #3; jumptable 0028FD9E case 10
28FE30:  MOVS            R5, #2
28FE32:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE34:  MOVS            R5, #3; jumptable 0028FD9E case 11
28FE36:  MOV.W           R10, #3
28FE3A:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE3C:  MOV.W           R10, #5; jumptable 0028FD9E case 12
28FE40:  MOVS            R5, #0
28FE42:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE44:  MOV.W           R10, #6; jumptable 0028FD9E case 13
28FE48:  MOVS            R5, #0
28FE4A:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE4C:  MOV.W           R10, #2; jumptable 0028FD9E case 68
28FE50:  MOVS            R5, #0
28FE52:  B               def_28FD9E; jumptable 0028FD9E default case, cases 14-63
28FE54:  MOV.W           R10, #2; jumptable 0028FD9E case 69
28FE58:  MOVS            R5, #1
28FE5A:  ADDS            R2, #1; jumptable 0028FD9E default case, cases 14-63
28FE5C:  ADDS            R1, #0x14
28FE5E:  CMP             R2, R0
28FE60:  BCC.W           loc_28FD8C
28FE64:  CMP.W           R9, #0
28FE68:  BEQ             loc_28FE86
28FE6A:  ADR             R1, aWidgetPedMoveL_3; "widget_ped_move_left"
28FE6C:  MOV             R0, R9; haystack
28FE6E:  BLX             strstr
28FE72:  CBZ             R0, loc_28FE8A
28FE74:  MOVS            R6, #5
28FE76:  MOVS            R5, #2
28FE78:  B               loc_28FE98
28FE7A:  MOVS            R5, #0
28FE7C:  MOV.W           R10, #0
28FE80:  CMP.W           R9, #0
28FE84:  BNE             loc_28FE6A
28FE86:  MOV             R6, R10
28FE88:  B               loc_28FE98
28FE8A:  ADR             R1, aWidgetPedMoveR_3; "widget_ped_move_right"
28FE8C:  MOV             R0, R9; haystack
28FE8E:  BLX             strstr
28FE92:  CBZ             R0, loc_28FEC2
28FE94:  MOVS            R6, #5
28FE96:  MOVS            R5, #3
28FE98:  VMOV.32         D16[0], R5
28FE9C:  ADDS            R0, R5, #1
28FE9E:  VMOV.I32        Q9, #0x3E000000
28FEA2:  VMOV.32         D17[0], R0
28FEA6:  ADDS            R0, R6, #1
28FEA8:  VMOV.32         D16[1], R0
28FEAC:  VMOV.32         D17[1], R6
28FEB0:  VCVT.F32.S32    Q8, Q8
28FEB4:  VMUL.F32        Q8, Q8, Q9
28FEB8:  VST1.32         {D16-D17}, [R8]
28FEBC:  POP.W           {R8-R10}
28FEC0:  POP             {R4-R7,PC}
28FEC2:  ADR             R1, aWidgetVehicleS_7; "widget_vehicle_steer_left"
28FEC4:  MOV             R0, R9; haystack
28FEC6:  BLX             strstr
28FECA:  CMP             R0, #0
28FECC:  BNE             loc_28FE74
28FECE:  ADR             R1, aWidgetVehicleS_8; "widget_vehicle_steer_right"
28FED0:  MOV             R0, R9; haystack
28FED2:  BLX             strstr
28FED6:  CMP             R0, #0
28FED8:  BNE             loc_28FE94
28FEDA:  ADR             R1, aWidgetPedMoveU_3; "widget_ped_move_up"
28FEDC:  MOV             R0, R9; haystack
28FEDE:  BLX             strstr
28FEE2:  MOVS            R6, #5
28FEE4:  CBZ             R0, loc_28FEEA
28FEE6:  MOVS            R5, #4
28FEE8:  B               loc_28FE98
28FEEA:  ADR             R1, aWidgetPedMoveD_3; "widget_ped_move_down"
28FEEC:  MOV             R0, R9; haystack
28FEEE:  BLX             strstr
28FEF2:  CMP             R0, #0
28FEF4:  ITE EQ
28FEF6:  MOVEQ           R6, R10
28FEF8:  MOVNE           R5, #1
28FEFA:  B               loc_28FE98
