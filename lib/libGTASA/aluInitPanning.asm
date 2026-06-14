; =========================================================
; Game Engine Function: aluInitPanning
; Address            : 0x25FBB0 - 0x2600B6
; =========================================================

25FBB0:  PUSH            {R4-R7,LR}
25FBB2:  ADD             R7, SP, #0xC
25FBB4:  PUSH.W          {R8-R11}
25FBB8:  SUB             SP, SP, #4
25FBBA:  VPUSH           {D8-D9}
25FBBE:  SUB             SP, SP, #0x28
25FBC0:  MOV             R9, R0
25FBC2:  ADD.W           R6, R9, #0x104
25FBC6:  LDR.W           R0, [R9,#0x1C]
25FBCA:  ADD.W           R5, R9, #0xE0
25FBCE:  SUB.W           R1, R0, #0x1500; switch 7 cases
25FBD2:  CMP             R1, #6
25FBD4:  BHI             def_25FBD6; jumptable 0025FBD6 default case
25FBD6:  TBH.W           [PC,R1,LSL#1]; switch jump
25FBDA:  DCW 7; jump table for switch statement
25FBDC:  DCW 0x27
25FBDE:  DCW 0x267
25FBE0:  DCW 0x3A
25FBE2:  DCW 0x5A
25FBE4:  DCW 0x72
25FBE6:  DCW 0x91
25FBE8:  MOVS            R0, #2; jumptable 0025FBD6 case 5376
25FBEA:  STR.W           R0, [R9,#0xE0]
25FBEE:  MOVS            R0, #1
25FBF0:  STR.W           R0, [R9,#0x128]
25FBF4:  MOVS            R0, #0
25FBF6:  STR.W           R0, [R9,#0x104]
25FBFA:  B               loc_2600A8; jumptable 0025FBD6 case 5378
25FBFC:  CMP.W           R0, #0x80000000; jumptable 0025FBD6 default case
25FC00:  BNE.W           loc_2600A8; jumptable 0025FBD6 case 5378
25FC04:  ADR.W           R0, dword_2600F0
25FC08:  LDR.W           R10, =(aLayoutSide51 - 0x25FC18); "layout_side51"
25FC0C:  VLD1.64         {D16-D17}, [R0@128]
25FC10:  ADR.W           R0, dword_2600E0
25FC14:  ADD             R10, PC; "layout_side51"
25FC16:  VLD1.64         {D18-D19}, [R0@128]
25FC1A:  MOVS            R0, #5
25FC1C:  STR.W           R0, [R9,#0x128]
25FC20:  MOVS            R0, #8
25FC22:  VLDR            S0, =1.5708
25FC26:  B               loc_25FCAE
25FC28:  MOVS            R0, #2; jumptable 0025FBD6 case 5377
25FC2A:  MOVS            R1, #0
25FC2C:  STR.W           R0, [R9,#0x128]
25FC30:  MOVS            R0, #1
25FC32:  LDR.W           R10, =(aLayoutStereo - 0x25FC46); "layout_stereo"
25FC36:  STRD.W          R1, R0, [R9,#0xE0]
25FC3A:  MOV             R1, #0xBFC90FDB
25FC42:  ADD             R10, PC; "layout_stereo"
25FC44:  VLDR            S0, =1.5708
25FC48:  STR.W           R1, [R9,#0x104]
25FC4C:  B               loc_25FD48
25FC4E:  ADR.W           R0, dword_260120; jumptable 0025FBD6 case 5379
25FC52:  MOVS            R1, #4
25FC54:  LDR.W           R10, =(aLayoutQuad - 0x25FC80); "layout_quad"
25FC58:  MOVW            R2, #0xFDB
25FC5C:  VLD1.64         {D16-D17}, [R0@128]
25FC60:  MOV             R0, #0xBF490FDB
25FC68:  MOVT            R2, #0x3F49
25FC6C:  STR.W           R1, [R9,#0x128]
25FC70:  MOV             R1, #0xC016CBE4
25FC78:  VST1.32         {D16-D17}, [R5]
25FC7C:  ADD             R10, PC; "layout_quad"
25FC7E:  STRD.W          R1, R0, [R9,#0x104]
25FC82:  MOVS            R0, #3
25FC84:  VLDR            S0, =2.3562
25FC88:  STR.W           R2, [R9,#0x10C]
25FC8C:  B               loc_25FD48
25FC8E:  LDR.W           R10, =(aLayoutSurround - 0x25FCA2); jumptable 0025FBD6 case 5380
25FC92:  ADR.W           R0, dword_260100
25FC96:  VLD1.64         {D16-D17}, [R0@128]
25FC9A:  ADR.W           R0, dword_260110
25FC9E:  ADD             R10, PC; "layout_surround51"
25FCA0:  VLD1.64         {D18-D19}, [R0@128]
25FCA4:  MOVS            R0, #5
25FCA6:  VLDR            S0, =1.9199
25FCAA:  STR.W           R0, [R9,#0x128]
25FCAE:  VST1.32         {D16-D17}, [R5]
25FCB2:  STR.W           R0, [R9,#0xF0]
25FCB6:  MOVS            R0, #4
25FCB8:  VST1.32         {D18-D19}, [R6]
25FCBC:  B               loc_25FD48
25FCBE:  ADR.W           R0, dword_2600E0; jumptable 0025FBD6 case 5381
25FCC2:  LDR.W           R10, =(aLayoutSurround_0 - 0x25FCE2); "layout_surround61"
25FCC6:  VLD1.64         {D16-D17}, [R0@128]
25FCCA:  ADR.W           R0, dword_2600F0
25FCCE:  MOVS            R1, #6
25FCD0:  MOVS            R2, #8
25FCD2:  VLD1.64         {D18-D19}, [R0@128]
25FCD6:  MOV             R0, #0x3FC90FDB
25FCDE:  ADD             R10, PC; "layout_surround61"
25FCE0:  STR.W           R1, [R9,#0x128]
25FCE4:  VST1.32         {D18-D19}, [R5]
25FCE8:  STRD.W          R2, R1, [R9,#0xF0]
25FCEC:  VST1.32         {D16-D17}, [R6]
25FCF0:  STR.W           R0, [R9,#0x114]
25FCF4:  MOVS            R0, #5
25FCF6:  VLDR            S0, =3.1416
25FCFA:  B               loc_25FD48
25FCFC:  ADR.W           R0, dword_2600C0; jumptable 0025FBD6 case 5382
25FD00:  MOVS            R1, #7
25FD02:  VLD1.64         {D16-D17}, [R0@128]
25FD06:  ADR.W           R0, dword_2600D0
25FD0A:  MOVS            R2, #8
25FD0C:  MOVS            R3, #1
25FD0E:  VLD1.64         {D18-D19}, [R0@128]
25FD12:  MOV             R0, #0x3FC90FDB
25FD1A:  LDR.W           R10, =(aLayoutSurround_1 - 0x25FD2C); "layout_surround71"
25FD1E:  STR.W           R1, [R9,#0x128]
25FD22:  MOVS            R1, #5
25FD24:  VST1.32         {D18-D19}, [R5]
25FD28:  ADD             R10, PC; "layout_surround71"
25FD2A:  STRD.W          R3, R2, [R9,#0xF0]
25FD2E:  STR.W           R1, [R9,#0xF8]
25FD32:  MOVW            R1, #0xA92
25FD36:  VLDR            S0, =2.618
25FD3A:  MOVT            R1, #0x3F06
25FD3E:  VST1.32         {D16-D17}, [R6]
25FD42:  STRD.W          R1, R0, [R9,#0x114]
25FD46:  MOVS            R0, #6
25FD48:  ADD.W           R0, R9, R0,LSL#2
25FD4C:  VSTR            S0, [R0,#0x104]
25FD50:  LDR.W           R0, [R9,#8]
25FD54:  CMP             R0, #2
25FD56:  BEQ.W           loc_2600A8; jumptable 0025FBD6 case 5378
25FD5A:  LDR.W           R0, =(g_ex_configPairs_ptr - 0x25FD68)
25FD5E:  STRD.W          R5, R6, [SP,#0x58+var_38]
25FD62:  MOVS            R5, #0
25FD64:  ADD             R0, PC; g_ex_configPairs_ptr
25FD66:  LDR.W           R6, =(aRoot - 0x25FD74); "root"
25FD6A:  LDR.W           R11, [R9,#0x128]
25FD6E:  LDR             R4, [R0]; g_ex_configPairs
25FD70:  ADD             R6, PC; "root"
25FD72:  LDR.W           R0, =(g_ex_configPairs_ptr - 0x25FD7A)
25FD76:  ADD             R0, PC; g_ex_configPairs_ptr
25FD78:  LDR.W           R8, [R0]; g_ex_configPairs
25FD7C:  LDR.W           R0, [R4,R5,LSL#3]; char *
25FD80:  MOV             R1, R6; char *
25FD82:  BLX             strcmp
25FD86:  CBNZ            R0, loc_25FD96
25FD88:  ADD.W           R0, R8, R5,LSL#3
25FD8C:  MOV             R1, R10; char *
25FD8E:  LDR             R0, [R0,#4]; char *
25FD90:  BLX             strcmp
25FD94:  CBZ             R0, loc_25FDC4
25FD96:  ADDS            R0, R5, #1
25FD98:  CMP             R5, #0x1D
25FD9A:  MOV             R5, R0
25FD9C:  BLT             loc_25FD7C
25FD9E:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x25FDA6)
25FDA2:  ADD             R0, PC; g_mob_configGlobals_ptr
25FDA4:  LDR             R0, [R0]; g_mob_configGlobals
25FDA6:  LDR             R0, [R0]
25FDA8:  CMP             R0, #0
25FDAA:  BEQ.W           loc_2600A8; jumptable 0025FBD6 case 5378
25FDAE:  LDR             R1, [R0]
25FDB0:  CMP             R1, #0
25FDB2:  BEQ.W           loc_2600A8; jumptable 0025FBD6 case 5378
25FDB6:  CMP             R1, #0x14
25FDB8:  BEQ             loc_25FDEC
25FDBA:  LDR.W           R1, [R0,#8]!
25FDBE:  CMP             R1, #0
25FDC0:  BNE             loc_25FDB6
25FDC2:  B               loc_2600A8; jumptable 0025FBD6 case 5378
25FDC4:  CMP             R5, #0
25FDC6:  BLT             loc_25FD9E
25FDC8:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x25FDD0)
25FDCC:  ADD             R0, PC; g_mob_configGlobals_ptr
25FDCE:  LDR             R0, [R0]; g_mob_configGlobals
25FDD0:  LDR             R0, [R0]
25FDD2:  CMP             R0, #0
25FDD4:  BEQ.W           loc_2600A8; jumptable 0025FBD6 case 5378
25FDD8:  LDR             R1, [R0]
25FDDA:  CMP             R1, #0
25FDDC:  BEQ             loc_25FD9E
25FDDE:  CMP             R1, R5
25FDE0:  BEQ             loc_25FDEC
25FDE2:  LDR.W           R1, [R0,#8]!
25FDE6:  CMP             R1, #0
25FDE8:  BNE             loc_25FDDE
25FDEA:  B               loc_25FD9E
25FDEC:  STR.W           R10, [SP,#0x58+var_4C]
25FDF0:  STR.W           R9, [SP,#0x58+var_44]
25FDF4:  LDR             R0, [R0,#4]; char *
25FDF6:  BLX             j_strdup
25FDFA:  CMP             R0, #0
25FDFC:  STR             R0, [SP,#0x58+s]
25FDFE:  BEQ.W           loc_260034
25FE02:  LDR.W           R0, =(LogLevel_ptr - 0x25FE10)
25FE06:  MOVS            R4, #0
25FE08:  LDR.W           R9, [SP,#0x58+s]
25FE0C:  ADD             R0, PC; LogLevel_ptr
25FE0E:  VLDR            S16, =3.1416
25FE12:  VLDR            S18, =180.0
25FE16:  LDR             R0, [R0]; LogLevel
25FE18:  STR             R0, [SP,#0x58+var_3C]
25FE1A:  LDR.W           R0, =(LogLevel_ptr - 0x25FE22)
25FE1E:  ADD             R0, PC; LogLevel_ptr
25FE20:  LDR             R0, [R0]; LogLevel
25FE22:  STR             R0, [SP,#0x58+var_48]
25FE24:  LDR.W           R0, =(LogLevel_ptr - 0x25FE2C)
25FE28:  ADD             R0, PC; LogLevel_ptr
25FE2A:  LDR             R0, [R0]; LogLevel
25FE2C:  STR             R0, [SP,#0x58+var_50]
25FE2E:  MOV             R8, R9
25FE30:  LDRB.W          R0, [R8]
25FE34:  CMP             R0, #0
25FE36:  BEQ.W           loc_260034
25FE3A:  MOV             R0, R8; s
25FE3C:  MOVS            R1, #0x2C ; ','; c
25FE3E:  BLX             strchr
25FE42:  MOV             R9, R0
25FE44:  CMP.W           R9, #0
25FE48:  BEQ             loc_25FE62
25FE4A:  STRB.W          R4, [R9]
25FE4E:  LDRB.W          R6, [R9,#1]!
25FE52:  MOV             R0, R6; int
25FE54:  BLX             isspace
25FE58:  CMP             R6, #0x2C ; ','
25FE5A:  BEQ             loc_25FE4E
25FE5C:  CMP             R0, #0
25FE5E:  BNE             loc_25FE4E
25FE60:  B               loc_25FE66
25FE62:  MOV.W           R9, #0
25FE66:  MOV             R0, R8; s
25FE68:  MOVS            R1, #0x3D ; '='; c
25FE6A:  BLX             strchr
25FE6E:  MOV             R10, R0
25FE70:  CMP.W           R10, #0
25FE74:  IT NE
25FE76:  CMPNE           R8, R10
25FE78:  BEQ             loc_25FF6A
25FE7A:  SUB.W           R5, R10, #1
25FE7E:  MOV             R4, R5
25FE80:  LDRB.W          R0, [R4],#-1; int
25FE84:  BLX             isspace
25FE88:  CMP             R8, R5
25FE8A:  BEQ             loc_25FE92
25FE8C:  CMP             R0, #0
25FE8E:  MOV             R5, R4
25FE90:  BNE             loc_25FE80
25FE92:  ADR             R1, dword_260160; char *
25FE94:  MOVS            R6, #0
25FE96:  MOV             R0, R8; char *
25FE98:  STRB            R6, [R4,#2]
25FE9A:  BLX             strcmp
25FE9E:  CMP             R0, #0
25FEA0:  BEQ             loc_25FF7E
25FEA2:  ADR             R1, aFrontLeft; "front-left"
25FEA4:  MOV             R0, R8; char *
25FEA6:  BLX             strcmp
25FEAA:  CMP             R0, #0
25FEAC:  MOV.W           R4, #0
25FEB0:  BEQ             loc_25FF9C
25FEB2:  ADR             R1, aFr; "fr"
25FEB4:  MOV             R0, R8; char *
25FEB6:  BLX             strcmp
25FEBA:  CMP             R0, #0
25FEBC:  BEQ             loc_25FF82
25FEBE:  ADR             R1, aFrontRight; "front-right"
25FEC0:  MOV             R0, R8; char *
25FEC2:  BLX             strcmp
25FEC6:  CMP             R0, #0
25FEC8:  BEQ             loc_25FF82
25FECA:  ADR             R1, aFc; "fc"
25FECC:  MOV             R0, R8; char *
25FECE:  BLX             strcmp
25FED2:  CMP             R0, #0
25FED4:  BEQ             loc_25FFA0
25FED6:  ADR             R1, aFrontCenter; "front-center"
25FED8:  MOV             R0, R8; char *
25FEDA:  BLX             strcmp
25FEDE:  CMP             R0, #0
25FEE0:  BEQ             loc_25FFA0
25FEE2:  ADR             R1, aBl; "bl"
25FEE4:  MOV             R0, R8; char *
25FEE6:  BLX             strcmp
25FEEA:  CMP             R0, #0
25FEEC:  BEQ             loc_25FFA4
25FEEE:  ADR             R1, aBackLeft; "back-left"
25FEF0:  MOV             R0, R8; char *
25FEF2:  BLX             strcmp
25FEF6:  CMP             R0, #0
25FEF8:  BEQ             loc_25FFA4
25FEFA:  ADR             R1, aBr; "br"
25FEFC:  MOV             R0, R8; char *
25FEFE:  BLX             strcmp
25FF02:  CMP             R0, #0
25FF04:  BEQ             loc_25FFA8
25FF06:  ADR             R1, aBackRight; "back-right"
25FF08:  MOV             R0, R8; char *
25FF0A:  BLX             strcmp
25FF0E:  CMP             R0, #0
25FF10:  BEQ             loc_25FFA8
25FF12:  ADR             R1, aBc; "bc"
25FF14:  MOV             R0, R8; char *
25FF16:  BLX             strcmp
25FF1A:  CMP             R0, #0
25FF1C:  BEQ             loc_25FFAC
25FF1E:  ADR             R1, aBackCenter; "back-center"
25FF20:  MOV             R0, R8; char *
25FF22:  BLX             strcmp
25FF26:  CMP             R0, #0
25FF28:  BEQ             loc_25FFAC
25FF2A:  ADR             R1, aSl; "sl"
25FF2C:  MOV             R0, R8; char *
25FF2E:  BLX             strcmp
25FF32:  CBZ             R0, loc_25FFB0
25FF34:  ADR             R1, aSideLeft; "side-left"
25FF36:  MOV             R0, R8; char *
25FF38:  BLX             strcmp
25FF3C:  CBZ             R0, loc_25FFB0
25FF3E:  ADR             R1, aSr; "sr"
25FF40:  MOV             R0, R8; char *
25FF42:  BLX             strcmp
25FF46:  CBZ             R0, loc_25FFB4
25FF48:  ADR             R1, aSideRight; "side-right"
25FF4A:  MOV             R0, R8; char *
25FF4C:  BLX             strcmp
25FF50:  CBZ             R0, loc_25FFB4
25FF52:  LDR             R0, [SP,#0x58+var_50]
25FF54:  LDR             R0, [R0]
25FF56:  CMP             R0, #0
25FF58:  BEQ             loc_26002C
25FF5A:  LDR             R0, =(aEe - 0x25FF68); "(EE)"
25FF5C:  ADR             R1, aSetspeakerarra; "SetSpeakerArrangement"
25FF5E:  STR.W           R8, [SP,#0x58+var_58]
25FF62:  ADR             R2, aUnknownSpeaker; "Unknown speaker for %s: \"%s\"\n"
25FF64:  ADD             R0, PC; "(EE)"
25FF66:  LDR             R3, [SP,#0x58+var_4C]
25FF68:  B               loc_260028
25FF6A:  LDR             R0, [SP,#0x58+var_3C]
25FF6C:  LDR             R0, [R0]
25FF6E:  CMP             R0, #0
25FF70:  BEQ             loc_26002C
25FF72:  LDR             R0, =(aEe - 0x25FF7C); "(EE)"
25FF74:  ADR             R1, aSetspeakerarra; "SetSpeakerArrangement"
25FF76:  LDR             R2, =(aMalformedSpeak - 0x25FF7E); "Malformed speaker key: %s\n"
25FF78:  ADD             R0, PC; "(EE)"
25FF7A:  ADD             R2, PC; "Malformed speaker key: %s\n"
25FF7C:  B               loc_260026
25FF7E:  MOVS            R4, #0
25FF80:  B               loc_25FFB6
25FF82:  MOVS            R6, #1
25FF84:  B               loc_25FFB6
25FF86:  ALIGN 4
25FF88:  DCFS 1.5708
25FF8C:  DCFS 2.3562
25FF90:  DCFS 1.9199
25FF94:  DCFS 3.1416
25FF98:  DCFS 2.618
25FF9C:  MOVS            R6, #0
25FF9E:  B               loc_25FFB6
25FFA0:  MOVS            R6, #2
25FFA2:  B               loc_25FFB6
25FFA4:  MOVS            R6, #4
25FFA6:  B               loc_25FFB6
25FFA8:  MOVS            R6, #5
25FFAA:  B               loc_25FFB6
25FFAC:  MOVS            R6, #6
25FFAE:  B               loc_25FFB6
25FFB0:  MOVS            R6, #7
25FFB2:  B               loc_25FFB6
25FFB4:  MOVS            R6, #8
25FFB6:  STRB.W          R4, [R10]
25FFBA:  LDRB.W          R0, [R10,#1]!; int
25FFBE:  BLX             isspace
25FFC2:  CMP             R0, #0
25FFC4:  BNE             loc_25FFBA
25FFC6:  CMP.W           R11, #1
25FFCA:  BLT             loc_26002C
25FFCC:  LDR             R5, [SP,#0x58+var_34]
25FFCE:  MOVS            R0, #0
25FFD0:  LDR.W           R1, [R5,#-0x24]
25FFD4:  CMP             R1, R6
25FFD6:  BEQ             loc_25FFE2
25FFD8:  ADDS            R0, #1
25FFDA:  ADDS            R5, #4
25FFDC:  CMP             R0, R11
25FFDE:  BLT             loc_25FFD0
25FFE0:  B               loc_26002C
25FFE2:  MOV             R0, R10; char *
25FFE4:  MOVS            R1, #0; char **
25FFE6:  MOVS            R2, #0xA; int
25FFE8:  BLX             strtol
25FFEC:  ADD.W           R1, R0, #0xB4
25FFF0:  CMP.W           R1, #0x168
25FFF4:  BHI             loc_260014
25FFF6:  VMOV            S0, R0
25FFFA:  VCVT.F32.S32    S0, S0
25FFFE:  VMUL.F32        S0, S0, S16
260002:  VDIV.F32        S0, S0, S18
260006:  VSTR            S0, [R5]
26000A:  CMP.W           R9, #0
26000E:  BNE.W           loc_25FE2E
260012:  B               loc_260034
260014:  LDR             R1, [SP,#0x58+var_48]
260016:  LDR             R1, [R1]
260018:  CBZ             R1, loc_26002C
26001A:  LDR             R2, =(aInvalidAngleFo - 0x260026); "Invalid angle for speaker \"%s\": %ld\n"
26001C:  ADR             R1, aSetspeakerarra; "SetSpeakerArrangement"
26001E:  STR             R0, [SP,#0x58+var_58]
260020:  LDR             R0, =(aEe - 0x260028); "(EE)"
260022:  ADD             R2, PC; "Invalid angle for speaker \"%s\": %ld\n"
260024:  ADD             R0, PC; "(EE)"
260026:  MOV             R3, R8
260028:  BLX             j_al_print
26002C:  CMP.W           R9, #0
260030:  BNE.W           loc_25FE2E
260034:  LDR             R0, [SP,#0x58+s]; p
260036:  BLX             free
26003A:  LDR             R5, [SP,#0x58+var_44]
26003C:  CMP.W           R11, #1
260040:  LDRD.W          R8, LR, [SP,#0x58+var_38]
260044:  BLT             loc_2600A8; jumptable 0025FBD6 case 5378
260046:  ADD.W           R6, R5, #0x108
26004A:  MOV.W           R12, #0
26004E:  MOV             R2, R12
260050:  ADD.W           R12, R2, #1
260054:  CMP             R12, R11
260056:  BGE             loc_2600A2
260058:  MOV             R0, R6
26005A:  MOV             R1, R12
26005C:  MOV             R3, R2
26005E:  ADD.W           R4, R5, R3,LSL#2
260062:  VLDR            S0, [R0]
260066:  ADDS            R0, #4
260068:  VLDR            S2, [R4,#0x104]
26006C:  VCMPE.F32       S0, S2
260070:  VMRS            APSR_nzcv, FPSCR
260074:  IT LT
260076:  MOVLT           R3, R1
260078:  ADDS            R1, #1
26007A:  CMP             R11, R1
26007C:  BNE             loc_26005E
26007E:  CMP             R3, R2
260080:  BEQ             loc_2600A2
260082:  LDR.W           R0, [LR,R2,LSL#2]
260086:  LDR.W           R1, [LR,R3,LSL#2]
26008A:  STR.W           R1, [LR,R2,LSL#2]
26008E:  STR.W           R0, [LR,R3,LSL#2]
260092:  LDR.W           R0, [R8,R2,LSL#2]
260096:  LDR.W           R1, [R8,R3,LSL#2]
26009A:  STR.W           R1, [R8,R2,LSL#2]
26009E:  STR.W           R0, [R8,R3,LSL#2]
2600A2:  ADDS            R6, #4
2600A4:  CMP             R12, R11
2600A6:  BNE             loc_26004E
2600A8:  ADD             SP, SP, #0x28 ; '('; jumptable 0025FBD6 case 5378
2600AA:  VPOP            {D8-D9}
2600AE:  ADD             SP, SP, #4
2600B0:  POP.W           {R8-R11}
2600B4:  POP             {R4-R7,PC}
