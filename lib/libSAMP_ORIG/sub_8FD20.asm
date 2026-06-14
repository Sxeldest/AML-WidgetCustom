; =========================================================
; Game Engine Function: sub_8FD20
; Address            : 0x8FD20 - 0x94196
; =========================================================

8FD20:  PUSH            {R4-R7,LR}
8FD22:  ADD             R7, SP, #0xC
8FD24:  PUSH.W          {R8-R11}
8FD28:  SUB             SP, SP, #4
8FD2A:  VPUSH           {D8-D15}
8FD2E:  SUB             SP, SP, #0x158; float
8FD30:  STR             R1, [SP,#0x1B8+var_134]
8FD32:  MOV             R9, R2
8FD34:  LDR             R1, =(dword_1ACF68 - 0x8FD3E)
8FD36:  MOVW            LR, #0x1A28
8FD3A:  ADD             R1, PC; dword_1ACF68
8FD3C:  STR             R1, [SP,#0x1B8+var_F8]
8FD3E:  LDR             R4, [R1]
8FD40:  LDR             R1, =(__stack_chk_guard_ptr - 0x8FD46)
8FD42:  ADD             R1, PC; __stack_chk_guard_ptr
8FD44:  LDR             R1, [R1]; __stack_chk_guard
8FD46:  LDR             R1, [R1]
8FD48:  STR             R1, [SP,#0x1B8+var_64]
8FD4A:  MOVW            R1, #0x151C
8FD4E:  ADDS            R3, R4, R1
8FD50:  MOVW            R1, #0x199C
8FD54:  ADD.W           R11, R4, R1
8FD58:  LDRB            R1, [R0]
8FD5A:  LDR             R2, =(unk_52D88 - 0x8FD62)
8FD5C:  STR             R0, [SP,#0x1B8+s1]
8FD5E:  ADD             R2, PC; unk_52D88
8FD60:  STRD.W          R3, R2, [SP,#0x1B8+var_100]
8FD64:  CBZ             R1, loc_8FDA2
8FD66:  ADDS            R3, R0, #1
8FD68:  LDR             R0, [SP,#0x1B8+var_FC]
8FD6A:  MOV.W           R2, #0xFFFFFFFF
8FD6E:  B               loc_8FD80
8FD70:  UXTB            R5, R2
8FD72:  EORS            R6, R5
8FD74:  ADDS            R3, #1
8FD76:  LDR.W           R6, [R0,R6,LSL#2]
8FD7A:  EOR.W           R2, R6, R2,LSR#8
8FD7E:  CBZ             R1, loc_8FD9C
8FD80:  MOV             R6, R1
8FD82:  LDRB            R1, [R3]
8FD84:  CMP             R6, #0x23 ; '#'
8FD86:  IT EQ
8FD88:  CMPEQ           R1, #0x23 ; '#'
8FD8A:  BNE             loc_8FD70
8FD8C:  LDRB            R1, [R3,#1]
8FD8E:  CMP             R1, #0x23 ; '#'
8FD90:  MOV.W           R1, #0x23 ; '#'
8FD94:  IT EQ
8FD96:  MOVEQ.W         R2, #0xFFFFFFFF
8FD9A:  B               loc_8FD70
8FD9C:  LDR             R3, [SP,#0x1B8+var_100]
8FD9E:  MVNS            R1, R2
8FDA0:  B               loc_8FDA4
8FDA2:  MOVS            R1, #0
8FDA4:  LDR.W           R8, [R11,#8]
8FDA8:  ADD.W           R10, R4, LR
8FDAC:  LDR.W           LR, [R3,#0x480]
8FDB0:  MOVW            R12, #0x1A38
8FDB4:  STR             R4, [SP,#0x1B8+var_104]
8FDB6:  CMP.W           LR, #0
8FDBA:  MOV             R0, R8
8FDBC:  BEQ             loc_8FDDE
8FDBE:  MOV             R0, R8
8FDC0:  MOV             R5, LR
8FDC2:  LSRS            R2, R5, #1
8FDC4:  MVN.W           R6, R5,LSR#1
8FDC8:  ADD.W           R3, R0, R2,LSL#3
8FDCC:  LDR.W           R4, [R3],#8
8FDD0:  CMP             R4, R1
8FDD2:  ITT CC
8FDD4:  ADDCC           R2, R5, R6
8FDD6:  MOVCC           R0, R3
8FDD8:  CMP             R2, #0
8FDDA:  MOV             R5, R2
8FDDC:  BNE             loc_8FDC2
8FDDE:  LDR             R2, [SP,#0x1B8+var_104]
8FDE0:  ADD             R2, R12
8FDE2:  STR             R2, [SP,#0x1B8+var_10C]
8FDE4:  ADD.W           R2, R8, LR,LSL#3
8FDE8:  CMP             R0, R2
8FDEA:  BEQ             loc_8FE06
8FDEC:  LDR             R2, [R0]
8FDEE:  CMP             R2, R1
8FDF0:  BNE             loc_8FE06
8FDF2:  LDR.W           R8, [R0,#4]
8FDF6:  STR.W           R8, [SP,#0x1B8+var_F4]
8FDFA:  CMP.W           R8, #0
8FDFE:  BEQ             loc_8FE0A
8FE00:  MOVS            R0, #0
8FE02:  LDR             R6, [SP,#0x1B8+var_100]
8FE04:  B               loc_90174
8FE06:  MOVS            R0, #0
8FE08:  STR             R0, [SP,#0x1B8+var_F4]
8FE0A:  LDRB.W          R0, [R11,#0x74]
8FE0E:  LSLS            R0, R0, #0x1E
8FE10:  BMI             loc_8FE1C
8FE12:  VLDR            S16, =0.0
8FE16:  VMOV.F32        S18, S16
8FE1A:  B               loc_8FE24
8FE1C:  VLDR            S16, [R10,#8]
8FE20:  VLDR            S18, [R10,#0xC]
8FE24:  LDR             R2, =(off_117248 - 0x8FE2E)
8FE26:  LDR             R1, =(dword_1ACF70 - 0x8FE30)
8FE28:  LDR             R4, [SP,#0x1B8+var_104]
8FE2A:  ADD             R2, PC; off_117248
8FE2C:  ADD             R1, PC; dword_1ACF70
8FE2E:  STR             R2, [SP,#0x1B8+var_110]
8FE30:  STR             R1, [SP,#0x1B8+var_108]
8FE32:  LDR.W           R0, [R4,#0x370]
8FE36:  LDR             R2, [R2]; sub_9A720
8FE38:  LDR             R1, [R1]
8FE3A:  ADDS            R0, #1
8FE3C:  STR.W           R0, [R4,#0x370]
8FE40:  MOV.W           R0, #0x334
8FE44:  BLX             R2; sub_9A720
8FE46:  LDR             R2, [SP,#0x1B8+s1]
8FE48:  MOV             R1, R4
8FE4A:  MOV             R8, R0
8FE4C:  BL              sub_8A600
8FE50:  LDR.W           R12, [R11]
8FE54:  STR.W           R8, [SP,#0x1B8+var_B0]
8FE58:  LDR.W           LR, [R11,#8]
8FE5C:  CMP.W           R12, #0
8FE60:  LDR             R0, [R0,#4]
8FE62:  STR.W           R9, [R8,#8]
8FE66:  MOV             R1, LR
8FE68:  BEQ             loc_8FE8A
8FE6A:  MOV             R1, LR
8FE6C:  MOV             R5, R12
8FE6E:  LSRS            R2, R5, #1
8FE70:  MVN.W           R3, R5,LSR#1
8FE74:  ADD.W           R6, R1, R2,LSL#3
8FE78:  LDR.W           R4, [R6],#8
8FE7C:  CMP             R4, R0
8FE7E:  ITT CC
8FE80:  ADDCC           R2, R5, R3
8FE82:  MOVCC           R1, R6
8FE84:  CMP             R2, #0
8FE86:  MOV             R5, R2
8FE88:  BNE             loc_8FE6E
8FE8A:  ADD.W           R2, LR, R12,LSL#3
8FE8E:  CMP             R1, R2
8FE90:  BEQ             loc_8FE9E
8FE92:  LDR             R2, [R1]
8FE94:  CMP             R2, R0
8FE96:  BNE             loc_8FE9E
8FE98:  STR.W           R8, [R1,#4]
8FE9C:  B               loc_8FEAA
8FE9E:  ADD             R2, SP, #0x1B8+var_A0
8FEA0:  STRD.W          R0, R8, [SP,#0x1B8+var_A0]
8FEA4:  MOV             R0, R11
8FEA6:  BL              sub_88E34
8FEAA:  MOVS            R0, #0
8FEAC:  LDR             R6, [SP,#0x1B8+var_100]
8FEAE:  MOVT            R0, #0x4270
8FEB2:  STRD.W          R0, R0, [R8,#0xC]
8FEB6:  MOVS.W          R0, R9,LSL#23
8FEBA:  BMI             loc_8FF7C
8FEBC:  LDR             R0, [SP,#0x1B8+var_F8]
8FEBE:  MOVW            R1, #0x2D14
8FEC2:  LDR             R0, [R0]
8FEC4:  LDR             R3, [R0,R1]
8FEC6:  CMP             R3, #0
8FEC8:  BEQ             loc_8FF7C
8FECA:  ADD             R0, R1
8FECC:  LDR             R6, [SP,#0x1B8+var_104]
8FECE:  LDR.W           R4, [R8,#4]
8FED2:  MOVW            R2, #0x2D1C
8FED6:  LDR             R0, [R0,#8]
8FED8:  ADDS            R5, R6, R2
8FEDA:  MOVS            R1, #0
8FEDC:  ADDS            R2, R0, R1
8FEDE:  LDR             R6, [R2,#4]
8FEE0:  CMP             R6, R4
8FEE2:  BEQ             loc_8FEF0
8FEE4:  SUBS            R3, #1
8FEE6:  ADD.W           R1, R1, #0x1C
8FEEA:  BNE             loc_8FEDC
8FEEC:  LDR             R6, [SP,#0x1B8+var_100]
8FEEE:  B               loc_8FF7C
8FEF0:  LDRD.W          R6, R4, [R8,#0xAC]
8FEF4:  LDR             R5, [R5]
8FEF6:  BIC.W           R6, R6, #4
8FEFA:  STR.W           R6, [R8,#0xAC]
8FEFE:  BIC.W           R6, R4, #4
8FF02:  STR.W           R6, [R8,#0xB0]
8FF06:  VLDR            S0, [R2,#8]
8FF0A:  SUBS            R0, R0, R5
8FF0C:  VLDR            S2, [R2,#0xC]
8FF10:  ADD             R0, R1
8FF12:  VCVT.S32.F32    S0, S0
8FF16:  MOVW            R1, #0x6DB7
8FF1A:  VCVT.S32.F32    S2, S2
8FF1E:  ASRS            R0, R0, #2
8FF20:  MOVT            R1, #0xB6DB
8FF24:  VLDR            S6, =0.00001
8FF28:  MULS            R0, R1
8FF2A:  LDR             R6, [SP,#0x1B8+var_100]
8FF2C:  LDR.W           R3, [R8,#0xB4]
8FF30:  VCVT.F32.S32    S0, S0
8FF34:  VCVT.F32.S32    S2, S2
8FF38:  VSTR            S0, [R8,#0xC]
8FF3C:  VSTR            S2, [R8,#0x10]
8FF40:  VLDR            S2, [R2,#0x14]
8FF44:  VLDR            S0, [R2,#0x10]
8FF48:  VMUL.F32        S4, S2, S2
8FF4C:  LDRB            R1, [R2,#0x18]
8FF4E:  BIC.W           R2, R3, #4
8FF52:  STR.W           R2, [R8,#0xB4]
8FF56:  STR.W           R0, [R8,#0x278]
8FF5A:  STRB.W          R1, [R8,#0x7D]
8FF5E:  VMLA.F32        S4, S0, S0
8FF62:  VCMP.F32        S4, S6
8FF66:  VMRS            APSR_nzcv, FPSCR
8FF6A:  ITTTT GT
8FF6C:  VCVTGT.S32.F32  S2, S2
8FF70:  VCVTGT.S32.F32  S0, S0
8FF74:  VCVTGT.F32.S32  S18, S2
8FF78:  VCVTGT.F32.S32  S16, S0
8FF7C:  VCVT.S32.F32    S0, S18
8FF80:  VLDR            D16, [R8,#0xC]
8FF84:  VCVT.S32.F32    S2, S16
8FF88:  ADD.W           R2, R8, #0xD8
8FF8C:  VMOV            D17, D16
8FF90:  VST1.32         {D16-D17}, [R2]
8FF94:  MOVS.W          R2, R9,LSL#25
8FF98:  VMOV            R0, S0
8FF9C:  VMOV            R1, S2
8FFA0:  VCVT.F32.S32    S0, S0
8FFA4:  VCVT.F32.S32    S2, S2
8FFA8:  VSTR            S0, [R8,#0x18]
8FFAC:  VSTR            S2, [R8,#0x14]
8FFB0:  VSTR            S2, [R8,#0x1C]
8FFB4:  VSTR            S0, [R8,#0x20]
8FFB8:  BMI             loc_8FFDA
8FFBA:  CMP             R1, #0
8FFBC:  ITT LE
8FFBE:  MOVLE           R1, #2
8FFC0:  STRLE.W         R1, [R8,#0x90]
8FFC4:  CMP             R0, #0
8FFC6:  ITT LE
8FFC8:  MOVLE           R0, #2
8FFCA:  STRLE.W         R0, [R8,#0x94]
8FFCE:  LDR.W           R0, [R8,#0x90]
8FFD2:  CMP             R0, #0
8FFD4:  BLE             loc_90004
8FFD6:  MOVS            R0, #1
8FFD8:  B               loc_90010
8FFDA:  MOVS            R0, #0
8FFDC:  STRB.W          R0, [R8,#0x98]
8FFE0:  MOVS            R0, #2
8FFE2:  STRD.W          R0, R0, [R8,#0x90]
8FFE6:  B               loc_90014
8FFE8:  DCD dword_1ACF68 - 0x8FD3E
8FFEC:  DCD __stack_chk_guard_ptr - 0x8FD46
8FFF0:  DCD unk_52D88 - 0x8FD62
8FFF4:  DCFS 0.0
8FFF8:  DCD off_117248 - 0x8FE2E
8FFFC:  DCD dword_1ACF70 - 0x8FE30
90000:  DCFS 0.00001
90004:  LDR.W           R1, [R8,#0x94]
90008:  MOVS            R0, #0
9000A:  CMP             R1, #0
9000C:  IT GT
9000E:  MOVGT           R0, #1
90010:  STRB.W          R0, [R8,#0x98]
90014:  LDR.W           R0, [R6,#0x45C]
90018:  LDR.W           R1, [R6,#0x460]
9001C:  CMP             R0, R1
9001E:  BNE             loc_900A0
90020:  CMP             R0, #0
90022:  ADD.W           R4, R0, #1
90026:  ITTE NE
90028:  ADDNE.W         R1, R0, R0,LSR#31
9002C:  ADDNE.W         R1, R0, R1,ASR#1
90030:  MOVEQ           R1, #8
90032:  CMP             R1, R4
90034:  IT GT
90036:  MOVGT           R4, R1
90038:  CMP             R0, R4
9003A:  BGE             loc_900A0
9003C:  LDR             R0, [SP,#0x1B8+var_F8]
9003E:  LDR             R1, [R0]
90040:  LSLS            R0, R4, #2
90042:  CMP             R1, #0
90044:  ITTT NE
90046:  LDRNE.W         R2, [R1,#0x370]
9004A:  ADDNE           R2, #1
9004C:  STRNE.W         R2, [R1,#0x370]
90050:  LDR             R1, [SP,#0x1B8+var_108]
90052:  LDR             R2, [SP,#0x1B8+var_110]
90054:  LDR             R1, [R1]
90056:  LDR             R2, [R2]
90058:  BLX             R2; sub_9A720
9005A:  LDR.W           R1, [R6,#0x464]; src
9005E:  MOV             R5, R0
90060:  CBZ             R1, loc_90094
90062:  LDR.W           R0, [R6,#0x45C]
90066:  LSLS            R2, R0, #2; n
90068:  MOV             R0, R5; dest
9006A:  BLX             j_memcpy
9006E:  LDR.W           R0, [R6,#0x464]
90072:  CMP             R0, #0
90074:  ITTTT NE
90076:  LDRNE           R1, [SP,#0x1B8+var_F8]
90078:  LDRNE           R1, [R1]
9007A:  CMPNE           R1, #0
9007C:  LDRNE.W         R2, [R1,#0x370]
90080:  ITT NE
90082:  SUBNE           R2, #1
90084:  STRNE.W         R2, [R1,#0x370]
90088:  LDR             R2, =(off_11724C - 0x90090)
9008A:  LDR             R1, [SP,#0x1B8+var_108]
9008C:  ADD             R2, PC; off_11724C
9008E:  LDR             R1, [R1]
90090:  LDR             R2, [R2]; j_opus_decoder_destroy_0
90092:  BLX             R2; j_opus_decoder_destroy_0
90094:  LDR.W           R0, [R6,#0x45C]
90098:  STR.W           R4, [R6,#0x460]
9009C:  STR.W           R5, [R6,#0x464]
900A0:  LDR.W           R1, [R6,#0x464]
900A4:  LDR             R2, [SP,#0x1B8+var_B0]
900A6:  STR.W           R2, [R1,R0,LSL#2]
900AA:  LDR.W           R0, [R6,#0x45C]
900AE:  ADDS            R0, #1
900B0:  STR.W           R0, [R6,#0x45C]
900B4:  MOVS.W          R0, R9,LSL#18
900B8:  BMI             loc_9015C
900BA:  LDR.W           R0, [R6,#0x450]
900BE:  LDR.W           R1, [R6,#0x454]
900C2:  CMP             R0, R1
900C4:  BNE             loc_90146
900C6:  CMP             R0, #0
900C8:  ADD.W           R4, R0, #1
900CC:  ITTE NE
900CE:  ADDNE.W         R1, R0, R0,LSR#31
900D2:  ADDNE.W         R1, R0, R1,ASR#1
900D6:  MOVEQ           R1, #8
900D8:  CMP             R1, R4
900DA:  IT GT
900DC:  MOVGT           R4, R1
900DE:  CMP             R0, R4
900E0:  BGE             loc_90146
900E2:  LDR             R0, [SP,#0x1B8+var_F8]
900E4:  LDR             R1, [R0]
900E6:  LSLS            R0, R4, #2
900E8:  CMP             R1, #0
900EA:  ITTT NE
900EC:  LDRNE.W         R2, [R1,#0x370]
900F0:  ADDNE           R2, #1
900F2:  STRNE.W         R2, [R1,#0x370]
900F6:  LDR             R1, [SP,#0x1B8+var_108]
900F8:  LDR             R2, [SP,#0x1B8+var_110]
900FA:  LDR             R1, [R1]
900FC:  LDR             R2, [R2]
900FE:  BLX             R2; sub_9A720
90100:  LDR.W           R1, [R6,#0x458]; src
90104:  MOV             R5, R0
90106:  CBZ             R1, loc_9013A
90108:  LDR.W           R0, [R6,#0x450]
9010C:  LSLS            R2, R0, #2; n
9010E:  MOV             R0, R5; dest
90110:  BLX             j_memcpy
90114:  LDR.W           R0, [R6,#0x458]
90118:  CMP             R0, #0
9011A:  ITTTT NE
9011C:  LDRNE           R1, [SP,#0x1B8+var_F8]
9011E:  LDRNE           R1, [R1]
90120:  CMPNE           R1, #0
90122:  LDRNE.W         R2, [R1,#0x370]
90126:  ITT NE
90128:  SUBNE           R2, #1
9012A:  STRNE.W         R2, [R1,#0x370]
9012E:  LDR             R2, =(off_11724C - 0x90136)
90130:  LDR             R1, [SP,#0x1B8+var_108]
90132:  ADD             R2, PC; off_11724C
90134:  LDR             R1, [R1]
90136:  LDR             R2, [R2]; j_opus_decoder_destroy_0
90138:  BLX             R2; j_opus_decoder_destroy_0
9013A:  LDR.W           R0, [R6,#0x450]
9013E:  STR.W           R4, [R6,#0x454]
90142:  STR.W           R5, [R6,#0x458]
90146:  LDR.W           R1, [R6,#0x458]
9014A:  LDR             R2, [SP,#0x1B8+var_B0]
9014C:  STR.W           R2, [R1,R0,LSL#2]
90150:  LDR.W           R0, [R6,#0x450]
90154:  ADDS            R0, #1
90156:  STR.W           R0, [R6,#0x450]
9015A:  B               loc_9016E
9015C:  LDR             R1, [SP,#0x1B8+var_104]
9015E:  MOVW            R0, #0x196C
90162:  ADD             R0, R1
90164:  ADD             R1, SP, #0x1B8+var_B0
90166:  BL              sub_9ADB0
9016A:  LDR.W           R8, [SP,#0x1B8+var_B0]
9016E:  MOVS            R0, #1
90170:  STR.W           R8, [SP,#0x1B8+var_F4]
90174:  STR             R0, [SP,#0x1B8+var_124]
90176:  LDR.W           LR, [R6,#0x444]
9017A:  MOVW            R2, #:lower16:loc_C0200
9017E:  LDR.W           R4, [R8,#0x230]
90182:  MOVT            R2, #:upper16:loc_C0200
90186:  SUB.W           R1, LR, #1
9018A:  LDR.W           R0, [R8,#0xA8]
9018E:  CMP             R4, R1
90190:  MOV.W           R5, #0
90194:  AND.W           R3, R9, R2
90198:  STR             R0, [SP,#0x1B8+var_11C]
9019A:  IT LT
9019C:  MOVLT           R5, #1
9019E:  CMP             R3, R2
901A0:  IT EQ
901A2:  ORREQ.W         R9, R9, #6
901A6:  MOVS            R0, #0
901A8:  MOVS.W          R2, R9,LSL#5
901AC:  BPL             loc_901E8
901AE:  LDR             R3, [SP,#0x1B8+var_10C]
901B0:  CMP             R4, R1
901B2:  MOV.W           R1, #0
901B6:  LDRD.W          R2, R3, [R3,#0x6C]
901BA:  ADD.W           R3, R3, R3,LSL#3
901BE:  LDR.W           R6, [R2,R3,LSL#2]
901C2:  ADD.W           R2, R2, R3,LSL#2
901C6:  IT LT
901C8:  MOVLT           R1, #1
901CA:  LDR.W           R5, [R8,#0x8C]
901CE:  LDR             R2, [R2,#4]
901D0:  SUBS            R3, R5, R6
901D2:  LDR             R6, [SP,#0x1B8+var_100]
901D4:  IT NE
901D6:  MOVNE           R3, #1
901D8:  SUBS.W          R2, R8, R2
901DC:  ORR.W           R1, R1, R3
901E0:  IT NE
901E2:  MOVNE           R2, #1
901E4:  ORR.W           R5, R1, R2
901E8:  LDR             R1, [SP,#0x1B8+var_11C]
901EA:  CMP             R1, #0
901EC:  IT GT
901EE:  MOVGT           R0, #1
901F0:  ORRS            R0, R5
901F2:  STRB.W          R0, [R8,#0x80]
901F6:  CMP             R0, #1
901F8:  BNE             loc_90212
901FA:  ADD.W           R2, R8, #0xAC
901FE:  ADD.W           R3, R8, #0xAC
90202:  LDM             R2, {R0-R2}
90204:  ORR.W           R2, R2, #8
90208:  ORR.W           R0, R0, #8
9020C:  ORR.W           R1, R1, #8
90210:  STM             R3!, {R0-R2}
90212:  CMP             R4, LR
90214:  BNE             loc_9021C
90216:  LDR.W           R9, [R8,#8]
9021A:  B               loc_90238
9021C:  STR.W           LR, [R8,#0x230]
90220:  MOVS            R1, #0
90222:  STR.W           R9, [R8,#8]
90226:  LDR.W           R0, [R11,#0xC]
9022A:  STRH.W          R0, [R8,#0x88]
9022E:  STRH.W          R1, [R8,#0x86]
90232:  ADDS            R0, #1
90234:  STR.W           R0, [R11,#0xC]
90238:  LDR.W           R0, [R6,#0x474]
9023C:  CBZ             R0, loc_90254
9023E:  LDR.W           R1, [R6,#0x47C]
90242:  ADD.W           R1, R1, R0,LSL#2
90246:  LDR.W           R1, [R1,#-4]
9024A:  CMP             R4, LR
9024C:  BNE             loc_9025A
9024E:  LDR.W           R2, [R8,#0x2F8]
90252:  B               loc_90262
90254:  MOVS            R1, #0
90256:  CMP             R4, LR
90258:  BEQ             loc_9024E
9025A:  ANDS.W          R2, R9, #0x5000000
9025E:  IT NE
90260:  MOVNE           R2, R1
90262:  LDR.W           R1, [R6,#0x478]
90266:  STR             R2, [SP,#0x1B8+var_118]
90268:  CMP             R0, R1
9026A:  STR             R4, [SP,#0x1B8+var_120]
9026C:  STRD.W          R5, LR, [SP,#0x1B8+var_12C]
90270:  BNE             loc_902FC
90272:  CMP             R0, #0
90274:  ADD.W           R4, R0, #1
90278:  ITTE NE
9027A:  ADDNE.W         R1, R0, R0,LSR#31
9027E:  ADDNE.W         R1, R0, R1,ASR#1
90282:  MOVEQ           R1, #8
90284:  CMP             R1, R4
90286:  IT GT
90288:  MOVGT           R4, R1
9028A:  CMP             R0, R4
9028C:  BGE             loc_902FC
9028E:  LDR             R0, [SP,#0x1B8+var_F8]
90290:  LDR             R1, [R0]
90292:  LSLS            R0, R4, #2
90294:  CMP             R1, #0
90296:  ITTT NE
90298:  LDRNE.W         R2, [R1,#0x370]
9029C:  ADDNE           R2, #1
9029E:  STRNE.W         R2, [R1,#0x370]
902A2:  LDR             R5, =(dword_1ACF70 - 0x902AA)
902A4:  LDR             R2, =(off_117248 - 0x902AC)
902A6:  ADD             R5, PC; dword_1ACF70
902A8:  ADD             R2, PC; off_117248
902AA:  LDR             R1, [R5]
902AC:  LDR             R2, [R2]; sub_9A720
902AE:  BLX             R2; sub_9A720
902B0:  LDR             R6, [SP,#0x1B8+var_100]
902B2:  MOV             R8, R0
902B4:  LDR.W           R1, [R6,#0x47C]; src
902B8:  CBZ             R1, loc_902EC
902BA:  LDR.W           R0, [R6,#0x474]
902BE:  LSLS            R2, R0, #2; n
902C0:  MOV             R0, R8; dest
902C2:  BLX             j_memcpy
902C6:  LDR.W           R0, [R6,#0x47C]
902CA:  CMP             R0, #0
902CC:  ITTTT NE
902CE:  LDRNE           R1, [SP,#0x1B8+var_F8]
902D0:  LDRNE           R1, [R1]
902D2:  CMPNE           R1, #0
902D4:  LDRNE.W         R2, [R1,#0x370]
902D8:  ITT NE
902DA:  SUBNE           R2, #1
902DC:  STRNE.W         R2, [R1,#0x370]
902E0:  LDR             R2, =(off_11724C - 0x902E8)
902E2:  LDR             R1, [R5]
902E4:  ADD             R2, PC; off_11724C
902E6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
902E8:  BLX             R2; j_opus_decoder_destroy_0
902EA:  LDR             R6, [SP,#0x1B8+var_100]
902EC:  LDR.W           R0, [R6,#0x474]
902F0:  LDR.W           LR, [SP,#0x1B8+var_128]
902F4:  STR.W           R4, [R6,#0x478]
902F8:  STR.W           R8, [R6,#0x47C]
902FC:  LDR.W           R1, [R6,#0x47C]
90300:  MOVW            R3, #0x1A78
90304:  LDR             R2, [SP,#0x1B8+var_F4]
90306:  STR.W           R2, [R1,R0,LSL#2]
9030A:  MOVS            R0, #0
9030C:  MOV             R2, R6
9030E:  STR.W           R0, [R11,#0x10]
90312:  LDR             R0, [SP,#0x1B8+var_F8]
90314:  LDR.W           R1, [R6,#0x474]
90318:  LDR             R6, [SP,#0x1B8+var_F4]
9031A:  LDR             R0, [R0]
9031C:  ADDS            R1, #1
9031E:  LDR.W           R4, [R6,#0x19C]
90322:  LDR.W           R12, [R0,R3]
90326:  ADD             R0, R3
90328:  LDR.W           R3, [R6,#0x1C4]
9032C:  LDR.W           R8, [R0,#0xC]
90330:  LDR             R5, [R0,#0x18]
90332:  LDR             R0, [R0,#0x30]
90334:  STR.W           R1, [R2,#0x474]
90338:  STRH.W          R0, [R6,#0x1AC]
9033C:  ANDS.W          R0, R9, #0x4000000
90340:  STRH.W          R3, [R6,#0x1A8]
90344:  STRH.W          R4, [R6,#0x1AA]
90348:  STRH.W          R12, [R6,#0x1AE]
9034C:  STRH.W          R8, [R6,#0x1B0]
90350:  STRH.W          R5, [R6,#0x1B2]
90354:  STR             R0, [SP,#0x1B8+var_144]
90356:  BNE             loc_90370
90358:  LDR             R5, [SP,#0x1B8+var_10C]
9035A:  B               loc_9043E
9035C:  DCD off_11724C - 0x90090
90360:  DCD off_11724C - 0x90136
90364:  DCD dword_1ACF70 - 0x902AA
90368:  DCD off_117248 - 0x902AC
9036C:  DCD off_11724C - 0x902E8
90370:  LDR             R5, [SP,#0x1B8+var_10C]
90372:  LDRD.W          R1, R0, [R5,#0x6C]
90376:  ADD.W           R3, R0, R0,LSL#3
9037A:  LDR             R2, [R5,#0x74]
9037C:  ADD.W           R4, R1, R3,LSL#2
90380:  CMP             R0, R2
90382:  STR             R6, [R4,#4]
90384:  BNE             loc_90410
90386:  CMP             R0, #0
90388:  ADD.W           R6, R0, #1
9038C:  ITTE NE
9038E:  ADDNE.W         R1, R0, R0,LSR#31
90392:  ADDNE.W         R1, R0, R1,ASR#1
90396:  MOVEQ           R1, #8
90398:  CMP             R1, R6
9039A:  IT GT
9039C:  MOVGT           R6, R1
9039E:  CMP             R0, R6
903A0:  BGE             loc_90410
903A2:  LDR             R1, [SP,#0x1B8+var_F8]
903A4:  ADD.W           R0, R6, R6,LSL#3
903A8:  LSLS            R0, R0, #2
903AA:  LDR             R1, [R1]
903AC:  CMP             R1, #0
903AE:  ITTT NE
903B0:  LDRNE.W         R2, [R1,#0x370]
903B4:  ADDNE           R2, #1
903B6:  STRNE.W         R2, [R1,#0x370]
903BA:  LDR             R1, =(dword_1ACF70 - 0x903C2)
903BC:  LDR             R2, =(off_117248 - 0x903C6)
903BE:  ADD             R1, PC; dword_1ACF70
903C0:  STR             R1, [SP,#0x1B8+var_108]
903C2:  ADD             R2, PC; off_117248
903C4:  LDR             R1, [R1]
903C6:  LDR             R2, [R2]; sub_9A720
903C8:  BLX             R2; sub_9A720
903CA:  LDR             R5, [SP,#0x1B8+var_10C]
903CC:  MOV             R8, R0
903CE:  LDR             R1, [R5,#0x78]; src
903D0:  CBZ             R1, loc_90406
903D2:  LDR             R0, [R5,#0x70]
903D4:  ADD.W           R0, R0, R0,LSL#3
903D8:  LSLS            R2, R0, #2; n
903DA:  MOV             R0, R8; dest
903DC:  BLX             j_memcpy
903E0:  LDR             R0, [R5,#0x78]
903E2:  CMP             R0, #0
903E4:  ITTTT NE
903E6:  LDRNE           R1, [SP,#0x1B8+var_F8]
903E8:  LDRNE           R1, [R1]
903EA:  CMPNE           R1, #0
903EC:  LDRNE.W         R2, [R1,#0x370]
903F0:  ITT NE
903F2:  SUBNE           R2, #1
903F4:  STRNE.W         R2, [R1,#0x370]
903F8:  LDR             R2, =(off_11724C - 0x90400)
903FA:  LDR             R1, [SP,#0x1B8+var_108]
903FC:  ADD             R2, PC; off_11724C
903FE:  LDR             R1, [R1]
90400:  LDR             R2, [R2]; j_opus_decoder_destroy_0
90402:  BLX             R2; j_opus_decoder_destroy_0
90404:  LDR             R5, [SP,#0x1B8+var_10C]
90406:  LDR             R0, [R5,#0x70]
90408:  LDR.W           LR, [SP,#0x1B8+var_128]
9040C:  STRD.W          R6, R8, [R5,#0x74]
90410:  MOV             R1, R4
90412:  LDR             R2, [R5,#0x78]
90414:  VLD1.8          {D16-D17}, [R1]!
90418:  ADD.W           R0, R0, R0,LSL#3
9041C:  VLD1.8          {D18-D19}, [R1]!
90420:  ADD.W           R0, R2, R0,LSL#2
90424:  LDR             R1, [R1]
90426:  VST1.8          {D16-D17}, [R0]!
9042A:  VST1.8          {D18-D19}, [R0]!
9042E:  STR             R1, [R0]
90430:  LDR             R6, [SP,#0x1B8+var_F4]
90432:  LDR             R0, [R5,#0x70]
90434:  LDR             R1, [R4]
90436:  STR.W           R1, [R6,#0x8C]
9043A:  ADDS            R0, #1
9043C:  STR             R0, [R5,#0x70]
9043E:  AND.W           R0, R9, #0x1000000
90442:  STR             R0, [SP,#0x1B8+var_110]
90444:  LDR             R0, [SP,#0x1B8+var_11C]
90446:  LDR.W           R8, [SP,#0x1B8+var_120]
9044A:  CMP             R0, #1
9044C:  BLT             loc_9045A
9044E:  LDR             R0, [SP,#0x1B8+var_110]
90450:  CMP             R0, #0
90452:  ITT EQ
90454:  MOVEQ           R0, #0
90456:  STREQ.W         R0, [R6,#0x30C]
9045A:  LDRB.W          R0, [R11,#0x74]
9045E:  LSLS            R0, R0, #0x1F
90460:  BNE             loc_90466
90462:  MOVS            R4, #0
90464:  B               loc_90520
90466:  LDR             R0, [SP,#0x1B8+var_104]
90468:  LDR.W           R2, [R11,#0x78]
9046C:  ADD.W           R1, R0, #0x1A20
90470:  LDR.W           R0, [R6,#0xAC]
90474:  ANDS.W          R4, R2, R0
90478:  IT NE
9047A:  MOVNE           R4, #1
9047C:  BEQ             loc_904B8
9047E:  VLDR            S2, [R10,#4]
90482:  VLDR            S0, [R10]
90486:  VMUL.F32        S2, S2, S2
9048A:  VMLA.F32        S2, S0, S0
9048E:  VLDR            S0, =0.00001
90492:  VCMP.F32        S2, S0
90496:  VMRS            APSR_nzcv, FPSCR
9049A:  BLE             loc_904BC
9049C:  LDRD.W          R1, R2, [R1]
904A0:  BIC.W           R0, R0, #0xE
904A4:  STRD.W          R1, R2, [R6,#0xB8]
904A8:  MOVS            R4, #1
904AA:  LDRD.W          R1, R2, [R10]
904AE:  STRD.W          R1, R2, [R6,#0xC0]
904B2:  STR.W           R0, [R6,#0xAC]
904B6:  B               loc_90520
904B8:  CMP             R2, #0
904BA:  BNE             loc_90462
904BC:  MOVW            R3, #0xFFFF
904C0:  ADD.W           R2, R6, #0xC
904C4:  MOVT            R3, #0x7F7F
904C8:  VLDR            S4, [R6,#0xC8]
904CC:  STRD.W          R3, R3, [R6,#0xB8]
904D0:  MOV             R3, R2
904D2:  VLDR            D16, [R1]
904D6:  MOVS            R1, #0xCC
904D8:  VCVT.S32.F32    D16, D16
904DC:  VLD1.32         {D17}, [R3],R1
904E0:  BIC.W           R0, R0, #0xE
904E4:  VLDR            S6, [R6,#0xCC]
904E8:  VLD1.32         {D18-D19}, [R3]
904EC:  VCVT.F32.S32    D16, D16
904F0:  STR.W           R0, [R6,#0xAC]
904F4:  ADD.W           R0, R6, #0x10
904F8:  VSUB.F32        D0, D16, D17
904FC:  VST1.32         {D16[1]}, [R0@32]
90500:  VST1.32         {D16[0]}, [R2@32]
90504:  VADD.F32        S6, S1, S6
90508:  VADD.F32        S4, S0, S4
9050C:  VMOV            D1, D0
90510:  VADD.F32        Q9, Q0, Q9
90514:  VSTR            S6, [R6,#0xCC]
90518:  VSTR            S4, [R6,#0xC8]
9051C:  VST1.32         {D18-D19}, [R3]
90520:  LDRB.W          R0, [R11,#0x74]
90524:  STR.W           R9, [SP,#0x1B8+var_108]
90528:  STR.W           R11, [SP,#0x1B8+var_114]
9052C:  LSLS            R0, R0, #0x1E
9052E:  BMI             loc_9053A
90530:  MOV.W           R11, #0
90534:  MOV.W           R9, #0
90538:  B               loc_905D0
9053A:  LDR.W           R1, [R11,#0x7C]
9053E:  LDR.W           R0, [R6,#0xB0]
90542:  TST             R1, R0
90544:  BEQ.W           loc_908B0
90548:  VLDR            S2, [R10,#0xC]
9054C:  MOV.W           R9, #0
90550:  VLDR            S0, [R10,#8]
90554:  MOV.W           R11, #0
90558:  VCMP.F32        S2, #0.0
9055C:  VMRS            APSR_nzcv, FPSCR
90560:  VCMP.F32        S0, #0.0
90564:  IT GT
90566:  MOVGT.W         R11, #1
9056A:  VMRS            APSR_nzcv, FPSCR
9056E:  IT GT
90570:  MOVGT.W         R9, #1
90574:  VCMP.F32        S0, #0.0
90578:  BIC.W           R0, R0, #0xE
9057C:  VMRS            APSR_nzcv, FPSCR
90580:  STR.W           R0, [R6,#0xB0]
90584:  BLE             loc_90596
90586:  VCVT.S32.F32    S0, S0
9058A:  MOVS            R0, #0
9058C:  VCVT.F32.S32    S0, S0
90590:  VSTR            S0, [R6,#0x1C]
90594:  B               loc_9059E
90596:  MOVS            R0, #0
90598:  STRB.W          R0, [R6,#0x98]
9059C:  MOVS            R0, #2
9059E:  STR.W           R0, [R6,#0x90]
905A2:  VLDR            S0, [R10,#0xC]
905A6:  VCMP.F32        S0, #0.0
905AA:  VMRS            APSR_nzcv, FPSCR
905AE:  BLE             loc_905C4
905B0:  VCVT.S32.F32    S0, S0
905B4:  MOVS            R0, #0
905B6:  STR.W           R0, [R6,#0x94]
905BA:  VCVT.F32.S32    S0, S0
905BE:  VSTR            S0, [R6,#0x20]
905C2:  B               loc_905D0
905C4:  MOVS            R0, #0
905C6:  STRB.W          R0, [R6,#0x98]
905CA:  MOVS            R0, #2
905CC:  STR.W           R0, [R6,#0x94]
905D0:  LDR             R0, [SP,#0x1B8+var_114]
905D2:  LDR.W           R10, [SP,#0x1B8+var_104]
905D6:  LDRB.W          R0, [R0,#0x74]
905DA:  LSLS            R0, R0, #0x1D
905DC:  BMI             loc_905EA
905DE:  CMP             R8, LR
905E0:  ITT NE
905E2:  MOVNE           R0, #0
905E4:  STRDNE.W        R0, R0, [R6,#0x2C]
905E8:  B               loc_905F2
905EA:  LDRD.W          R0, R1, [R5]
905EE:  STRD.W          R0, R1, [R6,#0x2C]
905F2:  LDR             R0, [SP,#0x1B8+var_114]
905F4:  LDR             R0, [R0,#0x74]
905F6:  LSLS            R1, R0, #0x1C
905F8:  BPL             loc_90618
905FA:  LDR             R1, [SP,#0x1B8+var_114]
905FC:  LDR.W           R2, [R1,#0x80]
90600:  LDR.W           R1, [R6,#0xB4]
90604:  CBZ             R2, loc_9060A
90606:  ANDS            R2, R1
90608:  BEQ             loc_90618
9060A:  LDRB            R2, [R5,#8]
9060C:  BIC.W           R1, R1, #0xE
90610:  STR.W           R1, [R6,#0xB4]
90614:  STRB.W          R2, [R6,#0x7D]
90618:  LSLS            R0, R0, #0x1A
9061A:  STR             R4, [SP,#0x1B8+var_138]
9061C:  BPL             loc_9062A
9061E:  MOV             R0, R6
90620:  BL              sub_8C628
90624:  LDR.W           LR, [SP,#0x1B8+var_128]
90628:  LDR             R6, [SP,#0x1B8+var_F4]
9062A:  LDRB.W          R0, [R6,#0x80]
9062E:  CBZ             R0, loc_90648
90630:  ADD.W           R2, R6, #0xAC
90634:  ADD.W           R3, R6, #0xAC
90638:  LDM             R2, {R0-R2}
9063A:  BIC.W           R2, R2, #8
9063E:  BIC.W           R0, R0, #8
90642:  BIC.W           R1, R1, #8
90646:  STM             R3!, {R0-R2}
90648:  MOVW            R2, #0x1518
9064C:  CMP             R8, LR
9064E:  BNE             loc_906A0
90650:  LDR             R0, [SP,#0x1B8+var_F8]
90652:  MOVW            R1, #0x18C8
90656:  VLDR            S0, [R6,#0x274]
9065A:  MOV             R5, R6
9065C:  LDR.W           R9, [SP,#0x1B8+var_108]
90660:  LDR             R0, [R0]
90662:  LDR.W           R11, [SP,#0x1B8+var_114]
90666:  ADD             R0, R1
90668:  VLDR            S2, [R0,#4]
9066C:  STR.W           R6, [R0,#0xE4]
90670:  VMUL.F32        S0, S2, S0
90674:  VSTR            S0, [R0,#0x14]
90678:  VSTR            S0, [R0]
9067C:  B.W             loc_9374A
90680:  DCD dword_1ACF70 - 0x903C2
90684:  DCD off_117248 - 0x903C6
90688:  DCD off_11724C - 0x90400
9068C:  DCFS 0.00001
90691:  DCB 0xFF, 0x7F, 0xFF
90694:  DCD 0xFF7FFFFF, 0x7F7FFFFF
9069C:  DCB 0xFF, 0xFF
9069E:  LDRB            R7, [R7,#arg_15]
906A0:  LDR             R0, [SP,#0x1B8+var_108]
906A2:  LDR             R1, [SP,#0x1B8+var_118]
906A4:  AND.W           R0, R0, #0x3000000
906A8:  STRD.W          R1, R6, [R6,#0x2F8]
906AC:  CMP.W           R0, #0x1000000
906B0:  STRD.W          R6, R6, [R6,#0x300]
906B4:  STR             R0, [SP,#0x1B8+var_140]
906B6:  BNE             loc_906C4
906B8:  CMP             R1, #0
906BA:  ITT NE
906BC:  LDRNE.W         R0, [R1,#0x2FC]
906C0:  STRNE.W         R0, [R6,#0x2FC]
906C4:  LDR             R0, [SP,#0x1B8+var_108]
906C6:  TST.W           R0, #0x5000000
906CA:  AND.W           R2, R0, #0x8000000
906CE:  STR             R2, [SP,#0x1B8+var_13C]
906D0:  BEQ             loc_906E2
906D2:  LDR             R0, [SP,#0x1B8+var_13C]
906D4:  CBNZ            R0, loc_906E2
906D6:  CMP             R1, #0
906D8:  ITT NE
906DA:  LDRNE.W         R0, [R1,#0x300]
906DE:  STRNE.W         R0, [R6,#0x300]
906E2:  LDRB            R0, [R6,#0xA]
906E4:  LSLS            R0, R0, #0x18
906E6:  BPL             loc_90700
906E8:  LDRB            R0, [R1,#0xA]
906EA:  LSLS            R0, R0, #0x18
906EC:  MOV             R0, R1
906EE:  BPL             loc_906FC
906F0:  MOV             R0, R1
906F2:  LDR.W           R0, [R0,#0x2F8]
906F6:  LDRB            R1, [R0,#0xA]
906F8:  LSLS            R1, R1, #0x18
906FA:  BMI             loc_906F2
906FC:  STR.W           R0, [R6,#0x304]
90700:  ADR.W           R0, unk_90690
90704:  ADD.W           R1, R6, #0x210
90708:  VLD1.64         {D16-D17}, [R0@128]
9070C:  MOV.W           R8, #1
90710:  LDR             R0, [SP,#0x1B8+var_134]
90712:  CMP             R0, #0
90714:  IT NE
90716:  MOVNE           R0, #1
90718:  STRB.W          R0, [R6,#0x82]
9071C:  LDR.W           R0, [R6,#0x1C8]
90720:  STRB.W          R8, [R6,#0x7A]
90724:  CMP             R0, #0
90726:  VST1.32         {D16-D17}, [R1]
9072A:  BGT             loc_907A2
9072C:  MOV.W           R4, #1
90730:  MOV             R10, R9
90732:  IT EQ
90734:  MOVEQ           R4, #8
90736:  LDR             R0, [SP,#0x1B8+var_F8]
90738:  MOV             R9, R11
9073A:  LDR             R1, [R0]
9073C:  LSLS            R0, R4, #2
9073E:  CMP             R1, #0
90740:  ITTT NE
90742:  LDRNE.W         R2, [R1,#0x370]
90746:  ADDNE           R2, #1
90748:  STRNE.W         R2, [R1,#0x370]
9074C:  LDR             R1, =(dword_1ACF70 - 0x90754)
9074E:  LDR             R2, =(off_117248 - 0x90756)
90750:  ADD             R1, PC; dword_1ACF70
90752:  ADD             R2, PC; off_117248
90754:  MOV             R11, R1
90756:  LDR             R1, [R1]
90758:  LDR             R2, [R2]; sub_9A720
9075A:  BLX             R2; sub_9A720
9075C:  LDR.W           R1, [R6,#0x1CC]; src
90760:  MOV             R5, R0
90762:  CBZ             R1, loc_90796
90764:  LDR.W           R0, [R6,#0x1C4]
90768:  LSLS            R2, R0, #2; n
9076A:  MOV             R0, R5; dest
9076C:  BLX             j_memcpy
90770:  LDR.W           R0, [R6,#0x1CC]
90774:  CMP             R0, #0
90776:  ITTTT NE
90778:  LDRNE           R1, [SP,#0x1B8+var_F8]
9077A:  LDRNE           R1, [R1]
9077C:  CMPNE           R1, #0
9077E:  LDRNE.W         R2, [R1,#0x370]
90782:  ITT NE
90784:  SUBNE           R2, #1
90786:  STRNE.W         R2, [R1,#0x370]
9078A:  LDR             R2, =(off_11724C - 0x90794)
9078C:  LDR.W           R1, [R11]
90790:  ADD             R2, PC; off_11724C
90792:  LDR             R2, [R2]; j_opus_decoder_destroy_0
90794:  BLX             R2; j_opus_decoder_destroy_0
90796:  MOV             R11, R9
90798:  MOV             R9, R10
9079A:  LDR.W           R10, [SP,#0x1B8+var_104]
9079E:  STRD.W          R4, R5, [R6,#0x1C8]
907A2:  LDR             R0, [SP,#0x1B8+var_10C]
907A4:  LDR             R5, [SP,#0x1B8+var_F4]
907A6:  LDR.W           R0, [R0,#0xC4]
907AA:  STR.W           R8, [R6,#0x1C4]
907AE:  CMP             R0, #0
907B0:  BEQ             loc_9083E
907B2:  LDRB            R0, [R5,#0xA]
907B4:  LDR             R1, [SP,#0x1B8+var_124]
907B6:  AND.W           R0, R0, #8
907BA:  LDR             R4, [SP,#0x1B8+s1]
907BC:  ORR.W           R0, R1, R0,LSR#3
907C0:  CBNZ            R0, loc_9083E
907C2:  LDR             R6, [R5]
907C4:  MOV             R0, R4; s1
907C6:  MOV             R1, R6; s2
907C8:  BLX             strcmp
907CC:  CBZ             R0, loc_9083E
907CE:  MOV             R0, R4; s
907D0:  LDR.W           R8, [R5,#0x44]
907D4:  BLX             strlen
907D8:  ADDS            R5, R0, #1
907DA:  CMP             R8, R5
907DC:  BCS             loc_9082A
907DE:  CMP             R6, #0
907E0:  ITTTT NE
907E2:  LDRNE           R0, [SP,#0x1B8+var_F8]
907E4:  LDRNE           R0, [R0]
907E6:  CMPNE           R0, #0
907E8:  LDRNE.W         R1, [R0,#0x370]
907EC:  ITT NE
907EE:  SUBNE           R1, #1
907F0:  STRNE.W         R1, [R0,#0x370]
907F4:  LDR             R1, =(dword_1ACF70 - 0x907FC)
907F6:  LDR             R0, =(off_11724C - 0x907FE)
907F8:  ADD             R1, PC; dword_1ACF70
907FA:  ADD             R0, PC; off_11724C
907FC:  MOV             R8, R1
907FE:  LDR             R1, [R1]
90800:  LDR             R2, [R0]; j_opus_decoder_destroy_0
90802:  MOV             R0, R6
90804:  BLX             R2; j_opus_decoder_destroy_0
90806:  LDR             R0, [SP,#0x1B8+var_F8]
90808:  LDR             R0, [R0]
9080A:  CMP             R0, #0
9080C:  ITTT NE
9080E:  LDRNE.W         R1, [R0,#0x370]
90812:  ADDNE           R1, #1
90814:  STRNE.W         R1, [R0,#0x370]
90818:  LDR             R0, =(off_117248 - 0x90822)
9081A:  LDR.W           R1, [R8]
9081E:  ADD             R0, PC; off_117248
90820:  LDR             R2, [R0]; sub_9A720
90822:  MOV             R0, R5
90824:  BLX             R2; sub_9A720
90826:  MOV             R6, R0
90828:  MOV             R8, R5
9082A:  MOV             R0, R6; dest
9082C:  MOV             R1, R4; src
9082E:  MOV             R2, R5; n
90830:  BLX             j_memcpy
90834:  LDR             R0, [SP,#0x1B8+var_F4]
90836:  STR             R6, [R0]
90838:  LDR             R5, [SP,#0x1B8+var_F4]
9083A:  STR.W           R8, [R5,#0x44]
9083E:  LDRB.W          R0, [R5,#0x7D]
90842:  LDR             R6, [SP,#0x1B8+var_100]
90844:  CBZ             R0, loc_90856
90846:  LDR.W           R0, [R5,#0x90]
9084A:  CMP             R0, #0
9084C:  ITT LE
9084E:  LDRLE.W         R0, [R5,#0x94]
90852:  CMPLE           R0, #0
90854:  BLE             loc_908CC
90856:  LDRB.W          R0, [R5,#0x81]
9085A:  CBZ             R0, loc_90862
9085C:  LDR.W           R0, [R5,#0xA8]
90860:  CBZ             R0, loc_908C4
90862:  VLDR            S0, [R5,#0x2C]
90866:  VCMP.F32        S0, #0.0
9086A:  VMRS            APSR_nzcv, FPSCR
9086E:  ITTT EQ
90870:  VLDREQ          S0, [R5,#0xD8]
90874:  VLDREQ          S2, [R5,#0xE0]
90878:  VSUBEQ.F32      S0, S2, S0
9087C:  VLDR            S2, [R5,#0x30]
90880:  VCVT.S32.F32    S0, S0
90884:  VCMP.F32        S2, #0.0
90888:  VMRS            APSR_nzcv, FPSCR
9088C:  ITTT EQ
9088E:  VLDREQ          S2, [R5,#0xDC]
90892:  VLDREQ          S4, [R5,#0xE4]
90896:  VSUBEQ.F32      S2, S4, S2
9089A:  VCVT.S32.F32    S2, S2
9089E:  VCVT.F32.S32    S0, S0
908A2:  VCVT.F32.S32    S2, S2
908A6:  VMOV            R0, S0
908AA:  VMOV            R1, S2
908AE:  B               loc_908D0
908B0:  CMP             R1, #0
908B2:  BNE.W           loc_90530
908B6:  VLDR            S0, [R10,#8]
908BA:  MOV.W           R11, #0
908BE:  MOV.W           R9, #0
908C2:  B               loc_90574
908C4:  LDR.W           R0, [R5,#0xA4]
908C8:  CMP             R0, #1
908CA:  BLT             loc_90862
908CC:  LDR             R0, [R5,#0x24]
908CE:  LDR             R1, [R5,#0x28]
908D0:  LDR.W           R2, [R5,#0xA4]
908D4:  STRD.W          R0, R1, [R5,#0x24]
908D8:  CMP             R2, #1
908DA:  ITT GE
908DC:  SUBGE           R0, R2, #1
908DE:  STRGE.W         R0, [R5,#0xA4]
908E2:  LDR.W           R0, [R5,#0xA8]
908E6:  CMP             R0, #1
908E8:  ITT GE
908EA:  SUBGE           R0, #1
908EC:  STRGE.W         R0, [R5,#0xA8]
908F0:  LDR             R0, [SP,#0x1B8+var_124]
908F2:  CBZ             R0, loc_90900
908F4:  TST.W           R9, R11
908F8:  ITT EQ
908FA:  MOVEQ           R0, #1
908FC:  STREQ.W         R0, [R5,#0xA8]
90900:  LDR             R0, [SP,#0x1B8+var_108]
90902:  AND.W           R1, R0, #0x6000000
90906:  LDR             R0, [SP,#0x1B8+var_12C]
90908:  EORS.W          R0, R0, #1
9090C:  STR             R0, [SP,#0x1B8+var_148]
9090E:  BNE             loc_9093C
90910:  CBZ             R1, loc_9093C
90912:  MOVS            R0, #1
90914:  STR.W           R0, [R5,#0xA8]
90918:  LDR             R0, [SP,#0x1B8+var_108]
9091A:  LSLS            R0, R0, #0x19
9091C:  BPL             loc_9093C
9091E:  CMP.W           R9, #0
90922:  ITTT EQ
90924:  MOVEQ           R0, #0
90926:  STREQ           R0, [R5,#0x14]
90928:  STREQ           R0, [R5,#0x1C]
9092A:  CMP.W           R11, #0
9092E:  ITTT EQ
90930:  MOVEQ           R0, #0
90932:  STREQ           R0, [R5,#0x18]
90934:  STREQ           R0, [R5,#0x20]
90936:  MOVS            R0, #0
90938:  STRD.W          R0, R0, [R5,#0x24]
9093C:  LDR             R0, [SP,#0x1B8+var_F8]
9093E:  MOVW            R2, #0x18CC
90942:  VLDR            S0, [R5,#0x274]
90946:  LDR             R0, [R0]
90948:  ADD             R2, R0
9094A:  VLDR            S2, [R2]
9094E:  MOVW            R2, #0x19AC
90952:  STR             R5, [R0,R2]
90954:  MOVW            R2, #0x18DC
90958:  VMUL.F32        S2, S2, S0
9095C:  ADD             R2, R0
9095E:  VSTR            S2, [R2]
90962:  MOVW            R2, #0x18C8
90966:  ADD             R2, R0
90968:  VSTR            S2, [R2]
9096C:  LDR             R2, [SP,#0x1B8+var_110]
9096E:  CBNZ            R2, loc_90988
90970:  LDR             R2, [SP,#0x1B8+var_13C]
90972:  ADD.W           R3, R6, #0xC
90976:  CMP             R2, #0
90978:  MOV             R2, R3
9097A:  IT EQ
9097C:  ADDEQ.W         R2, R6, #0x30 ; '0'
90980:  CMP             R1, #0
90982:  IT EQ
90984:  MOVEQ           R2, R3
90986:  B               loc_9098C
90988:  ADD.W           R2, R6, #0x28 ; '('
9098C:  VLDR            S4, [R2]
90990:  LDR             R4, [SP,#0x1B8+var_110]
90992:  VSTR            S4, [R5,#0x40]
90996:  LDRD.W          R1, R2, [R6]
9099A:  CMP             R4, #0
9099C:  STRD.W          R1, R2, [R5,#0x34]
909A0:  IT NE
909A2:  MOVNE           R4, #1
909A4:  VMOV            S2, R1
909A8:  BEQ             loc_909DC
909AA:  MOVS            R1, #0
909AC:  LDR             R2, [SP,#0x1B8+var_108]
909AE:  MOVT            R1, #0x401
909B2:  ANDS            R1, R2
909B4:  ITT EQ
909B6:  VCMPEQ.F32      S4, #0.0
909BA:  VMRSEQ          APSR_nzcv, FPSCR
909BE:  BNE             loc_909DC
909C0:  LDR             R1, [SP,#0x1B8+var_108]
909C2:  VLDR            S2, =0.0
909C6:  LSLS            R1, R1, #0x15
909C8:  VMOV.F32        S4, S2
909CC:  MOV.W           R1, #0
909D0:  IT MI
909D2:  VLDRMI          S4, [R6,#4]
909D6:  VSTR            S4, [R5,#0x38]
909DA:  STR             R1, [R5,#0x34]
909DC:  VLDR            S4, [R6,#0x44]
909E0:  VCMP.F32        S2, S4
909E4:  VMRS            APSR_nzcv, FPSCR
909E8:  IT GE
909EA:  VMOVGE.F32      S4, S2
909EE:  LDR             R1, [SP,#0x1B8+var_10C]
909F0:  VLDR            S2, [R1,#0x28]
909F4:  VCMP.F32        S4, S2
909F8:  VMRS            APSR_nzcv, FPSCR
909FC:  IT GE
909FE:  VMOVGE.F32      S2, S4
90A02:  VSTR            S2, [R5,#0x144]
90A06:  LDR             R1, [R1,#0x2C]
90A08:  STR.W           R1, [R5,#0x148]
90A0C:  LDR             R1, [SP,#0x1B8+var_108]
90A0E:  TST.W           R1, #0x21
90A12:  BEQ             loc_90A1C
90A14:  MOVS            R0, #0
90A16:  STRB.W          R0, [R5,#0x7D]
90A1A:  B               loc_90AF2
90A1C:  LDRB            R1, [R5,#8]
90A1E:  VLDR            S2, [R5,#0xC]
90A22:  VLDR            S6, [R5,#0x10]
90A26:  VLDR            S4, [R5,#0x1C]
90A2A:  LSLS            R1, R1, #0x1F
90A2C:  BNE             loc_90A64
90A2E:  MOVW            R1, #0x1554
90A32:  ADD             R0, R1
90A34:  VLDR            S8, [R0]
90A38:  VLDR            S10, [R0,#0x378]
90A3C:  VADD.F32        S8, S8, S8
90A40:  VMLA.F32        S8, S10, S0
90A44:  B               loc_90A68
90A46:  ALIGN 4
90A48:  DCD dword_1ACF70 - 0x90754
90A4C:  DCD off_117248 - 0x90756
90A50:  DCD off_11724C - 0x90794
90A54:  DCD dword_1ACF70 - 0x907FC
90A58:  DCD off_11724C - 0x907FE
90A5C:  DCD off_117248 - 0x90822
90A60:  DCFS 0.0
90A64:  VLDR            S8, =0.0
90A68:  VADD.F32        S0, S6, S8
90A6C:  LDR             R2, [SP,#0x1B8+var_114]
90A6E:  VADD.F32        S2, S2, S4
90A72:  LDRD.W          R0, R1, [R5,#0xC]
90A76:  LDR             R2, [R2,#0x14]
90A78:  STRD.W          R0, R1, [SP,#0x1B8+var_A0]
90A7C:  CMP             R2, R5
90A7E:  VSTR            S0, [SP,#0x1B8+var_94]
90A82:  VSTR            S2, [SP,#0x1B8+var_98]
90A86:  BNE             loc_90AB4
90A88:  LDR             R0, [SP,#0x1B8+var_114]
90A8A:  LDR             R0, [R0,#0x20]
90A8C:  CBNZ            R0, loc_90AB4
90A8E:  LDR             R0, [SP,#0x1B8+var_114]
90A90:  LDR             R0, [R0,#0x28]
90A92:  CBNZ            R0, loc_90AB4
90A94:  ADD             R0, SP, #0x1B8+var_A0
90A96:  MOVS            R2, #1
90A98:  ADD.W           R1, R0, #8
90A9C:  BL              sub_8B770
90AA0:  CMP             R0, #0
90AA2:  ITTTT NE
90AA4:  LDRBNE.W        R0, [R10,#0x3DD]
90AA8:  CMPNE           R0, #0
90AAA:  LDRNE           R0, [SP,#0x1B8+var_F4]
90AAC:  MOVNE           R1, #1
90AAE:  IT NE
90AB0:  STRBNE.W        R1, [R0,#0x7E]
90AB4:  LDR             R5, [SP,#0x1B8+var_F4]
90AB6:  LDRB.W          R0, [R5,#0x7E]
90ABA:  CBZ             R0, loc_90AF2
90ABC:  LDRB.W          R0, [R5,#0x7D]
90AC0:  LDRB            R1, [R5,#9]
90AC2:  EOR.W           R2, R0, #1
90AC6:  LDR             R0, [SP,#0x1B8+var_F8]
90AC8:  STRB.W          R2, [R5,#0x7D]
90ACC:  LSLS            R1, R1, #0x1F
90ACE:  LDR             R0, [R0]
90AD0:  BNE             loc_90AEA
90AD2:  MOVW            R1, #0x2CF8
90AD6:  ADD             R1, R0
90AD8:  VLDR            S0, [R1]
90ADC:  VCMP.F32        S0, #0.0
90AE0:  VMRS            APSR_nzcv, FPSCR
90AE4:  ITT LS
90AE6:  LDRLS           R0, [R0,#0x1C]
90AE8:  STRLS           R0, [R1]
90AEA:  MOV             R0, R5
90AEC:  BL              sub_8C628
90AF0:  LDR             R5, [SP,#0x1B8+var_F4]
90AF2:  MOVS            R0, #0
90AF4:  ADD.W           R2, R5, #0x24 ; '$'
90AF8:  STRB.W          R0, [R5,#0x7E]
90AFC:  ADD             R0, SP, #0x1B8+var_D0
90AFE:  MOV             R1, R5
90B00:  BL              sub_965F4
90B04:  LDR             R0, [SP,#0x1B8+var_108]
90B06:  LDR             R1, [SP,#0x1B8+var_F4]
90B08:  ANDS.W          R0, R0, #0x40 ; '@'
90B0C:  STR             R0, [SP,#0x1B8+var_150]
90B0E:  BEQ             loc_90B16
90B10:  LDRB.W          R0, [R1,#0x7D]
90B14:  CBZ             R0, loc_90B68
90B16:  LDR.W           R0, [R1,#0x90]
90B1A:  LDR             R5, [SP,#0x1B8+var_12C]
90B1C:  CMP             R0, #0
90B1E:  BLE             loc_90B4C
90B20:  CMP.W           R9, #0
90B24:  LDR.W           R8, [SP,#0x1B8+var_124]
90B28:  LDR.W           R9, [SP,#0x1B8+var_108]
90B2C:  BNE             loc_90B5E
90B2E:  LDRB.W          R0, [R1,#0x98]
90B32:  CBZ             R0, loc_90B94
90B34:  VLDR            S0, [SP,#0x1B8+var_D0]
90B38:  VLDR            S2, [R1,#0x1C]
90B3C:  VCMP.F32        S2, S0
90B40:  VMRS            APSR_nzcv, FPSCR
90B44:  IT GE
90B46:  VMOVGE.F32      S0, S2
90B4A:  B               loc_90B98
90B4C:  LDR.W           R0, [R1,#0x94]
90B50:  LDR.W           R9, [SP,#0x1B8+var_108]
90B54:  CMP             R0, #0
90B56:  LDR             R0, [SP,#0x1B8+var_124]
90B58:  MOV             R8, R0
90B5A:  MOV             R3, R0
90B5C:  BLE             loc_90C02
90B5E:  CMP.W           R11, #0
90B62:  BEQ             loc_90BA6
90B64:  LDR             R3, [SP,#0x1B8+var_124]
90B66:  B               loc_90BE0
90B68:  LDR.W           R8, [SP,#0x1B8+var_124]
90B6C:  CMP.W           R9, #0
90B70:  LDR             R5, [SP,#0x1B8+var_12C]
90B72:  ITTT EQ
90B74:  LDREQ           R0, [SP,#0x1B8+var_D0]
90B76:  STREQ           R0, [R1,#0x1C]
90B78:  MOVEQ.W         R8, #1
90B7C:  CMP.W           R8, #0
90B80:  IT NE
90B82:  MOVNE.W         R8, #1
90B86:  LDR.W           R9, [SP,#0x1B8+var_108]
90B8A:  CMP.W           R11, #0
90B8E:  BEQ             loc_90BCE
90B90:  LDR             R3, [SP,#0x1B8+var_124]
90B92:  B               loc_90C02
90B94:  VLDR            S0, [SP,#0x1B8+var_D0]
90B98:  MOV.W           R8, #1
90B9C:  VSTR            S0, [R1,#0x1C]
90BA0:  CMP.W           R11, #0
90BA4:  BNE             loc_90B64
90BA6:  LDR.W           R0, [R1,#0x94]
90BAA:  LDR             R3, [SP,#0x1B8+var_124]
90BAC:  CMP             R0, #1
90BAE:  BLT             loc_90BE0
90BB0:  LDRB.W          R0, [R1,#0x98]
90BB4:  CBZ             R0, loc_90BD6
90BB6:  VLDR            S0, [SP,#0x1B8+var_CC]
90BBA:  VLDR            S2, [R1,#0x20]
90BBE:  VCMP.F32        S2, S0
90BC2:  VMRS            APSR_nzcv, FPSCR
90BC6:  IT GE
90BC8:  VMOVGE.F32      S0, S2
90BCC:  B               loc_90BDA
90BCE:  LDR             R0, [SP,#0x1B8+var_CC]
90BD0:  MOVS            R3, #1
90BD2:  STR             R0, [R1,#0x20]
90BD4:  B               loc_90C02
90BD6:  VLDR            S0, [SP,#0x1B8+var_CC]
90BDA:  MOVS            R3, #1
90BDC:  VSTR            S0, [R1,#0x20]
90BE0:  CMP.W           R8, #0
90BE4:  IT NE
90BE6:  MOVNE.W         R8, #1
90BEA:  LDRB.W          R0, [R1,#0x7D]
90BEE:  CMP             R3, #0
90BF0:  IT NE
90BF2:  MOVNE           R3, #1
90BF4:  CMP             R0, #0
90BF6:  ITT EQ
90BF8:  LDRBEQ          R0, [R1,#9]
90BFA:  MOVSEQ.W        R0, R0,LSL#31
90BFE:  BEQ.W           loc_910BC
90C02:  STR             R3, [SP,#0x1B8+var_154]
90C04:  ADD             R0, SP, #0x1B8+var_A0
90C06:  LDRD.W          R2, R3, [R1,#0x1C]
90C0A:  BL              sub_963FC
90C0E:  LDR.W           R11, [SP,#0x1B8+var_F4]
90C12:  LDRD.W          R1, R2, [SP,#0x1B8+var_A0]
90C16:  LDRB.W          R0, [R11,#0x7D]
90C1A:  STRD.W          R1, R2, [R11,#0x1C]
90C1E:  CLZ.W           R0, R0
90C22:  LSRS            R0, R0, #5
90C24:  ORRS            R0, R4
90C26:  BEQ             loc_90C30
90C28:  LDR.W           R0, [R11,#8]
90C2C:  LDR             R3, [SP,#0x1B8+var_138]
90C2E:  B               loc_90C82
90C30:  LDR.W           R0, [R11,#8]
90C34:  VMOV            S0, R1
90C38:  LDR             R3, [SP,#0x1B8+var_138]
90C3A:  VLDR            S2, [R11,#0xC]
90C3E:  VLDR            S4, [R11,#0x10]
90C42:  LSLS            R1, R0, #0x1F
90C44:  BNE             loc_90C66
90C46:  LDR             R1, [SP,#0x1B8+var_F8]
90C48:  MOVW            R2, #0x1554
90C4C:  VLDR            S10, [R11,#0x274]
90C50:  LDR             R1, [R1]
90C52:  ADD             R1, R2
90C54:  VLDR            S6, [R1]
90C58:  VLDR            S8, [R1,#0x378]
90C5C:  VADD.F32        S6, S6, S6
90C60:  VMLA.F32        S6, S8, S10
90C64:  B               loc_90C6A
90C66:  VLDR            S6, =0.0
90C6A:  VADD.F32        S6, S4, S6
90C6E:  VADD.F32        S0, S2, S0
90C72:  VSUB.F32        S4, S6, S4
90C76:  VSUB.F32        S0, S0, S2
90C7A:  VMOV            R2, S4
90C7E:  VMOV            R1, S0
90C82:  VLDR            S18, =0.0
90C86:  STRD.W          R1, R2, [R11,#0x14]
90C8A:  LSLS            R1, R0, #0x1F
90C8C:  VMOV.F32        S16, S18
90C90:  BNE             loc_90CB0
90C92:  LDR             R1, [SP,#0x1B8+var_F8]
90C94:  MOVW            R2, #0x1554
90C98:  LDR             R1, [R1]
90C9A:  ADD             R1, R2
90C9C:  VLDR            S0, [R1]
90CA0:  VLDR            S2, [R1,#0x378]
90CA4:  VADD.F32        S16, S0, S0
90CA8:  VLDR            S0, [R11,#0x274]
90CAC:  VMLA.F32        S16, S2, S0
90CB0:  LSLS            R0, R0, #0x15
90CB2:  BPL             loc_90CDA
90CB4:  LDR             R0, [SP,#0x1B8+var_F8]
90CB6:  MOVW            R1, #0x1554
90CBA:  VLDR            S2, [R11,#0x274]
90CBE:  VLDR            S0, [R11,#0x148]
90CC2:  LDR             R0, [R0]
90CC4:  ADD             R0, R1
90CC6:  VLDR            S6, [R0,#0x378]
90CCA:  VLDR            S4, [R0]
90CCE:  VMLA.F32        S0, S6, S2
90CD2:  VADD.F32        S2, S4, S4
90CD6:  VADD.F32        S18, S2, S0
90CDA:  CMP             R5, #0
90CDC:  LDR             R2, [SP,#0x1B8+var_118]
90CDE:  LDR             R1, [SP,#0x1B8+var_10C]
90CE0:  LDR             R5, [SP,#0x1B8+var_144]
90CE2:  BEQ             loc_90D0A
90CE4:  MOV.W           R0, #0xFFFFFFFF
90CE8:  STR.W           R0, [R11,#0xA0]
90CEC:  CLZ.W           R0, R5
90CF0:  LSRS            R0, R0, #5
90CF2:  ORRS            R0, R3
90CF4:  BNE             loc_90D0A
90CF6:  LDR             R0, [R1,#0x70]
90CF8:  LDR             R1, [R1,#0x78]
90CFA:  ADD.W           R0, R0, R0,LSL#3
90CFE:  ADD.W           R0, R1, R0,LSL#2
90D02:  LDRD.W          R1, R0, [R0,#-0x10]
90D06:  STRD.W          R1, R0, [R11,#0xC]
90D0A:  LDR             R0, [SP,#0x1B8+var_110]
90D0C:  CMP             R0, #0
90D0E:  BEQ             loc_90DE8
90D10:  LDRD.W          R0, R1, [R2,#0x14C]
90D14:  STRH.W          R0, [R11,#0x86]
90D18:  CMP             R0, R1
90D1A:  BNE             loc_90DA8
90D1C:  CMP             R0, #0
90D1E:  ADD.W           R6, R0, #1
90D22:  ITTE NE
90D24:  ADDNE.W         R1, R0, R0,LSR#31
90D28:  ADDNE.W         R1, R0, R1,ASR#1
90D2C:  MOVEQ           R1, #8
90D2E:  CMP             R1, R6
90D30:  IT GT
90D32:  MOVGT           R6, R1
90D34:  CMP             R0, R6
90D36:  BGE             loc_90DA8
90D38:  LDR             R0, [SP,#0x1B8+var_F8]
90D3A:  LDR             R1, [R0]
90D3C:  LSLS            R0, R6, #2
90D3E:  CMP             R1, #0
90D40:  ITTT NE
90D42:  LDRNE.W         R2, [R1,#0x370]
90D46:  ADDNE           R2, #1
90D48:  STRNE.W         R2, [R1,#0x370]
90D4C:  LDR             R5, =(dword_1ACF70 - 0x90D54)
90D4E:  LDR             R2, =(off_117248 - 0x90D56)
90D50:  ADD             R5, PC; dword_1ACF70
90D52:  ADD             R2, PC; off_117248
90D54:  LDR             R1, [R5]
90D56:  LDR             R2, [R2]; sub_9A720
90D58:  BLX             R2; sub_9A720
90D5A:  LDR             R2, [SP,#0x1B8+var_118]
90D5C:  MOV             R9, R0
90D5E:  LDR.W           R1, [R2,#0x154]; src
90D62:  CBZ             R1, loc_90D98
90D64:  LDR.W           R0, [R2,#0x14C]
90D68:  MOV             R11, R2
90D6A:  LSLS            R2, R0, #2; n
90D6C:  MOV             R0, R9; dest
90D6E:  BLX             j_memcpy
90D72:  LDR.W           R0, [R11,#0x154]
90D76:  CMP             R0, #0
90D78:  ITTTT NE
90D7A:  LDRNE           R1, [SP,#0x1B8+var_F8]
90D7C:  LDRNE           R1, [R1]
90D7E:  CMPNE           R1, #0
90D80:  LDRNE.W         R2, [R1,#0x370]
90D84:  ITT NE
90D86:  SUBNE           R2, #1
90D88:  STRNE.W         R2, [R1,#0x370]
90D8C:  LDR             R2, =(off_11724C - 0x90D94)
90D8E:  LDR             R1, [R5]
90D90:  ADD             R2, PC; off_11724C
90D92:  LDR             R2, [R2]; j_opus_decoder_destroy_0
90D94:  BLX             R2; j_opus_decoder_destroy_0
90D96:  LDR             R2, [SP,#0x1B8+var_118]
90D98:  STRD.W          R6, R9, [R2,#0x150]
90D9C:  LDR.W           R0, [R2,#0x14C]
90DA0:  LDR.W           R9, [SP,#0x1B8+var_108]
90DA4:  LDR             R5, [SP,#0x1B8+var_144]
90DA6:  LDR             R3, [SP,#0x1B8+var_138]
90DA8:  LDR.W           R1, [R2,#0x154]
90DAC:  CMP             R5, #0
90DAE:  LDR             R2, [SP,#0x1B8+var_F4]
90DB0:  STR.W           R2, [R1,R0,LSL#2]
90DB4:  LDR             R1, [SP,#0x1B8+var_118]
90DB6:  LDR.W           R0, [R1,#0x14C]
90DBA:  ADD.W           R0, R0, #1
90DBE:  STR.W           R0, [R1,#0x14C]
90DC2:  MOV             R0, R5
90DC4:  IT NE
90DC6:  MOVNE           R0, #1
90DC8:  ORRS            R0, R3
90DCA:  BNE             loc_90DE2
90DCC:  LDR             R0, [SP,#0x1B8+var_140]
90DCE:  CMP.W           R0, #0x3000000
90DD2:  BEQ             loc_90DE2
90DD4:  LDR.W           R11, [SP,#0x1B8+var_F4]
90DD8:  LDRD.W          R0, R1, [R1,#0xC8]
90DDC:  STRD.W          R0, R1, [R11,#0xC]
90DE0:  B               loc_90DE6
90DE2:  LDR.W           R11, [SP,#0x1B8+var_F4]
90DE6:  LDR             R6, [SP,#0x1B8+var_100]
90DE8:  VLDR            S20, =3.4028e38
90DEC:  MOVW            R10, #0xFFFF
90DF0:  VLDR            S0, [R11,#0xB8]
90DF4:  AND.W           R1, R9, #0x2000000
90DF8:  MOVT            R10, #0x7F7F
90DFC:  STR             R1, [SP,#0x1B8+var_14C]
90DFE:  VCMP.F32        S0, S20
90E02:  VMRS            APSR_nzcv, FPSCR
90E06:  BEQ             loc_90E0E
90E08:  LDR.W           R0, [R11,#0xA8]
90E0C:  CBZ             R0, loc_90E52
90E0E:  MOVS.W          R0, R9,LSL#3
90E12:  BMI             loc_90E36
90E14:  CLZ.W           R0, R5
90E18:  LSRS            R0, R0, #5
90E1A:  ORRS            R0, R3
90E1C:  BNE             loc_90E24
90E1E:  LDR             R0, [SP,#0x1B8+var_11C]
90E20:  CMP             R0, #1
90E22:  BGE             loc_90E36
90E24:  CLZ.W           R0, R1
90E28:  LSRS            R0, R0, #5
90E2A:  ORRS            R0, R3
90E2C:  BNE             loc_90ECE
90E2E:  LDR             R0, [SP,#0x1B8+var_140]
90E30:  CMP.W           R0, #0x3000000
90E34:  BEQ             loc_90ECE
90E36:  ADD             R0, SP, #0x1B8+var_A0
90E38:  MOV             R1, R11
90E3A:  BL              sub_9681C
90E3E:  LDR             R3, [SP,#0x1B8+var_138]
90E40:  LDR.W           R11, [SP,#0x1B8+var_F4]
90E44:  LDRD.W          R0, R1, [SP,#0x1B8+var_A0]
90E48:  STR.W           R0, [R11,#0xC]
90E4C:  STR.W           R1, [R11,#0x10]
90E50:  B               loc_90ECE
90E52:  ADD.W           R1, R11, #0xC
90E56:  MOVS            R2, #0x10
90E58:  VLDR            S1, [R11,#0xBC]
90E5C:  MOV             R0, R1
90E5E:  VLDR            S2, [R11,#0xC8]
90E62:  VLD1.32         {D16}, [R0],R2
90E66:  MOVS            R2, #0xA4
90E68:  VLD1.32         {D17}, [R0],R2
90E6C:  MOVS            R2, #0x18
90E6E:  VLD1.32         {D18}, [R0],R2
90E72:  VMLS.F32        D0, D17, D18
90E76:  VLDR            D17, [R6,#0x94]
90E7A:  VLDR            S4, [R11,#0xCC]
90E7E:  VCGE.F32        D18, D17, D0
90E82:  VBIF            D17, D0, D18
90E86:  VLD1.32         {D18-D19}, [R0]
90E8A:  VCVT.S32.F32    D17, D17
90E8E:  LDR.W           R2, [R11,#0xAC]
90E92:  STRD.W          R10, R10, [R11,#0xB8]
90E96:  BIC.W           R2, R2, #0xE
90E9A:  STR.W           R2, [R11,#0xAC]
90E9E:  VCVT.F32.S32    D17, D17
90EA2:  VSUB.F32        D4, D17, D16
90EA6:  VST1.32         {D17[0]}, [R1@32]
90EAA:  ADD.W           R1, R11, #0x10
90EAE:  VST1.32         {D17[1]}, [R1@32]
90EB2:  VADD.F32        S0, S8, S2
90EB6:  VADD.F32        S2, S9, S4
90EBA:  VMOV            D5, D4
90EBE:  VADD.F32        Q9, Q2, Q9
90EC2:  VSTR            S0, [R11,#0xC8]
90EC6:  VSTR            S2, [R11,#0xCC]
90ECA:  VST1.32         {D18-D19}, [R0]
90ECE:  LDR             R0, [SP,#0x1B8+var_F8]
90ED0:  MOVS            R2, #0
90ED2:  STRD.W          R2, R2, [SP,#0x1B8+var_E0]
90ED6:  LDR             R0, [R0]
90ED8:  LDRD.W          R0, R1, [R0,#0x10]
90EDC:  STRD.W          R0, R1, [SP,#0x1B8+var_D8]
90EE0:  ORRS.W          R0, R3, R4
90EE4:  BNE             loc_90EF8
90EE6:  LDR.W           R0, [R11,#0x90]
90EEA:  CMP             R0, #0
90EEC:  ITT LE
90EEE:  LDRLE.W         R0, [R11,#0x94]
90EF2:  CMPLE           R0, #0
90EF4:  BLE.W           loc_9110C
90EF8:  VLDR            S0, [R11,#0xC]
90EFC:  ADD.W           R12, SP, #0x1B8+var_E0
90F00:  VLDR            S2, [R11,#0x10]
90F04:  VCVT.S32.F32    S0, S0
90F08:  LDR             R0, [SP,#0x1B8+var_110]
90F0A:  VCVT.S32.F32    S2, S2
90F0E:  VCVT.F32.S32    S0, S0
90F12:  VCVT.F32.S32    S2, S2
90F16:  VSTR            S0, [R11,#0xC]
90F1A:  VSTR            S2, [R11,#0x10]
90F1E:  CBNZ            R0, loc_90F36
90F20:  CMP             R5, #0
90F22:  IT NE
90F24:  MOVNE           R5, #1
90F26:  BEQ             loc_90F44
90F28:  LDR             R0, [SP,#0x1B8+var_13C]
90F2A:  CBNZ            R0, loc_90F44
90F2C:  ADD.W           R0, R6, #0x2C ; ','
90F30:  MOVS            R5, #1
90F32:  MOVS            R3, #1
90F34:  B               loc_90F4C
90F36:  CMP             R5, #0
90F38:  IT NE
90F3A:  MOVNE           R5, #1
90F3C:  ADD.W           R0, R6, #0x24 ; '$'
90F40:  MOV             R3, R5
90F42:  B               loc_90F4C
90F44:  ADD.W           R0, R6, #8
90F48:  MOV             R3, R5
90F4A:  MOVS            R5, #1
90F4C:  VADD.F32        S18, S16, S18
90F50:  VLDR            S0, [R0]
90F54:  VMOV.F32        S16, #1.0
90F58:  VLDR            S26, =1.35
90F5C:  VSTR            S0, [R11,#0x3C]
90F60:  VMOV.I32        Q8, #0
90F64:  VLDR            S28, =0.2
90F68:  ADD             R0, SP, #0x1B8+var_78
90F6A:  ADD.W           R1, R12, #8
90F6E:  STR             R1, [SP,#0x1B8+var_144]
90F70:  VST1.64         {D16-D17}, [R0]
90F74:  AND.W           R0, R9, #0x1000
90F78:  VADD.F32        S24, S0, S16
90F7C:  VLDR            S0, [R6,#0x3AC]
90F80:  VMUL.F32        S2, S0, S26
90F84:  VMOV.F32        S22, S24
90F88:  VMLA.F32        S22, S0, S28
90F8C:  VCMP.F32        S2, S22
90F90:  VMRS            APSR_nzcv, FPSCR
90F94:  IT GE
90F96:  VMOVGE.F32      S22, S2
90F9A:  LDR             R1, [SP,#0x1B8+var_148]
90F9C:  CMP             R3, #0
90F9E:  LDR             R2, [SP,#0x1B8+var_140]
90FA0:  ORR.W           R0, R1, R0,LSR#12
90FA4:  EOR.W           R1, R0, #1
90FA8:  CLZ.W           R2, R2
90FAC:  MOV             R4, R1
90FAE:  IT EQ
90FB0:  LSREQ           R4, R2, #5
90FB2:  LDR             R3, [SP,#0x1B8+var_104]
90FB4:  CMP             R0, #0
90FB6:  LDRB.W          R2, [R11,#0x7D]
90FBA:  MOV.W           R0, #2
90FBE:  LDRB.W          R3, [R3,#0xAF]
90FC2:  IT NE
90FC4:  MOVNE           R4, R1
90FC6:  STR             R4, [SP,#0x1B8+var_138]
90FC8:  CMP             R3, #0
90FCA:  IT EQ
90FCC:  MOVEQ           R0, #1
90FCE:  STR             R0, [SP,#0x1B8+var_11C]
90FD0:  CBZ             R2, loc_90FE4
90FD2:  MOVS            R0, #0xFF
90FD4:  STRB.W          R0, [R11,#0x83]
90FD8:  ADD.W           R0, R11, #0x7D ; '}'
90FDC:  LDR             R2, [SP,#0x1B8+var_118]
90FDE:  VLDR            S0, [R11,#0x1C]
90FE2:  B               loc_911EC
90FE4:  LDRB.W          R0, [R11,#8]
90FE8:  TST.W           R0, #0x42
90FEC:  BNE             loc_91000
90FEE:  LDR.W           R0, [R11,#0x90]
90FF2:  CMP             R0, #0
90FF4:  ITT LE
90FF6:  LDRLE.W         R0, [R11,#0x94]
90FFA:  CMPLE           R0, #0
90FFC:  BLE.W           loc_93890
91000:  MOVS            R0, #0xFF
91002:  LDR             R3, [SP,#0x1B8+var_154]
91004:  STRB.W          R0, [R11,#0x83]
91008:  ADD.W           R0, R11, #0x7D ; '}'
9100C:  VLDR            S0, [R11,#0x1E0]
91010:  VLDR            S4, [R11,#0x1E8]
91014:  VLDR            S2, [R11,#0x1E4]
91018:  VLDR            S6, [R11,#0x1EC]
9101C:  VSUB.F32        S4, S4, S0
91020:  VLDR            S10, [R11,#0x70]
91024:  VSUB.F32        S2, S6, S2
91028:  VLDR            S6, [R11,#0x20]
9102C:  VLDR            S12, [R11,#0x74]
91030:  VSUB.F32        S8, S6, S18
91034:  LDR             R1, [SP,#0x1B8+var_124]
91036:  VLDR            S0, [R11,#0x1C]
9103A:  VADD.F32        S6, S4, S10
9103E:  VMOV.I32        D2, #0
91042:  VADD.F32        S2, S2, S12
91046:  CBNZ            R1, loc_9105E
91048:  ADD.W           R1, R11, #0x24 ; '$'
9104C:  MOVS            R2, #0x10
9104E:  VLD1.32         {D16}, [R1],R2
91052:  VLDR            D17, [R1]
91056:  VADD.F32        D17, D17, D17
9105A:  VADD.F32        D2, D17, D16
9105E:  LSLS            R1, R3, #0x1F
91060:  IT NE
91062:  VMOVNE.F32      S2, S8
91066:  MOVS.W          R1, R8,LSL#31
9106A:  IT NE
9106C:  VMOVNE.F32      S6, S0
91070:  MOVS.W          R1, R9,LSL#17
91074:  BMI             loc_910A6
91076:  AND.W           R6, R9, #8
9107A:  VCMP.F32        S5, S2
9107E:  MOVS            R1, #0
91080:  VMRS            APSR_nzcv, FPSCR
91084:  IT GT
91086:  MOVGT           R1, #1
91088:  MOVS            R3, #1
9108A:  EOR.W           R2, R3, R6,LSR#3
9108E:  MOVS.W          R4, R9,LSL#16
91092:  AND.W           R2, R2, R1
91096:  MOV             R1, R11
91098:  STRB.W          R2, [R1,#0x79]!
9109C:  BMI             loc_910DA
9109E:  CMP             R2, #0
910A0:  BEQ             loc_91172
910A2:  LDR             R6, [SP,#0x1B8+var_100]
910A4:  B               loc_910B4
910A6:  MOVS            R3, #1
910A8:  MOV             R1, R11
910AA:  STRB.W          R3, [R1,#0x79]!
910AE:  MOVS.W          R2, R9,LSL#16
910B2:  BMI             loc_910E4
910B4:  VLDR            S8, [R6,#0x64]
910B8:  MOVS            R2, #1
910BA:  B               loc_9117A
910BC:  LDR             R0, [SP,#0x1B8+var_F8]
910BE:  MOVW            R2, #0x2CF8
910C2:  LDR             R0, [R0]
910C4:  ADD             R2, R0
910C6:  VLDR            S0, [R2]
910CA:  VCMP.F32        S0, #0.0
910CE:  VMRS            APSR_nzcv, FPSCR
910D2:  ITT LS
910D4:  LDRLS           R0, [R0,#0x1C]
910D6:  STRLS           R0, [R2]
910D8:  B               loc_90C02
910DA:  CMP             R2, #0
910DC:  STRB.W          R3, [R11,#0x78]
910E0:  BEQ             loc_911A2
910E2:  B               loc_911BC
910E4:  STRB.W          R3, [R11,#0x78]
910E8:  B               loc_911C0
910EA:  ALIGN 4
910EC:  DCD dword_1ACF70 - 0x90D54
910F0:  DCD off_117248 - 0x90D56
910F4:  DCD off_11724C - 0x90D94
910F8:  DCFS 3.4028e38
910FC:  DCFS 1.35
91100:  DCFS 0.2
91104:  DCFS 0.0
91108:  DCFS 0.65
9110C:  LDR             R0, [SP,#0x1B8+var_104]
9110E:  VLDR            S0, [R0,#0x10]
91112:  VCMP.F32        S0, #0.0
91116:  VMRS            APSR_nzcv, FPSCR
9111A:  BLE.W           loc_90EF8
9111E:  VLDR            S0, [R0,#0x14]
91122:  VCMP.F32        S0, #0.0
91126:  VMRS            APSR_nzcv, FPSCR
9112A:  BLE.W           loc_90EF8
9112E:  VLDR            S2, [R6,#0x90]
91132:  ADD             R1, SP, #0x1B8+var_E0
91134:  VLDR            S6, [R6,#0x98]
91138:  ADD             R2, SP, #0x1B8+var_A0
9113A:  VLDR            S0, [R6,#0x8C]
9113E:  MOV             R0, R11
91140:  VLDR            S4, [R6,#0x94]
91144:  VCMP.F32        S2, S6
91148:  VMRS            APSR_nzcv, FPSCR
9114C:  IT GE
9114E:  VMOVGE.F32      S6, S2
91152:  VCMP.F32        S0, S4
91156:  VMRS            APSR_nzcv, FPSCR
9115A:  IT GE
9115C:  VMOVGE.F32      S4, S0
91160:  VSTR            S6, [SP,#0x1B8+var_9C]
91164:  VSTR            S4, [SP,#0x1B8+var_A0]
91168:  BL              sub_96AA8
9116C:  LDR.W           R11, [SP,#0x1B8+var_F4]
91170:  B               loc_90EF8
91172:  VLDR            S8, =0.0
91176:  MOVS            R2, #0
91178:  LDR             R6, [SP,#0x1B8+var_100]
9117A:  VSUB.F32        S6, S6, S8
9117E:  VCMP.F32        S4, S6
91182:  VMRS            APSR_nzcv, FPSCR
91186:  BLE             loc_911C8
91188:  ANDS.W          R3, R9, #8
9118C:  BNE             loc_911C8
9118E:  UBFX.W          R3, R9, #0xB, #1
91192:  STRB.W          R3, [R11,#0x78]
91196:  EOR.W           R6, R3, #1
9119A:  ORRS            R6, R2
9119C:  LDR             R6, [SP,#0x1B8+var_100]
9119E:  BNE             loc_911BE
911A0:  MOVS            R6, #0
911A2:  CLZ.W           R3, R6
911A6:  VCMP.F32        S5, S2
911AA:  MOVS            R2, #0
911AC:  VMRS            APSR_nzcv, FPSCR
911B0:  IT GT
911B2:  MOVGT           R2, #1
911B4:  LSRS            R3, R3, #5
911B6:  ANDS            R2, R3
911B8:  MOVS            R3, #1
911BA:  STRB            R2, [R1]
911BC:  LDR             R6, [SP,#0x1B8+var_100]
911BE:  CBZ             R2, loc_911D2
911C0:  LDR             R2, [SP,#0x1B8+var_118]
911C2:  VLDR            S2, [R6,#0x64]
911C6:  B               loc_911D8
911C8:  MOVS            R3, #0
911CA:  STRB.W          R3, [R11,#0x78]
911CE:  CMP             R2, #0
911D0:  BNE             loc_911C0
911D2:  VLDR            S2, =0.0
911D6:  LDR             R2, [SP,#0x1B8+var_118]
911D8:  CMP             R3, #0
911DA:  ITE NE
911DC:  VLDRNE          S4, [R6,#0x64]
911E0:  VLDREQ          S4, =0.0
911E4:  VSTR            S2, [R11,#0x70]
911E8:  VSTR            S4, [R11,#0x74]
911EC:  LDR             R1, [SP,#0x1B8+var_140]
911EE:  ADD.W           R3, R2, #0x21C
911F2:  VLDR            S6, [R11,#0xC]
911F6:  ADD.W           R6, R2, #0x214
911FA:  ADD.W           R1, R1, #0xFD000000
911FE:  VLDR            S2, [R11,#0x14]
91202:  CLZ.W           R1, R1
91206:  VLDR            S8, [R11,#0x10]
9120A:  VLDR            S10, [R11,#0x18]
9120E:  VADD.F32        S12, S6, S2
91212:  LSRS            R1, R1, #5
91214:  ORRS.W          R8, R5, R1
91218:  VADD.F32        S4, S8, S10
9121C:  MOV             R1, R12
9121E:  IT EQ
91220:  ADDEQ.W         R1, R2, #0x210
91224:  LDR             R5, [SP,#0x1B8+var_144]
91226:  IT EQ
91228:  ADDEQ.W         R5, R2, #0x218
9122C:  IT NE
9122E:  ADDNE.W         R3, R12, #0xC
91232:  VLDR            S28, [R3]
91236:  CMP.W           R8, #0
9123A:  VLDR            S30, [R5]
9123E:  IT NE
91240:  ADDNE.W         R6, R12, #4
91244:  VLDR            S19, [R1]
91248:  LDRB.W          R1, [R11,#8]
9124C:  VLDR            S17, [R6]
91250:  LSLS            R1, R1, #0x1F
91252:  BNE             loc_91274
91254:  LDR             R1, [SP,#0x1B8+var_F8]
91256:  MOVW            R2, #0x1554
9125A:  VLDR            S3, [R11,#0x274]
9125E:  LDR             R1, [R1]
91260:  ADD             R1, R2
91262:  VLDR            S14, [R1]
91266:  VLDR            S1, [R1,#0x378]
9126A:  VADD.F32        S14, S14, S14
9126E:  VMLA.F32        S14, S1, S3
91272:  B               loc_91278
91274:  VLDR            S14, =0.0
91278:  VMOV.F32        S24, #0.5
9127C:  LDR.W           R1, [R11,#0x10]
91280:  VCMP.F32        S12, S30
91284:  LDR             R6, [SP,#0x1B8+var_100]
91286:  VMRS            APSR_nzcv, FPSCR
9128A:  VMOV.F32        S1, S30
9128E:  VADD.F32        S14, S8, S14
91292:  IT MI
91294:  VMOVMI.F32      S1, S12
91298:  VCMP.F32        S4, S28
9129C:  MOVW            R3, #0x401
912A0:  VMOV.F32        S3, S28
912A4:  VMRS            APSR_nzcv, FPSCR
912A8:  IT MI
912AA:  VMOVMI.F32      S3, S4
912AE:  VMOV            S12, R1
912B2:  VADD.F32        S5, S6, S0
912B6:  VLDR            S0, [R11,#0x38]
912BA:  VADD.F32        S10, S10, S12
912BE:  VLDR            S4, [R11,#0x34]
912C2:  VMUL.F32        S11, S0, S24
912C6:  AND.W           R3, R3, R9
912CA:  VCMP.F32        S6, S19
912CE:  ADDS            R6, #0x40 ; '@'
912D0:  VMOV.F32        S7, S19
912D4:  VMRS            APSR_nzcv, FPSCR
912D8:  IT GE
912DA:  VMOVGE.F32      S7, S6
912DE:  VSTR            S14, [SP,#0x1B8+var_E4]
912E2:  VCMP.F32        S8, S17
912E6:  VLDR            S6, [R11,#0xC]
912EA:  VMOV.F32        S14, S17
912EE:  VMRS            APSR_nzcv, FPSCR
912F2:  IT GE
912F4:  VMOVGE.F32      S14, S8
912F8:  VSTR            S1, [R11,#0x1D8]
912FC:  VLDR            S1, [R11,#0x74]
91300:  VMUL.F32        S9, S4, S24
91304:  VSTR            S5, [SP,#0x1B8+var_E8]
91308:  VADD.F32        S5, S6, S2
9130C:  VSUB.F32        S10, S10, S1
91310:  VSTR            S3, [R11,#0x1DC]
91314:  VCVT.S32.F32    S1, S11
91318:  VSTR            S14, [R11,#0x1D4]
9131C:  VADD.F32        S8, S18, S12
91320:  VLDR            S12, [R11,#0x70]
91324:  VSTR            S7, [R11,#0x1D0]
91328:  CMP             R3, #1
9132A:  VLDR            S13, [R11,#0x40]
9132E:  VCVT.S32.F32    S3, S9
91332:  LDR.W           R2, [R11,#0xC]
91336:  VSUB.F32        S12, S5, S12
9133A:  VSTR            S6, [R11,#0x1E0]
9133E:  VADD.F32        S7, S10, S24
91342:  VSTR            S10, [R11,#0x1EC]
91346:  VCVT.F32.S32    S14, S1
9134A:  VADD.F32        S5, S8, S24
9134E:  VSTR            S8, [R11,#0x1E4]
91352:  VADD.F32        S1, S6, S24
91356:  IT EQ
91358:  ADDEQ.W         R6, R11, #0x40 ; '@'
9135C:  VMOV.F32        S9, S13
91360:  VCVT.F32.S32    S3, S3
91364:  VSUB.F32        S7, S7, S13
91368:  VCMP.F32        S13, S14
9136C:  VMRS            APSR_nzcv, FPSCR
91370:  IT LS
91372:  VMOVLS.F32      S9, S14
91376:  VADD.F32        S14, S12, S24
9137A:  VSTR            S12, [R11,#0x1E8]
9137E:  STRD.W          R2, R1, [SP,#0x1B8+var_F0]
91382:  VLDR            S11, [R6]
91386:  VCMP.F32        S13, S3
9138A:  VMRS            APSR_nzcv, FPSCR
9138E:  IT LS
91390:  VMOVLS.F32      S13, S3
91394:  VADD.F32        S3, S5, S11
91398:  VADD.F32        S1, S1, S13
9139C:  VCVT.S32.F32    S5, S7
913A0:  VSUB.F32        S14, S14, S9
913A4:  VCVT.S32.F32    S3, S3
913A8:  VCVT.S32.F32    S1, S1
913AC:  VCVT.F32.S32    S5, S5
913B0:  VCVT.S32.F32    S14, S14
913B4:  VCVT.F32.S32    S3, S3
913B8:  VCVT.F32.S32    S1, S1
913BC:  VCMP.F32        S28, S5
913C0:  VCVT.F32.S32    S14, S14
913C4:  VMRS            APSR_nzcv, FPSCR
913C8:  VMOV.F32        S7, S5
913CC:  IT MI
913CE:  VMOVMI.F32      S7, S28
913D2:  VCMP.F32        S28, S3
913D6:  VMRS            APSR_nzcv, FPSCR
913DA:  VMOV.F32        S9, S3
913DE:  VCMP.F32        S30, S1
913E2:  IT MI
913E4:  VMOVMI.F32      S9, S28
913E8:  VMRS            APSR_nzcv, FPSCR
913EC:  VMOV.F32        S11, S1
913F0:  VCMP.F32        S30, S14
913F4:  IT MI
913F6:  VMOVMI.F32      S11, S30
913FA:  VMRS            APSR_nzcv, FPSCR
913FE:  VMOV.F32        S13, S14
91402:  VCMP.F32        S17, S5
91406:  IT MI
91408:  VMOVMI.F32      S13, S30
9140C:  VMRS            APSR_nzcv, FPSCR
91410:  VCMP.F32        S17, S3
91414:  IT GT
91416:  VMOVGT.F32      S7, S17
9141A:  VMRS            APSR_nzcv, FPSCR
9141E:  VCMP.F32        S19, S1
91422:  IT GT
91424:  VMOVGT.F32      S9, S17
91428:  VMRS            APSR_nzcv, FPSCR
9142C:  VCMP.F32        S19, S14
91430:  IT GT
91432:  VMOVGT.F32      S11, S19
91436:  VMRS            APSR_nzcv, FPSCR
9143A:  VCMP.F32        S2, #0.0
9143E:  IT GT
91440:  VMOVGT.F32      S13, S19
91444:  VMRS            APSR_nzcv, FPSCR
91448:  VSTR            S7, [R11,#0x1FC]
9144C:  VSTR            S9, [R11,#0x1F4]
91450:  VSTR            S11, [R11,#0x1F0]
91454:  VSTR            S13, [R11,#0x1F8]
91458:  BLE             loc_91466
9145A:  LDR             R1, [SP,#0x1B8+var_14C]
9145C:  CMP             R1, #0
9145E:  ITT EQ
91460:  LDREQ           R1, [SP,#0x1B8+var_150]
91462:  CMPEQ           R1, #0
91464:  BEQ             loc_91476
91466:  VMOV.F32        S2, #16.0
9146A:  LDR             R4, [SP,#0x1B8+var_100]
9146C:  VLDR            S14, [R4,#0x3AC]
91470:  VMUL.F32        S5, S14, S2
91474:  B               loc_91480
91476:  VLDR            S14, =0.65
9147A:  LDR             R4, [SP,#0x1B8+var_100]
9147C:  VMUL.F32        S5, S2, S14
91480:  VADD.F32        S2, S4, S4
91484:  VLDR            S7, [R11,#0x24]
91488:  VADD.F32        S4, S0, S0
9148C:  VLDR            S3, [R11,#0x28]
91490:  VSUB.F32        S12, S12, S6
91494:  VLDR            S14, [R11,#0x50]
91498:  VSUB.F32        S6, S10, S8
9149C:  VLDR            S1, [R11,#0x54]
914A0:  VCVT.S32.F32    S10, S5
914A4:  VLDR            S26, =0.0
914A8:  VADD.F32        S2, S2, S7
914AC:  VADD.F32        S8, S4, S3
914B0:  VCVT.F32.S32    S5, S10
914B4:  VSUB.F32        S4, S2, S12
914B8:  VSUB.F32        S2, S8, S6
914BC:  VCMP.F32        S4, #0.0
914C0:  VMRS            APSR_nzcv, FPSCR
914C4:  VCMP.F32        S2, #0.0
914C8:  IT LS
914CA:  VMOVLS.F32      S4, S26
914CE:  VMRS            APSR_nzcv, FPSCR
914D2:  IT LS
914D4:  VMOVLS.F32      S2, S26
914D8:  LDR             R1, [SP,#0x1B8+var_F8]
914DA:  VLDR            S10, [R11,#0x60]
914DE:  VSTR            S5, [R11,#0x234]
914E2:  VCMP.F32        S10, S20
914E6:  VSTR            S4, [R11,#0x58]
914EA:  VSTR            S2, [R11,#0x5C]
914EE:  LDR             R1, [R1]
914F0:  VMRS            APSR_nzcv, FPSCR
914F4:  ITTT MI
914F6:  VLDRMI          S14, [R11,#0x68]
914FA:  VMLSMI.F32      S10, S14, S12
914FE:  VMOVMI.F32      S14, S10
91502:  VLDR            S12, [R11,#0x64]
91506:  VCMP.F32        S12, S20
9150A:  VMRS            APSR_nzcv, FPSCR
9150E:  BPL             loc_91562
91510:  VCMP.F32        S12, S0
91514:  VLDR            S1, =0.0
91518:  VMRS            APSR_nzcv, FPSCR
9151C:  IT HI
9151E:  VMOVHI.F32      S1, S12
91522:  VLDR            S10, [R11,#0x6C]
91526:  VCMP.F32        S10, #0.0
9152A:  VMRS            APSR_nzcv, FPSCR
9152E:  VCMP.F32        S10, S16
91532:  IT HI
91534:  VMOVHI.F32      S1, S12
91538:  VMRS            APSR_nzcv, FPSCR
9153C:  BLT             loc_9155E
9153E:  VADD.F32        S0, S3, S0
91542:  MOVW            R2, #0x1564
91546:  ADD             R1, R2
91548:  VLDR            S12, [R1]
9154C:  VADD.F32        S0, S0, S12
91550:  VCMP.F32        S1, S0
91554:  VMRS            APSR_nzcv, FPSCR
91558:  IT GE
9155A:  VMOVGE.F32      S1, S8
9155E:  VMLS.F32        S1, S10, S6
91562:  VCMP.F32        S1, #0.0
91566:  VMRS            APSR_nzcv, FPSCR
9156A:  VMOV.F32        S6, S26
9156E:  VCMP.F32        S14, #0.0
91572:  IT GE
91574:  VMOVGE.F32      S6, S1
91578:  VMOV.F32        S0, S26
9157C:  VMRS            APSR_nzcv, FPSCR
91580:  IT GE
91582:  VMOVGE.F32      S0, S14
91586:  LDRB            R0, [R0]
91588:  CMP             R0, #0
9158A:  ITT EQ
9158C:  LDRBEQ.W        R0, [R11,#0x7F]
91590:  CMPEQ           R0, #0
91592:  BEQ.W           loc_91944
91596:  VMOV.F32        S2, S6
9159A:  VMOV.F32        S4, S0
9159E:  LDR.W           R0, [R11,#0x27C]
915A2:  STRD.W          R10, R10, [R11,#0x60]
915A6:  VSTR            S4, [R11,#0x50]
915AA:  VSTR            S2, [R11,#0x54]
915AE:  BL              sub_9BAD4
915B2:  LDR.W           R0, [R4,#0x3A8]
915B6:  LDR             R1, [SP,#0x1B8+var_F4]
915B8:  LDR             R2, [R0,#0x38]
915BA:  LDR.W           R0, [R1,#0x27C]
915BE:  LDR             R1, [R2,#8]
915C0:  BL              sub_9C138
915C4:  VMOV            R1, S19; int
915C8:  LDR             R0, [SP,#0x1B8+var_F8]
915CA:  VMOV            R2, S17; int
915CE:  MOVW            R6, #0x19AC
915D2:  VMOV            R3, S30; int
915D6:  MOVS            R4, #1
915D8:  LDR             R0, [R0]
915DA:  LDR             R5, [R0,R6]
915DC:  MOVS            R6, #0
915DE:  LDR.W           R0, [R5,#0x27C]; int
915E2:  STRB.W          R4, [R5,#0x7C]
915E6:  STR             R6, [SP,#0x1B8+var_1B4]; int
915E8:  VSTR            S28, [SP,#0x1B8+var_1B8]
915EC:  BL              sub_9BFD8
915F0:  LDR.W           R0, [R5,#0x27C]
915F4:  ADD             R4, SP, #0x1B8+var_E0
915F6:  LDR.W           R10, [SP,#0x1B8+var_104]
915FA:  LDR             R1, [R0,#0x40]
915FC:  LDR             R0, [R0,#0x48]
915FE:  ADD.W           R0, R0, R1,LSL#4
91602:  SUBS            R0, #0x10
91604:  VLD1.32         {D16-D17}, [R0]
91608:  ADD.W           R0, R5, #0x210
9160C:  VST1.32         {D16-D17}, [R0]
91610:  LDR             R0, [SP,#0x1B8+var_13C]
91612:  LDR             R5, [SP,#0x1B8+var_10C]
91614:  CBZ             R0, loc_91660
91616:  LDR             R0, [SP,#0x1B8+var_F8]
91618:  MOVW            R3, #0x1A9C
9161C:  LDR             R1, [R0]
9161E:  LDR             R0, [SP,#0x1B8+var_F4]
91620:  LDR             R2, [R1,R3]
91622:  CMP             R2, #1
91624:  BLT             loc_9164E
91626:  ADD             R1, R3
91628:  ADD.W           R3, R2, R2,LSL#3
9162C:  ADDS            R2, #1
9162E:  LDR             R1, [R1,#8]
91630:  ADD.W           R1, R1, R3,LSL#2
91634:  SUBS            R1, #0x20 ; ' '
91636:  B               loc_91640
91638:  SUBS            R2, #1
9163A:  SUBS            R1, #0x24 ; '$'
9163C:  CMP             R2, #1
9163E:  BLS             loc_9164E
91640:  LDR             R3, [R1]
91642:  CMP             R3, #0
91644:  BEQ             loc_91638
91646:  LDRB            R6, [R3,#0xB]
91648:  LSLS            R6, R6, #0x1C
9164A:  BPL             loc_91638
9164C:  B               loc_91650
9164E:  MOVS            R3, #0
91650:  MOVS            R6, #0
91652:  CMP             R0, R3
91654:  BNE             loc_91660
91656:  LDR.W           R0, [R0,#0xA8]
9165A:  CMP             R0, #1
9165C:  IT LT
9165E:  MOVLT           R6, #1
91660:  LDR.W           R0, [R5,#0xC0]
91664:  CBZ             R0, loc_91680
91666:  LDR             R1, [SP,#0x1B8+var_F4]
91668:  LDR.W           R0, [R0,#0x2FC]
9166C:  SUBS            R0, R1, R0
9166E:  CLZ.W           R0, R0
91672:  LSRS            R5, R0, #5
91674:  B               loc_91682
91676:  ALIGN 4
91678:  DCFS 0.0
9167C:  DCFS 255.0
91680:  MOVS            R5, #0
91682:  MOVS            R0, #0x2E ; '.'
91684:  CMP             R6, #0
91686:  ORR.W           R1, R6, R5
9168A:  IT NE
9168C:  MOVNE           R0, #0x2F ; '/'
9168E:  CMP             R1, #1
91690:  BNE.W           loc_917AE
91694:  LDR             R1, [SP,#0x1B8+var_F8]
91696:  MOVW            R2, #0x1518
9169A:  LDR             R3, [SP,#0x1B8+var_10C]
9169C:  VLDR            S1, =0.0
916A0:  LDR             R1, [R1]
916A2:  VLDR            S0, [R3,#0x1E8]
916A6:  ADD             R1, R2
916A8:  MOVS            R2, #0
916AA:  ADD.W           R0, R1, R0,LSL#4
916AE:  VLDR            S2, [R1]
916B2:  MOVS            R1, #0xF
916B4:  VLDR            S8, [R0,#0xB8]
916B8:  VMUL.F32        S0, S0, S2
916BC:  VLDR            S4, [R0,#0xB0]
916C0:  VLDR            S2, [R0,#0xAC]
916C4:  VLDR            S6, [R0,#0xB4]
916C8:  VCMP.F32        S4, S16
916CC:  VMRS            APSR_nzcv, FPSCR
916D0:  VCMP.F32        S2, S16
916D4:  VMOV.F32        S10, S2
916D8:  VMOV.F32        S12, S6
916DC:  VMUL.F32        S0, S8, S0
916E0:  VMOV.F32        S8, S4
916E4:  IT GT
916E6:  VMOVGT.F32      S8, S16
916EA:  VMRS            APSR_nzcv, FPSCR
916EE:  VCMP.F32        S6, S16
916F2:  IT GT
916F4:  VMOVGT.F32      S10, S16
916F8:  VMRS            APSR_nzcv, FPSCR
916FC:  IT GT
916FE:  VMOVGT.F32      S12, S16
91702:  VCMP.F32        S0, S16
91706:  VMRS            APSR_nzcv, FPSCR
9170A:  VMOV.F32        S14, S0
9170E:  VCMP.F32        S4, #0.0
91712:  IT GT
91714:  VMOVGT.F32      S14, S16
91718:  VMRS            APSR_nzcv, FPSCR
9171C:  VCMP.F32        S2, #0.0
91720:  VMOV.F32        S2, S24
91724:  IT MI
91726:  VMOVMI.F32      S8, S1
9172A:  VMOV.F32        S4, S24
9172E:  VMRS            APSR_nzcv, FPSCR
91732:  VCMP.F32        S6, #0.0
91736:  IT MI
91738:  VMOVMI.F32      S10, S1
9173C:  VMRS            APSR_nzcv, FPSCR
91740:  VCMP.F32        S0, #0.0
91744:  VLDR            S0, =255.0
91748:  VMOV.F32        S6, S24
9174C:  IT MI
9174E:  VMOVMI.F32      S12, S1
91752:  VMRS            APSR_nzcv, FPSCR
91756:  VMLA.F32        S2, S8, S0
9175A:  IT MI
9175C:  VMOVMI.F32      S14, S1
91760:  VMOV.F32        S8, S24
91764:  LDR             R0, [SP,#0x1B8+var_F4]
91766:  VMLA.F32        S4, S10, S0
9176A:  VMLA.F32        S6, S12, S0
9176E:  LDR.W           R0, [R0,#0x27C]; int
91772:  STRD.W          R2, R1, [SP,#0x1B8+var_1B8]; float
91776:  VMLA.F32        S8, S14, S0
9177A:  VCVT.S32.F32    S0, S2
9177E:  VCVT.S32.F32    S2, S4
91782:  VCVT.S32.F32    S4, S6
91786:  VMOV            R1, S0
9178A:  VMOV            R2, S2
9178E:  VCVT.S32.F32    S0, S8
91792:  ORR.W           R1, R2, R1,LSL#8
91796:  VMOV            R2, S4
9179A:  ORR.W           R1, R1, R2,LSL#16
9179E:  VMOV            R2, S0
917A2:  ORR.W           R3, R1, R2,LSL#24; int
917A6:  LDR             R2, [SP,#0x1B8+var_144]; int
917A8:  MOV             R1, R4; int
917AA:  BL              sub_9D624
917AE:  LDR             R3, [SP,#0x1B8+var_100]
917B0:  CMP             R5, #0
917B2:  LDR             R4, [SP,#0x1B8+var_10C]
917B4:  BEQ.W           loc_91978
917B8:  LDR             R0, [SP,#0x1B8+var_F4]
917BA:  LDR.W           R1, [R4,#0xC0]
917BE:  CMP             R0, R1
917C0:  BNE.W           loc_91978
917C4:  VLDR            S0, [R0,#0xC]
917C8:  VLDR            S4, [R0,#0x14]
917CC:  VLDR            S2, [R0,#0x10]
917D0:  VLDR            S6, [R0,#0x18]
917D4:  VADD.F32        S4, S0, S4
917D8:  VLDR            S10, [R3,#0x3AC]
917DC:  VADD.F32        S8, S2, S6
917E0:  VLDR            S14, [SP,#0x1B8+var_E0]
917E4:  VSUB.F32        S12, S0, S10
917E8:  VSUB.F32        S6, S2, S10
917EC:  VLDR            S2, [SP,#0x1B8+var_D4]
917F0:  VADD.F32        S4, S4, S10
917F4:  VADD.F32        S0, S8, S10
917F8:  VLDR            S8, [SP,#0x1B8+var_D8]
917FC:  VCMP.F32        S14, S12
91800:  VLDR            S10, [SP,#0x1B8+var_DC]
91804:  VMRS            APSR_nzcv, FPSCR
91808:  VSTR            S6, [SP,#0x1B8+var_9C]
9180C:  VSTR            S12, [SP,#0x1B8+var_A0]
91810:  VSTR            S4, [SP,#0x1B8+var_98]
91814:  VSTR            S0, [SP,#0x1B8+var_94]
91818:  ITT GE
9181A:  VCMPGE.F32      S10, S6
9181E:  VMRSGE          APSR_nzcv, FPSCR
91822:  BGE.W           loc_91962
91826:  VMOV.F32        S0, #0.25
9182A:  LDR             R1, [SP,#0x1B8+var_F8]
9182C:  VLDR            S2, [R4,#0xCC]
91830:  MOVW            R2, #0x1518
91834:  VLDR            S1, =0.0
91838:  LDR             R1, [R1]
9183A:  ADD             R1, R2
9183C:  MOVS            R2, #0xF
9183E:  VMUL.F32        S0, S2, S0
91842:  VLDR            S2, [R1]
91846:  VLDR            S10, [R1,#0x388]
9184A:  VLDR            S6, [R1,#0x380]
9184E:  VLDR            S4, [R1,#0x37C]
91852:  VLDR            S8, [R1,#0x384]
91856:  VCMP.F32        S6, S16
9185A:  VMRS            APSR_nzcv, FPSCR
9185E:  VCMP.F32        S4, S16
91862:  VMOV.F32        S12, S8
91866:  VMUL.F32        S0, S0, S2
9186A:  VMOV.F32        S2, S6
9186E:  IT GT
91870:  VMOVGT.F32      S2, S16
91874:  VMRS            APSR_nzcv, FPSCR
91878:  VCMP.F32        S8, S16
9187C:  VMUL.F32        S0, S10, S0
91880:  VMOV.F32        S10, S4
91884:  IT GT
91886:  VMOVGT.F32      S10, S16
9188A:  VMRS            APSR_nzcv, FPSCR
9188E:  IT GT
91890:  VMOVGT.F32      S12, S16
91894:  VCMP.F32        S0, S16
91898:  VMRS            APSR_nzcv, FPSCR
9189C:  VMOV.F32        S14, S0
918A0:  VCMP.F32        S6, #0.0
918A4:  IT GT
918A6:  VMOVGT.F32      S14, S16
918AA:  VMRS            APSR_nzcv, FPSCR
918AE:  VCMP.F32        S4, #0.0
918B2:  VMOV.F32        S4, S24
918B6:  IT MI
918B8:  VMOVMI.F32      S2, S1
918BC:  VMRS            APSR_nzcv, FPSCR
918C0:  VCMP.F32        S8, #0.0
918C4:  IT MI
918C6:  VMOVMI.F32      S10, S1
918CA:  VMRS            APSR_nzcv, FPSCR
918CE:  VCMP.F32        S0, #0.0
918D2:  VLDR            S0, =255.0
918D6:  VMOV.F32        S6, S24
918DA:  IT MI
918DC:  VMOVMI.F32      S12, S1
918E0:  VMOV.F32        S8, S24
918E4:  VMRS            APSR_nzcv, FPSCR
918E8:  VMLA.F32        S4, S2, S0
918EC:  IT MI
918EE:  VMOVMI.F32      S14, S1
918F2:  VMOV.F32        S2, S24
918F6:  LDR             R1, [R3,#8]
918F8:  LDR.W           R0, [R0,#0x27C]; int
918FC:  STRD.W          R1, R2, [SP,#0x1B8+var_1B8]; float
91900:  VMLA.F32        S6, S12, S0
91904:  VMLA.F32        S8, S14, S0
91908:  VMLA.F32        S2, S10, S0
9190C:  VCVT.S32.F32    S0, S4
91910:  VCVT.S32.F32    S4, S6
91914:  VCVT.S32.F32    S2, S2
91918:  VMOV            R1, S0
9191C:  VCVT.S32.F32    S0, S8
91920:  VMOV            R2, S2
91924:  ORR.W           R1, R2, R1,LSL#8
91928:  VMOV            R2, S4
9192C:  ORR.W           R1, R1, R2,LSL#16
91930:  VMOV            R2, S0
91934:  ORR.W           R3, R1, R2,LSL#24; int
91938:  ADD             R1, SP, #0x1B8+var_A0; int
9193A:  ADD.W           R2, R1, #8; int
9193E:  BL              sub_9D624
91942:  B               loc_91978
91944:  VCMP.F32        S6, S2
91948:  VMRS            APSR_nzcv, FPSCR
9194C:  VCMP.F32        S0, S4
91950:  IT MI
91952:  VMOVMI.F32      S2, S6
91956:  VMRS            APSR_nzcv, FPSCR
9195A:  IT MI
9195C:  VMOVMI.F32      S4, S0
91960:  B               loc_9159E
91962:  VCMP.F32        S8, S4
91966:  VMRS            APSR_nzcv, FPSCR
9196A:  ITT LS
9196C:  VCMPLS.F32      S2, S0
91970:  VMRSLS          APSR_nzcv, FPSCR
91974:  BHI.W           loc_91826
91978:  CMP.W           R8, #0
9197C:  BNE             loc_91996
9197E:  LDR             R0, [SP,#0x1B8+var_F4]
91980:  LDR.W           R1, [R0,#0x27C]
91984:  LDR             R2, [R1]
91986:  LDR             R1, [R1,#8]
91988:  ADD.W           R2, R2, R2,LSL#2
9198C:  ADD.W           R1, R1, R2,LSL#3
91990:  LDR.W           R1, [R1,#-0x28]
91994:  CBZ             R1, loc_919C2
91996:  MOVS            R0, #0
91998:  STR             R0, [SP,#0x1B8+var_124]
9199A:  LDR.W           R0, [R4,#0xBC]
9199E:  CMP             R0, #0
919A0:  IT EQ
919A2:  LDREQ           R0, [R4,#0x7C]
919A4:  LDR             R1, [SP,#0x1B8+var_138]
919A6:  CBZ             R1, loc_919AC
919A8:  MOVS            R5, #1
919AA:  B               loc_919D8
919AC:  CBZ             R0, loc_919D6
919AE:  LDR             R1, [SP,#0x1B8+var_F4]
919B0:  LDR.W           R0, [R0,#0x300]
919B4:  LDR.W           R1, [R1,#0x300]
919B8:  SUBS            R0, R1, R0
919BA:  CLZ.W           R0, R0
919BE:  LSRS            R5, R0, #5
919C0:  B               loc_919D8
919C2:  LDR             R1, [SP,#0x1B8+var_118]
919C4:  LDR.W           R1, [R1,#0x27C]
919C8:  LDR             R2, [R1,#0x18]
919CA:  CMP             R2, #1
919CC:  BLT             loc_91996
919CE:  STR.W           R1, [R0,#0x27C]
919D2:  MOVS            R0, #1
919D4:  B               loc_91998
919D6:  MOVS            R5, #0
919D8:  LDR             R0, [SP,#0x1B8+var_F8]
919DA:  LDR.W           R11, [SP,#0x1B8+var_F4]
919DE:  LDR             R1, [R0]
919E0:  MOVW            R0, #0x1518
919E4:  LDRB.W          R2, [R11,#0x7D]
919E8:  ADDS            R6, R1, R0
919EA:  MOVW            R0, #0x1A5C
919EE:  VLDR            S28, [R11,#0x3C]
919F2:  ADD             R0, R1
919F4:  VLDR            S30, [R11,#0x40]
919F8:  CMP             R2, #0
919FA:  BEQ.W           loc_91B32
919FE:  VLDR            S20, [R6,#0x44]
91A02:  MOVS            R2, #0xC
91A04:  VSTR            S30, [R6,#0x44]
91A08:  CBZ             R5, loc_91A14
91A0A:  LDRB.W          R0, [R0,#0xBA]
91A0E:  CMP             R0, #0
91A10:  IT EQ
91A12:  MOVEQ           R2, #0xB
91A14:  ADD.W           R0, R1, R2,LSL#4
91A18:  MOVW            R2, #0x15D0
91A1C:  ADD             R2, R0
91A1E:  VLDR            S0, [R6]
91A22:  MOVW            R3, #0x15C8
91A26:  MOVW            R1, #0x15C4
91A2A:  VLDR            S2, [R2]
91A2E:  ADDS            R2, R0, R3
91A30:  ADD             R1, R0
91A32:  MOVS            R5, #1
91A34:  VMUL.F32        S0, S2, S0
91A38:  VLDR            S4, [R2]
91A3C:  MOVW            R2, #0x15CC
91A40:  ADD             R0, R2
91A42:  VLDR            S2, [R1]
91A46:  VCMP.F32        S4, S16
91A4A:  VMOV.F32        S6, S4
91A4E:  VMRS            APSR_nzcv, FPSCR
91A52:  IT GT
91A54:  VMOVGT.F32      S6, S16
91A58:  VLDR            S8, [R0]
91A5C:  VCMP.F32        S2, S16
91A60:  ADD             R3, SP, #0x1B8+var_F0
91A62:  VMRS            APSR_nzcv, FPSCR
91A66:  VMOV.F32        S10, S2
91A6A:  VCMP.F32        S8, S16
91A6E:  IT GT
91A70:  VMOVGT.F32      S10, S16
91A74:  VMRS            APSR_nzcv, FPSCR
91A78:  VMOV.F32        S12, S8
91A7C:  VCMP.F32        S0, S16
91A80:  IT GT
91A82:  VMOVGT.F32      S12, S16
91A86:  VMRS            APSR_nzcv, FPSCR
91A8A:  VMOV.F32        S14, S0
91A8E:  VCMP.F32        S4, #0.0
91A92:  IT GT
91A94:  VMOVGT.F32      S14, S16
91A98:  VMRS            APSR_nzcv, FPSCR
91A9C:  VCMP.F32        S2, #0.0
91AA0:  VMOV.F32        S2, S24
91AA4:  IT MI
91AA6:  VMOVMI.F32      S6, S26
91AAA:  VMOV.F32        S4, S24
91AAE:  VMRS            APSR_nzcv, FPSCR
91AB2:  VCMP.F32        S8, #0.0
91AB6:  IT MI
91AB8:  VMOVMI.F32      S10, S26
91ABC:  VMRS            APSR_nzcv, FPSCR
91AC0:  VCMP.F32        S0, #0.0
91AC4:  VLDR            S0, =255.0
91AC8:  VMOV.F32        S8, S24
91ACC:  IT MI
91ACE:  VMOVMI.F32      S12, S26
91AD2:  VMRS            APSR_nzcv, FPSCR
91AD6:  VMLA.F32        S2, S6, S0
91ADA:  IT MI
91ADC:  VMOVMI.F32      S14, S26
91AE0:  VMOV.F32        S6, S24
91AE4:  STR             R5, [SP,#0x1B8+var_1B4]; int
91AE6:  VMLA.F32        S4, S10, S0
91AEA:  LDM             R3, {R0-R3}; int
91AEC:  VMLA.F32        S8, S14, S0
91AF0:  VSTR            S28, [SP,#0x1B8+var_1B0]
91AF4:  VMLA.F32        S6, S12, S0
91AF8:  VCVT.S32.F32    S0, S2
91AFC:  VCVT.S32.F32    S2, S4
91B00:  VCVT.S32.F32    S4, S6
91B04:  VMOV            R5, S0
91B08:  VMOV            R4, S2
91B0C:  VCVT.S32.F32    S0, S8
91B10:  ORR.W           R5, R4, R5,LSL#8
91B14:  VMOV            R4, S4
91B18:  ORR.W           R5, R5, R4,LSL#16
91B1C:  VMOV            R4, S0
91B20:  ORR.W           R5, R5, R4,LSL#24
91B24:  STR             R5, [SP,#0x1B8+var_1B8]; int
91B26:  BL              sub_89B34
91B2A:  VSTR            S20, [R6,#0x44]
91B2E:  B.W             loc_9293E
91B32:  LDR.W           R10, [R11,#8]
91B36:  MOVS.W          R2, R10,LSL#24
91B3A:  BMI.W           loc_91CC6
91B3E:  MOVS.W          R2, R10,LSL#7
91B42:  MOVW            R4, #0x15D0
91B46:  MOV.W           R2, #3
91B4A:  MOVW            R3, #0x15C8
91B4E:  IT PL
91B50:  MOVPL           R2, #2
91B52:  VLDR            S0, [R6]
91B56:  TST.W           R10, #0x6000000
91B5A:  IT NE
91B5C:  MOVNE           R2, #4
91B5E:  ADD.W           R1, R1, R2,LSL#4
91B62:  MOVW            R2, #0x15C4
91B66:  ADD             R4, R1
91B68:  ADD             R3, R1
91B6A:  ADD             R2, R1
91B6C:  VLDR            S2, [R4]
91B70:  MOVW            R4, #0x15CC
91B74:  VLDR            S4, [R3]
91B78:  ADD             R1, R4
91B7A:  VMUL.F32        S2, S2, S0
91B7E:  VLDR            S6, [R2]
91B82:  VCMP.F32        S4, S16
91B86:  VLDR            S0, =0.0
91B8A:  VMOV.F32        S8, S4
91B8E:  VMRS            APSR_nzcv, FPSCR
91B92:  IT GT
91B94:  VMOVGT.F32      S8, S16
91B98:  VLDR            S10, [R1]
91B9C:  VCMP.F32        S6, S16
91BA0:  VMRS            APSR_nzcv, FPSCR
91BA4:  VMOV.F32        S12, S6
91BA8:  VCMP.F32        S10, S16
91BAC:  IT GT
91BAE:  VMOVGT.F32      S12, S16
91BB2:  VMRS            APSR_nzcv, FPSCR
91BB6:  VMOV.F32        S14, S10
91BBA:  VCMP.F32        S2, S16
91BBE:  IT GT
91BC0:  VMOVGT.F32      S14, S16
91BC4:  VMRS            APSR_nzcv, FPSCR
91BC8:  VMOV.F32        S1, S2
91BCC:  VCMP.F32        S4, #0.0
91BD0:  IT GT
91BD2:  VMOVGT.F32      S1, S16
91BD6:  VMOV.F32        S4, S24
91BDA:  VMRS            APSR_nzcv, FPSCR
91BDE:  VCMP.F32        S6, #0.0
91BE2:  IT MI
91BE4:  VMOVMI.F32      S8, S0
91BE8:  VMOV.F32        S6, S24
91BEC:  VMRS            APSR_nzcv, FPSCR
91BF0:  VCMP.F32        S10, #0.0
91BF4:  IT MI
91BF6:  VMOVMI.F32      S12, S0
91BFA:  VMRS            APSR_nzcv, FPSCR
91BFE:  VCMP.F32        S2, #0.0
91C02:  VLDR            S2, =255.0
91C06:  IT MI
91C08:  VMOVMI.F32      S14, S0
91C0C:  VMOV.F32        S10, S24
91C10:  VMRS            APSR_nzcv, FPSCR
91C14:  VMLA.F32        S4, S8, S2
91C18:  IT MI
91C1A:  VMOVMI.F32      S1, S0
91C1E:  VMLA.F32        S6, S12, S2
91C22:  LDRB.W          R2, [R6,#0x4F8]
91C26:  VMOV.F32        S8, S24
91C2A:  LSLS            R2, R2, #0x19
91C2C:  VMLA.F32        S10, S1, S2
91C30:  VCVT.S32.F32    S4, S4
91C34:  VCVT.S32.F32    S6, S6
91C38:  VMLA.F32        S8, S14, S2
91C3C:  VMOV            R1, S4
91C40:  VMOV            R3, S6
91C44:  VCVT.S32.F32    S8, S8
91C48:  VCVT.S32.F32    S4, S10
91C4C:  ORR.W           R1, R3, R1,LSL#8
91C50:  VMOV            R3, S8
91C54:  ORR.W           R1, R1, R3,LSL#16
91C58:  VMOV            R3, S4
91C5C:  ORR.W           R3, R1, R3,LSL#24
91C60:  BPL             loc_91CA4
91C62:  VLDR            S4, [R0]
91C66:  VCMP.F32        S4, S16
91C6A:  VMRS            APSR_nzcv, FPSCR
91C6E:  BEQ             loc_91CA4
91C70:  VMOV.F32        S6, S24
91C74:  BIC.W           R1, R1, #0xFF000000
91C78:  VCMP.F32        S4, S16
91C7C:  VMRS            APSR_nzcv, FPSCR
91C80:  VCMP.F32        S4, #0.0
91C84:  IT GT
91C86:  VMOVGT.F32      S4, S16
91C8A:  VMRS            APSR_nzcv, FPSCR
91C8E:  IT MI
91C90:  VMOVMI.F32      S4, S0
91C94:  VMLA.F32        S6, S4, S2
91C98:  VCVT.S32.F32    S2, S6
91C9C:  VMOV            R0, S2
91CA0:  ORR.W           R3, R1, R0,LSL#24; int
91CA4:  LDR.W           R0, [R11,#0x27C]; int
91CA8:  ANDS.W          R9, R10, #1
91CAC:  BNE             loc_91CD4
91CAE:  VLDR            S2, [R6,#0x3C]
91CB2:  MOVS            R1, #0xC
91CB4:  VLDR            S4, [R6,#0x3B4]
91CB8:  VADD.F32        S2, S2, S2
91CBC:  VLDR            S6, [R11,#0x274]
91CC0:  VMLA.F32        S2, S4, S6
91CC4:  B               loc_91CDA
91CC6:  AND.W           R9, R10, #1
91CCA:  CMP.W           R9, #0
91CCE:  BNE.W           loc_91E38
91CD2:  B               loc_91D20
91CD4:  MOVS            R1, #0xF
91CD6:  VMOV.F32        S2, S0
91CDA:  VLDR            S4, [R11,#0xC]
91CDE:  ADD             R2, SP, #0x1B8+var_B0; int
91CE0:  VLDR            S6, [R11,#0x10]
91CE4:  VADD.F32        S0, S4, S0
91CE8:  VLDR            S8, [R11,#0x14]
91CEC:  VADD.F32        S2, S2, S6
91CF0:  VLDR            S10, [R11,#0x18]
91CF4:  STR             R1, [SP,#0x1B8+var_1B4]; int
91CF6:  ADD             R1, SP, #0x1B8+var_A0; int
91CF8:  VSTR            S28, [SP,#0x1B8+var_1B8]
91CFC:  VSTR            S0, [SP,#0x1B8+var_A0]
91D00:  VADD.F32        S0, S6, S10
91D04:  VSTR            S2, [SP,#0x1B8+var_9C]
91D08:  VADD.F32        S2, S4, S8
91D0C:  VSTR            S0, [SP,#0x1B8+var_B0+4]
91D10:  VSTR            S2, [SP,#0x1B8+var_B0]
91D14:  BL              sub_9D624
91D18:  CMP.W           R9, #0
91D1C:  BNE.W           loc_91E38
91D20:  LDR             R0, [SP,#0x1B8+var_F8]
91D22:  MOVW            R1, #0x1518
91D26:  CMP             R5, #0
91D28:  VLDR            S1, =0.0
91D2C:  LDR             R0, [R0]
91D2E:  ADD             R0, R1
91D30:  MOV.W           R1, #0xA0
91D34:  IT NE
91D36:  MOVNE           R1, #0xB0
91D38:  VLDR            S0, [R0]
91D3C:  ADD             R0, R1
91D3E:  MOVS            R1, #3
91D40:  VLDR            S8, [R0,#0xB8]
91D44:  VLDR            S4, [R0,#0xB0]
91D48:  VMUL.F32        S0, S8, S0
91D4C:  VLDR            S2, [R0,#0xAC]
91D50:  VLDR            S6, [R0,#0xB4]
91D54:  VCMP.F32        S4, S16
91D58:  VMRS            APSR_nzcv, FPSCR
91D5C:  VMOV.F32        S8, S4
91D60:  VCMP.F32        S2, S16
91D64:  IT GT
91D66:  VMOVGT.F32      S8, S16
91D6A:  VMRS            APSR_nzcv, FPSCR
91D6E:  VMOV.F32        S10, S2
91D72:  VCMP.F32        S6, S16
91D76:  IT GT
91D78:  VMOVGT.F32      S10, S16
91D7C:  VMRS            APSR_nzcv, FPSCR
91D80:  VMOV.F32        S12, S6
91D84:  VCMP.F32        S0, S16
91D88:  IT GT
91D8A:  VMOVGT.F32      S12, S16
91D8E:  VMRS            APSR_nzcv, FPSCR
91D92:  VMOV.F32        S14, S0
91D96:  VCMP.F32        S4, #0.0
91D9A:  IT GT
91D9C:  VMOVGT.F32      S14, S16
91DA0:  VMRS            APSR_nzcv, FPSCR
91DA4:  VCMP.F32        S2, #0.0
91DA8:  VMOV.F32        S2, S24
91DAC:  IT MI
91DAE:  VMOVMI.F32      S8, S1
91DB2:  VMOV.F32        S4, S24
91DB6:  VMRS            APSR_nzcv, FPSCR
91DBA:  VCMP.F32        S6, #0.0
91DBE:  IT MI
91DC0:  VMOVMI.F32      S10, S1
91DC4:  VMRS            APSR_nzcv, FPSCR
91DC8:  VCMP.F32        S0, #0.0
91DCC:  VLDR            S0, =255.0
91DD0:  VMOV.F32        S6, S24
91DD4:  IT MI
91DD6:  VMOVMI.F32      S12, S1
91DDA:  VMRS            APSR_nzcv, FPSCR
91DDE:  VMLA.F32        S2, S8, S0
91DE2:  IT MI
91DE4:  VMOVMI.F32      S14, S1
91DE8:  VMOV.F32        S8, S24
91DEC:  LDR.W           R0, [R11,#0x27C]; int
91DF0:  VMLA.F32        S4, S10, S0
91DF4:  STR             R1, [SP,#0x1B8+var_1B4]; int
91DF6:  VSTR            S28, [SP,#0x1B8+var_1B8]
91DFA:  VMLA.F32        S6, S12, S0
91DFE:  VMLA.F32        S8, S14, S0
91E02:  VCVT.S32.F32    S0, S2
91E06:  VCVT.S32.F32    S2, S4
91E0A:  VCVT.S32.F32    S4, S6
91E0E:  VMOV            R1, S0
91E12:  VMOV            R2, S2
91E16:  VCVT.S32.F32    S0, S8
91E1A:  ORR.W           R1, R2, R1,LSL#8
91E1E:  VMOV            R2, S4
91E22:  ORR.W           R1, R1, R2,LSL#16
91E26:  VMOV            R2, S0
91E2A:  ORR.W           R3, R1, R2,LSL#24; int
91E2E:  ADD             R1, SP, #0x1B8+var_F0; int
91E30:  ADD.W           R2, R1, #8; int
91E34:  BL              sub_9D624
91E38:  MOVS.W          R0, R10,LSL#21
91E3C:  BPL.W           loc_92164
91E40:  LDR.W           R0, [R11,#8]
91E44:  VLDR            S0, [R11,#0x10]
91E48:  LSLS            R1, R0, #0x1F
91E4A:  BNE             loc_91E6C
91E4C:  LDR             R1, [SP,#0x1B8+var_F8]
91E4E:  MOVW            R2, #0x1554
91E52:  VLDR            S6, [R11,#0x274]
91E56:  LDR             R1, [R1]
91E58:  ADD             R1, R2
91E5A:  VLDR            S2, [R1]
91E5E:  VLDR            S4, [R1,#0x378]
91E62:  VADD.F32        S2, S2, S2
91E66:  VMLA.F32        S2, S4, S6
91E6A:  B               loc_91E70
91E6C:  VLDR            S2, =0.0
91E70:  VADD.F32        S2, S0, S2
91E74:  VLDR            S19, [R11,#0xC]
91E78:  VLDR            S4, [R11,#0x1C]
91E7C:  LSLS            R0, R0, #0x15
91E7E:  BMI             loc_91E94
91E80:  LDR             R0, [SP,#0x1B8+var_F8]
91E82:  VLDR            S6, =0.0
91E86:  LDR             R1, [R0]
91E88:  B               loc_91EBA
91E8A:  ALIGN 4
91E8C:  DCFS 255.0
91E90:  DCFS 0.0
91E94:  LDR             R0, [SP,#0x1B8+var_F8]
91E96:  VLDR            S8, [R11,#0x274]
91E9A:  VLDR            S6, [R11,#0x148]
91E9E:  LDR             R1, [R0]
91EA0:  MOVW            R0, #0x1554
91EA4:  ADD             R0, R1
91EA6:  VLDR            S12, [R0,#0x378]
91EAA:  VLDR            S10, [R0]
91EAE:  VMLA.F32        S6, S12, S8
91EB2:  VADD.F32        S8, S10, S10
91EB6:  VADD.F32        S6, S8, S6
91EBA:  VLDR            S8, [R11,#0x14]
91EBE:  VCMP.F32        S2, S0
91EC2:  VLDR            S10, [R11,#0x18]
91EC6:  VADD.F32        S4, S19, S4
91ECA:  VADD.F32        S21, S19, S8
91ECE:  VMRS            APSR_nzcv, FPSCR
91ED2:  VADD.F32        S23, S0, S10
91ED6:  IT GE
91ED8:  VMOVGE.F32      S0, S2
91EDC:  VADD.F32        S2, S2, S6
91EE0:  VLDR            S17, =0.0
91EE4:  MOVW            R2, #0x1518
91EE8:  ADD             R1, R2
91EEA:  VADD.F32        S0, S0, S17
91EEE:  VLDR            S25, =255.0
91EF2:  VCMP.F32        S4, S21
91EF6:  VMRS            APSR_nzcv, FPSCR
91EFA:  IT MI
91EFC:  VMOVMI.F32      S21, S4
91F00:  VCMP.F32        S2, S23
91F04:  VADD.F32        S4, S30, S19
91F08:  VMRS            APSR_nzcv, FPSCR
91F0C:  IT MI
91F0E:  VMOVMI.F32      S23, S2
91F12:  VSUB.F32        S2, S21, S30
91F16:  VSTR            S0, [SP,#0x1B8+var_9C]
91F1A:  LDR.W           R0, [R11,#0x27C]; int
91F1E:  VSTR            S4, [SP,#0x1B8+var_A0]
91F22:  VLDR            S0, [R1]
91F26:  VSTR            S23, [SP,#0x1B8+var_B0+4]
91F2A:  VSTR            S2, [SP,#0x1B8+var_B0]
91F2E:  VLDR            S8, [R1,#0x188]
91F32:  VLDR            S4, [R1,#0x180]
91F36:  VMUL.F32        S0, S8, S0
91F3A:  VLDR            S2, [R1,#0x17C]
91F3E:  VLDR            S6, [R1,#0x184]
91F42:  VCMP.F32        S4, S16
91F46:  VMRS            APSR_nzcv, FPSCR
91F4A:  VMOV.F32        S8, S4
91F4E:  VCMP.F32        S2, S16
91F52:  IT GT
91F54:  VMOVGT.F32      S8, S16
91F58:  VMRS            APSR_nzcv, FPSCR
91F5C:  VMOV.F32        S10, S2
91F60:  VCMP.F32        S6, S16
91F64:  IT GT
91F66:  VMOVGT.F32      S10, S16
91F6A:  VMRS            APSR_nzcv, FPSCR
91F6E:  VMOV.F32        S12, S6
91F72:  VCMP.F32        S0, S16
91F76:  IT GT
91F78:  VMOVGT.F32      S12, S16
91F7C:  VMRS            APSR_nzcv, FPSCR
91F80:  VMOV.F32        S14, S0
91F84:  VCMP.F32        S4, #0.0
91F88:  IT GT
91F8A:  VMOVGT.F32      S14, S16
91F8E:  VMRS            APSR_nzcv, FPSCR
91F92:  VCMP.F32        S2, #0.0
91F96:  IT MI
91F98:  VMOVMI.F32      S8, S17
91F9C:  VMRS            APSR_nzcv, FPSCR
91FA0:  VCMP.F32        S6, #0.0
91FA4:  IT MI
91FA6:  VMOVMI.F32      S10, S17
91FAA:  VMRS            APSR_nzcv, FPSCR
91FAE:  VCMP.F32        S0, #0.0
91FB2:  VMOV.F32        S0, S24
91FB6:  IT MI
91FB8:  VMOVMI.F32      S12, S17
91FBC:  VMOV.F32        S2, S24
91FC0:  VMRS            APSR_nzcv, FPSCR
91FC4:  VMOV.F32        S6, S28
91FC8:  MOV.W           R1, #3
91FCC:  VMOV.F32        S4, S24
91FD0:  IT MI
91FD2:  VMOVMI.F32      S14, S17
91FD6:  CMP.W           R9, #0
91FDA:  IT EQ
91FDC:  VMOVEQ.F32      S6, S17
91FE0:  STR             R1, [SP,#0x1B8+var_1B4]; int
91FE2:  VMLA.F32        S0, S8, S25
91FE6:  VSTR            S6, [SP,#0x1B8+var_1B8]
91FEA:  VMLA.F32        S2, S10, S25
91FEE:  VMOV.F32        S8, S24
91FF2:  VMLA.F32        S4, S12, S25
91FF6:  VCVT.S32.F32    S0, S0
91FFA:  VCVT.S32.F32    S2, S2
91FFE:  VMLA.F32        S8, S14, S25
92002:  VCVT.S32.F32    S4, S4
92006:  VMOV            R1, S0
9200A:  VMOV            R2, S2
9200E:  VCVT.S32.F32    S0, S8
92012:  ORR.W           R1, R2, R1,LSL#8
92016:  VMOV            R2, S4
9201A:  ORR.W           R1, R1, R2,LSL#16
9201E:  VMOV            R2, S0
92022:  ORR.W           R3, R1, R2,LSL#24; int
92026:  ADD             R1, SP, #0x1B8+var_A0; int
92028:  ADD             R2, SP, #0x1B8+var_B0; int
9202A:  BL              sub_9D624
9202E:  VLDR            S0, [R6,#0x44]
92032:  VCMP.F32        S0, #0.0
92036:  VMRS            APSR_nzcv, FPSCR
9203A:  BLE.W           loc_92164
9203E:  VLDR            S2, [R11,#0x10]
92042:  VLDR            S4, [R11,#0x18]
92046:  VADD.F32        S2, S2, S4
9204A:  VCMP.F32        S23, S2
9204E:  VMRS            APSR_nzcv, FPSCR
92052:  BPL.W           loc_92164
92056:  LDR             R1, [SP,#0x1B8+var_F8]
92058:  MOVW            R2, #0x1518
9205C:  VSTR            S23, [SP,#0x1B8+var_9C]
92060:  VSTR            S19, [SP,#0x1B8+var_A0]
92064:  LDR             R1, [R1]
92066:  VSTR            S23, [SP,#0x1B8+var_B0+4]
9206A:  ADD             R1, R2
9206C:  VSTR            S21, [SP,#0x1B8+var_B0]
92070:  LDR.W           R0, [R11,#0x27C]; int
92074:  VLDR            S2, [R1]
92078:  VLDR            S10, [R1,#0x108]
9207C:  VLDR            S6, [R1,#0x100]
92080:  VMUL.F32        S2, S10, S2
92084:  VLDR            S4, [R1,#0xFC]
92088:  VLDR            S8, [R1,#0x104]
9208C:  VCMP.F32        S6, S16
92090:  VMRS            APSR_nzcv, FPSCR
92094:  VMOV.F32        S10, S6
92098:  VCMP.F32        S4, S16
9209C:  IT GT
9209E:  VMOVGT.F32      S10, S16
920A2:  VMRS            APSR_nzcv, FPSCR
920A6:  VMOV.F32        S12, S4
920AA:  VCMP.F32        S8, S16
920AE:  IT GT
920B0:  VMOVGT.F32      S12, S16
920B4:  VMRS            APSR_nzcv, FPSCR
920B8:  VMOV.F32        S14, S8
920BC:  VCMP.F32        S2, S16
920C0:  IT GT
920C2:  VMOVGT.F32      S14, S16
920C6:  VMRS            APSR_nzcv, FPSCR
920CA:  VMOV.F32        S1, S2
920CE:  VCMP.F32        S6, #0.0
920D2:  IT GT
920D4:  VMOVGT.F32      S1, S16
920D8:  VMRS            APSR_nzcv, FPSCR
920DC:  VCMP.F32        S4, #0.0
920E0:  IT MI
920E2:  VMOVMI.F32      S10, S17
920E6:  VMRS            APSR_nzcv, FPSCR
920EA:  VCMP.F32        S8, #0.0
920EE:  IT MI
920F0:  VMOVMI.F32      S12, S17
920F4:  VMRS            APSR_nzcv, FPSCR
920F8:  VCMP.F32        S2, #0.0
920FC:  VMOV.F32        S2, S24
92100:  IT MI
92102:  VMOVMI.F32      S14, S17
92106:  VMOV.F32        S4, S24
9210A:  VMRS            APSR_nzcv, FPSCR
9210E:  VMOV.F32        S6, S24
92112:  IT MI
92114:  VMOVMI.F32      S1, S17
92118:  VMOV.F32        S8, S24
9211C:  VSTR            S0, [SP,#0x1B8+var_1B8]
92120:  VMLA.F32        S2, S10, S25
92124:  VMLA.F32        S4, S12, S25
92128:  VMLA.F32        S6, S14, S25
9212C:  VMLA.F32        S8, S1, S25
92130:  VCVT.S32.F32    S2, S2
92134:  VCVT.S32.F32    S4, S4
92138:  VCVT.S32.F32    S6, S6
9213C:  VCVT.S32.F32    S0, S8
92140:  VMOV            R1, S2
92144:  VMOV            R2, S4
92148:  ORR.W           R1, R2, R1,LSL#8
9214C:  VMOV            R2, S6
92150:  ORR.W           R1, R1, R2,LSL#16
92154:  VMOV            R2, S0
92158:  ORR.W           R3, R1, R2,LSL#24; int
9215C:  ADD             R1, SP, #0x1B8+var_A0; int
9215E:  ADD             R2, SP, #0x1B8+var_B0; int
92160:  BL              sub_9D43C
92164:  LDRB.W          R0, [R11,#0x78]
92168:  CMP             R0, #0
9216A:  ITT NE
9216C:  MOVNE           R0, #0
9216E:  BLNE            sub_A71AC
92172:  LDRB.W          R0, [R11,#0x79]
92176:  CMP             R0, #0
92178:  ITT NE
9217A:  MOVNE           R0, #1
9217C:  BLNE            sub_A71AC
92180:  MOVS.W          R0, R10,LSL#30
92184:  BMI.W           loc_923BA
92188:  VCVT.S32.F32    S0, S22
9218C:  LDR             R0, =(unk_53188 - 0x9219A)
9218E:  VADD.F32        S17, S28, S30
92192:  MOV.W           R9, #0
92196:  ADD             R0, PC; unk_53188
92198:  ADD.W           R5, R0, #0xC
9219C:  LDR             R0, =(dword_1ACF70 - 0x921A2)
9219E:  ADD             R0, PC; dword_1ACF70
921A0:  VCVT.F32.S32    S22, S0
921A4:  MOV             R10, R0
921A6:  B               loc_9220E
921A8:  LDR             R0, [R4,#0x58]
921AA:  STRD.W          R6, R8, [R4,#0x5C]
921AE:  VMOV            R2, S28
921B2:  LDR             R1, [R4,#0x60]
921B4:  LDRD.W          R3, R6, [SP,#0x1B8+var_A0]
921B8:  VMLA.F32        S21, S25, S17
921BC:  VMLA.F32        S19, S23, S17
921C0:  STR.W           R3, [R1,R0,LSL#3]
921C4:  ADD.W           R0, R1, R0,LSL#3
921C8:  STR             R6, [R0,#4]
921CA:  LDR             R0, [R4,#0x58]
921CC:  ADDS            R0, #1
921CE:  STR             R0, [R4,#0x58]
921D0:  LDRD.W          R3, R1, [R5,#4]
921D4:  LDR.W           R0, [R11,#0x27C]
921D8:  STR             R1, [SP,#0x1B8+var_1B8]
921DA:  ADD             R1, SP, #0x1B8+var_A0
921DC:  VSTR            S21, [SP,#0x1B8+var_9C]
921E0:  VSTR            S19, [SP,#0x1B8+var_A0]
921E4:  BL              sub_9CE08
921E8:  LDR.W           R6, [R11,#0x27C]
921EC:  ADD             R0, SP, #0x1B8+var_78
921EE:  LDR.W           R3, [R0,R9,LSL#2]
921F2:  LDR             R2, [R6,#0x58]
921F4:  LDR             R1, [R6,#0x60]
921F6:  MOV             R0, R6
921F8:  BL              sub_9CA40
921FC:  MOVS            R0, #0
921FE:  ADDS            R5, #0x18
92200:  STR             R0, [R6,#0x58]
92202:  ADD.W           R9, R9, #1
92206:  LDR             R0, [SP,#0x1B8+var_11C]
92208:  CMP             R0, R9
9220A:  BEQ.W           loc_923BA
9220E:  VLDR            S19, [R11,#0xC]
92212:  VMOV.F32        S27, S22
92216:  VLDR            S0, [R11,#0x14]
9221A:  VMOV.F32        S29, S30
9221E:  VLDR            S21, [R11,#0x10]
92222:  ANDS.W          R0, R9, #1
92226:  VLDR            S2, [R11,#0x18]
9222A:  VADD.F32        S0, S19, S0
9222E:  VLDR            S4, [R5,#-0xC]
92232:  VADD.F32        S2, S21, S2
92236:  VLDR            S6, [R5,#-8]
9223A:  VLDR            S23, [R5,#-4]
9223E:  VLDR            S25, [R5]
92242:  IT EQ
92244:  VMOVEQ.F32      S27, S30
92248:  IT EQ
9224A:  VMOVEQ.F32      S29, S22
9224E:  LDR.W           R8, [R11,#0x27C]
92252:  VSUB.F32        S0, S0, S19
92256:  LDRD.W          R0, R1, [R8,#0x58]
9225A:  VSUB.F32        S2, S2, S21
9225E:  CMP             R0, R1
92260:  VMLA.F32        S19, S0, S4
92264:  VMLA.F32        S21, S2, S6
92268:  VMOV.F32        S2, S19
9226C:  VMOV.F32        S0, S21
92270:  VMLA.F32        S2, S29, S23
92274:  VMLA.F32        S0, S27, S25
92278:  VSTR            S2, [SP,#0x1B8+var_A0]
9227C:  VSTR            S0, [SP,#0x1B8+var_9C]
92280:  BNE             loc_92300
92282:  CMP             R0, #0
92284:  ADD.W           R4, R0, #1
92288:  ITTE NE
9228A:  ADDNE.W         R1, R0, R0,LSR#31
9228E:  ADDNE.W         R1, R0, R1,ASR#1
92292:  MOVEQ           R1, #8
92294:  CMP             R1, R4
92296:  IT GT
92298:  MOVGT           R4, R1
9229A:  CMP             R0, R4
9229C:  BGE             loc_92300
9229E:  LDR             R0, [SP,#0x1B8+var_F8]
922A0:  LDR             R0, [R0]
922A2:  CMP             R0, #0
922A4:  ITTT NE
922A6:  LDRNE.W         R1, [R0,#0x370]
922AA:  ADDNE           R1, #1
922AC:  STRNE.W         R1, [R0,#0x370]
922B0:  LDR             R2, =(off_117248 - 0x922BC)
922B2:  LSLS            R0, R4, #3
922B4:  LDR.W           R1, [R10]
922B8:  ADD             R2, PC; off_117248
922BA:  LDR             R2, [R2]; sub_9A720
922BC:  BLX             R2; sub_9A720
922BE:  LDR.W           R1, [R8,#0x60]; src
922C2:  MOV             R6, R0
922C4:  CBZ             R1, loc_922F8
922C6:  LDR.W           R0, [R8,#0x58]
922CA:  LSLS            R2, R0, #3; n
922CC:  MOV             R0, R6; dest
922CE:  BLX             j_memcpy
922D2:  LDR.W           R0, [R8,#0x60]
922D6:  CMP             R0, #0
922D8:  ITTTT NE
922DA:  LDRNE           R1, [SP,#0x1B8+var_F8]
922DC:  LDRNE           R1, [R1]
922DE:  CMPNE           R1, #0
922E0:  LDRNE.W         R2, [R1,#0x370]
922E4:  ITT NE
922E6:  SUBNE           R2, #1
922E8:  STRNE.W         R2, [R1,#0x370]
922EC:  LDR             R2, =(off_11724C - 0x922F6)
922EE:  LDR.W           R1, [R10]
922F2:  ADD             R2, PC; off_11724C
922F4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
922F6:  BLX             R2; j_opus_decoder_destroy_0
922F8:  LDR.W           R0, [R8,#0x58]
922FC:  STRD.W          R4, R6, [R8,#0x5C]
92300:  LDR.W           R1, [R8,#0x60]
92304:  VMOV.F32        S0, S19
92308:  VMOV.F32        S2, S21
9230C:  LDRD.W          R2, R3, [SP,#0x1B8+var_A0]
92310:  STR.W           R2, [R1,R0,LSL#3]
92314:  ADD.W           R0, R1, R0,LSL#3
92318:  STR             R3, [R0,#4]
9231A:  LDR.W           R0, [R8,#0x58]
9231E:  VMLA.F32        S0, S27, S23
92322:  VMLA.F32        S2, S29, S25
92326:  ADDS            R0, #1
92328:  STR.W           R0, [R8,#0x58]
9232C:  LDR.W           R4, [R11,#0x27C]
92330:  LDRD.W          R0, R1, [R4,#0x58]
92334:  CMP             R0, R1
92336:  VSTR            S0, [SP,#0x1B8+var_A0]
9233A:  VSTR            S2, [SP,#0x1B8+var_9C]
9233E:  BNE.W           loc_921AE
92342:  CMP             R0, #0
92344:  ADD.W           R6, R0, #1
92348:  ITTE NE
9234A:  ADDNE.W         R1, R0, R0,LSR#31
9234E:  ADDNE.W         R1, R0, R1,ASR#1
92352:  MOVEQ           R1, #8
92354:  CMP             R1, R6
92356:  IT GT
92358:  MOVGT           R6, R1
9235A:  CMP             R0, R6
9235C:  BGE.W           loc_921AE
92360:  LDR             R0, [SP,#0x1B8+var_F8]
92362:  LDR             R0, [R0]
92364:  CMP             R0, #0
92366:  ITTT NE
92368:  LDRNE.W         R1, [R0,#0x370]
9236C:  ADDNE           R1, #1
9236E:  STRNE.W         R1, [R0,#0x370]
92372:  LDR             R2, =(off_117248 - 0x9237E)
92374:  LSLS            R0, R6, #3
92376:  LDR.W           R1, [R10]
9237A:  ADD             R2, PC; off_117248
9237C:  LDR             R2, [R2]; sub_9A720
9237E:  BLX             R2; sub_9A720
92380:  LDR             R1, [R4,#0x60]; src
92382:  MOV             R8, R0
92384:  CMP             R1, #0
92386:  BEQ.W           loc_921A8
9238A:  LDR             R0, [R4,#0x58]
9238C:  LSLS            R2, R0, #3; n
9238E:  MOV             R0, R8; dest
92390:  BLX             j_memcpy
92394:  LDR             R0, [R4,#0x60]
92396:  CMP             R0, #0
92398:  ITTTT NE
9239A:  LDRNE           R1, [SP,#0x1B8+var_F8]
9239C:  LDRNE           R1, [R1]
9239E:  CMPNE           R1, #0
923A0:  LDRNE.W         R2, [R1,#0x370]
923A4:  ITT NE
923A6:  SUBNE           R2, #1
923A8:  STRNE.W         R2, [R1,#0x370]
923AC:  LDR             R2, =(off_11724C - 0x923B6)
923AE:  LDR.W           R1, [R10]
923B2:  ADD             R2, PC; off_11724C
923B4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
923B6:  BLX             R2; j_opus_decoder_destroy_0
923B8:  B               loc_921A8
923BA:  LDR             R0, [SP,#0x1B8+var_F8]
923BC:  MOVW            R1, #0x1518
923C0:  VLDR            S22, [R11,#0x40]
923C4:  VLDR            S28, [R11,#0x3C]
923C8:  LDR             R0, [R0]
923CA:  VCMP.F32        S22, #0.0
923CE:  VMRS            APSR_nzcv, FPSCR
923D2:  ADD.W           R9, R0, R1
923D6:  BLE.W           loc_9250A
923DA:  LDRB.W          R0, [R11,#8]
923DE:  LSLS            R0, R0, #0x18
923E0:  BMI.W           loc_9250A
923E4:  VLDR            S0, [R11,#0xC]
923E8:  MOVS            R1, #0xF
923EA:  VLDR            S4, [R11,#0x14]
923EE:  VLDR            S2, [R11,#0x10]
923F2:  VLDR            S6, [R11,#0x18]
923F6:  VADD.F32        S0, S0, S4
923FA:  VLDR            S4, [R9]
923FE:  VADD.F32        S2, S2, S6
92402:  LDR.W           R0, [R11,#0x27C]; int
92406:  VLDR            S1, =0.0
9240A:  VSTR            S0, [SP,#0x1B8+var_A0]
9240E:  VSTR            S2, [SP,#0x1B8+var_9C]
92412:  VLDR            S8, [R9,#0x108]
92416:  VLDR            S2, [R9,#0x100]
9241A:  VMUL.F32        S4, S8, S4
9241E:  VLDR            S0, [R9,#0xFC]
92422:  VLDR            S6, [R9,#0x104]
92426:  VCMP.F32        S2, S16
9242A:  VMRS            APSR_nzcv, FPSCR
9242E:  VMOV.F32        S8, S2
92432:  VCMP.F32        S0, S16
92436:  IT GT
92438:  VMOVGT.F32      S8, S16
9243C:  VMRS            APSR_nzcv, FPSCR
92440:  VMOV.F32        S10, S0
92444:  VCMP.F32        S6, S16
92448:  IT GT
9244A:  VMOVGT.F32      S10, S16
9244E:  VMRS            APSR_nzcv, FPSCR
92452:  VMOV.F32        S12, S6
92456:  VCMP.F32        S4, S16
9245A:  IT GT
9245C:  VMOVGT.F32      S12, S16
92460:  VMRS            APSR_nzcv, FPSCR
92464:  VMOV.F32        S14, S4
92468:  VCMP.F32        S2, #0.0
9246C:  IT GT
9246E:  VMOVGT.F32      S14, S16
92472:  VMRS            APSR_nzcv, FPSCR
92476:  VCMP.F32        S0, #0.0
9247A:  IT MI
9247C:  VMOVMI.F32      S8, S1
92480:  VMRS            APSR_nzcv, FPSCR
92484:  VCMP.F32        S6, #0.0
92488:  IT MI
9248A:  VMOVMI.F32      S10, S1
9248E:  VMOV.F32        S2, S24
92492:  VMRS            APSR_nzcv, FPSCR
92496:  VCMP.F32        S4, #0.0
9249A:  VLDR            S0, =255.0
9249E:  VMOV.F32        S4, S24
924A2:  IT MI
924A4:  VMOVMI.F32      S12, S1
924A8:  VMOV.F32        S6, S24
924AC:  VMRS            APSR_nzcv, FPSCR
924B0:  IT MI
924B2:  VMOVMI.F32      S14, S1
924B6:  STR             R1, [SP,#0x1B8+var_1B4]; int
924B8:  VSTR            S22, [SP,#0x1B8+var_1B0]
924BC:  VMLA.F32        S2, S8, S0
924C0:  VSTR            S28, [SP,#0x1B8+var_1B8]
924C4:  VMOV.F32        S8, S24
924C8:  VMLA.F32        S4, S10, S0
924CC:  VMLA.F32        S6, S12, S0
924D0:  VMLA.F32        S8, S14, S0
924D4:  VCVT.S32.F32    S0, S2
924D8:  VCVT.S32.F32    S2, S4
924DC:  VCVT.S32.F32    S4, S6
924E0:  VMOV            R1, S0
924E4:  VMOV            R2, S2
924E8:  VCVT.S32.F32    S0, S8
924EC:  ORR.W           R1, R2, R1,LSL#8
924F0:  VMOV            R2, S4
924F4:  ORR.W           R1, R1, R2,LSL#16
924F8:  VMOV            R2, S0
924FC:  ORR.W           R3, R1, R2,LSL#24; int
92500:  ADD.W           R1, R11, #0xC; int
92504:  ADD             R2, SP, #0x1B8+var_A0; int
92506:  BL              sub_9D568
9250A:  LDRSB.W         R5, [R11,#0x83]
9250E:  LDR.W           R10, [SP,#0x1B8+var_104]
92512:  ADDS            R0, R5, #1
92514:  BEQ.W           loc_927D2
92518:  LDR             R0, =(byte_1ACFF0 - 0x9251E)
9251A:  ADD             R0, PC; byte_1ACFF0
9251C:  LDRB            R0, [R0]
9251E:  DMB.W           ISH
92522:  LDR             R6, =(unk_1ACF80 - 0x92528)
92524:  ADD             R6, PC; unk_1ACF80
92526:  LSLS            R0, R0, #0x1F
92528:  BEQ.W           loc_94134
9252C:  CMP             R5, #3; switch 4 cases
9252E:  BHI             def_92554; jumptable 00092554 default case
92530:  VLDR            S4, [R11,#0xC]
92534:  VMOV.F32        S8, #-1.0
92538:  VLDR            S0, [R11,#0x14]
9253C:  VLDR            S30, [R11,#0x10]
92540:  VLDR            S2, [R11,#0x18]
92544:  VADD.F32        S0, S4, S0
92548:  VADD.F32        S2, S30, S2
9254C:  VADD.F32        S20, S0, S8
92550:  VADD.F32        S6, S2, S8
92554:  TBB.W           [PC,R5]; switch jump
92558:  DCB 0x1C; jump table for switch statement
92559:  DCB 0x2C
9255A:  DCB 0x35
9255B:  DCB 0x40
9255C:  DCD unk_53188 - 0x9219A
92560:  DCD dword_1ACF70 - 0x921A2
92564:  DCD off_117248 - 0x922BC
92568:  DCD off_11724C - 0x922F6
9256C:  DCD off_117248 - 0x9237E
92570:  DCD off_11724C - 0x923B6
92574:  DCFS 0.0
92578:  DCFS 255.0
9257C:  DCD byte_1ACFF0 - 0x9251E
92580:  DCD unk_1ACF80 - 0x92528
92584:  DCFS -3.4028e38
92588:  DCFS -0.7854
9258C:  DCFS 0.7854
92590:  VLDR            S2, =0.0; jumptable 00092554 case 0
92594:  VSUB.F32        S0, S20, S28
92598:  VADD.F32        S20, S28, S4
9259C:  VADD.F32        S2, S30, S2
925A0:  B               loc_925EC
925A2:  VLDR            S0, =-3.4028e38; jumptable 00092554 default case
925A6:  VMOV.F32        S30, S20
925AA:  VMOV.F32        S2, S0
925AE:  B               loc_925EC
925B0:  VLDR            S0, =0.0; jumptable 00092554 case 1
925B4:  VSUB.F32        S2, S6, S28
925B8:  VADD.F32        S30, S28, S30
925BC:  VADD.F32        S0, S20, S0
925C0:  B               loc_925EC
925C2:  VLDR            S2, =0.0; jumptable 00092554 case 2
925C6:  VSUB.F32        S0, S20, S28
925CA:  VADD.F32        S20, S28, S4
925CE:  VADD.F32        S2, S6, S2
925D2:  VMOV.F32        S30, S6
925D6:  B               loc_925EC
925D8:  VLDR            S0, =0.0; jumptable 00092554 case 3
925DC:  VSUB.F32        S2, S6, S28
925E0:  VADD.F32        S30, S28, S30
925E4:  VADD.F32        S0, S4, S0
925E8:  VMOV.F32        S20, S4
925EC:  VSUB.F32        S19, S2, S30
925F0:  RSB.W           R1, R5, R5,LSL#3
925F4:  VMOV.F32        S12, S30
925F8:  VLDR            S8, =-0.7854
925FC:  ADD.W           R4, R6, R1,LSL#2
92600:  VSUB.F32        S17, S0, S20
92604:  VMOV            R5, S28
92608:  LDR.W           R0, [R11,#0x27C]; int
9260C:  VLDR            S6, [R4,#0xC]
92610:  ADD             R1, SP, #0x1B8+var_A0; int
92612:  VLDR            S10, [R4,#0x18]
92616:  MOVS            R6, #0xA
92618:  VLDR            S4, [R4,#8]
9261C:  VMLA.F32        S12, S19, S6
92620:  VLDR            S0, [R4]
92624:  VADD.F32        S6, S10, S8
92628:  VLDR            S2, [R4,#4]
9262C:  VMOV.F32        S8, S20
92630:  STR             R6, [SP,#0x1B8+var_1B4]; int
92632:  VSTR            S10, [SP,#0x1B8+var_1B8]
92636:  VMLA.F32        S8, S17, S4
9263A:  VMOV            R3, S6; int
9263E:  VADD.F32        S4, S12, S24
92642:  VADD.F32        S6, S8, S24
92646:  VMLA.F32        S4, S28, S2
9264A:  MOV             R2, R5; int
9264C:  VMLA.F32        S6, S28, S0
92650:  VSTR            S4, [SP,#0x1B8+var_9C]
92654:  VSTR            S6, [SP,#0x1B8+var_A0]
92658:  BL              sub_9CF78
9265C:  VLDR            S4, [R4,#0x10]
92660:  ADD             R1, SP, #0x1B8+var_A0; int
92662:  VLDR            S6, [R4,#0x14]
92666:  MOV             R2, R5; int
92668:  VLDR            S8, [R4,#0x18]
9266C:  VMLA.F32        S20, S17, S4
92670:  VMLA.F32        S30, S19, S6
92674:  VLDR            S0, [R4]
92678:  VMOV            R3, S8; int
9267C:  VLDR            S2, [R4,#4]
92680:  LDR.W           R0, [R11,#0x27C]; int
92684:  STR             R6, [SP,#0x1B8+var_1B4]; float
92686:  VADD.F32        S6, S20, S24
9268A:  VADD.F32        S4, S30, S24
9268E:  VMLA.F32        S6, S28, S0
92692:  VLDR            S0, =0.7854
92696:  VMLA.F32        S4, S28, S2
9269A:  VADD.F32        S0, S8, S0
9269E:  VSTR            S6, [SP,#0x1B8+var_A0]
926A2:  VSTR            S4, [SP,#0x1B8+var_9C]
926A6:  VSTR            S0, [SP,#0x1B8+var_1B8]
926AA:  BL              sub_9CF78
926AE:  LDR             R0, [SP,#0x1B8+var_F8]
926B0:  MOVW            R1, #0x1518
926B4:  VLDR            S1, =0.0
926B8:  MOVS            R4, #0
926BA:  LDR             R0, [R0]
926BC:  ADD             R0, R1
926BE:  VLDR            S0, [R0]
926C2:  VLDR            S8, [R0,#0x288]
926C6:  VLDR            S4, [R0,#0x280]
926CA:  VMUL.F32        S0, S8, S0
926CE:  VLDR            S2, [R0,#0x27C]
926D2:  VLDR            S6, [R0,#0x284]
926D6:  VCMP.F32        S4, S16
926DA:  VMRS            APSR_nzcv, FPSCR
926DE:  VMOV.F32        S8, S4
926E2:  VCMP.F32        S2, S16
926E6:  IT GT
926E8:  VMOVGT.F32      S8, S16
926EC:  VMRS            APSR_nzcv, FPSCR
926F0:  VMOV.F32        S10, S2
926F4:  VCMP.F32        S6, S16
926F8:  IT GT
926FA:  VMOVGT.F32      S10, S16
926FE:  VMRS            APSR_nzcv, FPSCR
92702:  VMOV.F32        S12, S6
92706:  VCMP.F32        S0, S16
9270A:  IT GT
9270C:  VMOVGT.F32      S12, S16
92710:  VMRS            APSR_nzcv, FPSCR
92714:  VCMP.F32        S4, #0.0
92718:  VMOV.F32        S4, #2.0
9271C:  VMOV.F32        S14, S0
92720:  IT GT
92722:  VMOVGT.F32      S14, S16
92726:  VMRS            APSR_nzcv, FPSCR
9272A:  VCMP.F32        S2, #0.0
9272E:  IT MI
92730:  VMOVMI.F32      S8, S1
92734:  VMRS            APSR_nzcv, FPSCR
92738:  VCMP.F32        S6, #0.0
9273C:  IT MI
9273E:  VMOVMI.F32      S10, S1
92742:  VMRS            APSR_nzcv, FPSCR
92746:  VCMP.F32        S0, #0.0
9274A:  IT MI
9274C:  VMOVMI.F32      S12, S1
92750:  VMRS            APSR_nzcv, FPSCR
92754:  VMOV.F32        S0, S24
92758:  VCMP.F32        S22, S4
9275C:  IT MI
9275E:  VMOVMI.F32      S14, S1
92762:  VMOV.F32        S6, S22
92766:  VMRS            APSR_nzcv, FPSCR
9276A:  IT LS
9276C:  VMOVLS.F32      S6, S4
92770:  VMOV.F32        S4, S24
92774:  VLDR            S2, =255.0
92778:  LDR.W           R5, [R11,#0x27C]
9277C:  VMLA.F32        S0, S8, S2
92780:  VMOV.F32        S8, S24
92784:  LDR             R2, [R5,#0x58]; int
92786:  VMLA.F32        S4, S10, S2
9278A:  LDR             R1, [R5,#0x60]; int
9278C:  VMOV.F32        S10, S24
92790:  VSTR            S6, [SP,#0x1B8+var_1B4]
92794:  STR             R4, [SP,#0x1B8+var_1B8]; float
92796:  VCVT.S32.F32    S0, S0
9279A:  VMLA.F32        S8, S12, S2
9279E:  VMLA.F32        S10, S14, S2
927A2:  VCVT.S32.F32    S2, S4
927A6:  VMOV            R0, S0
927AA:  VCVT.S32.F32    S4, S8
927AE:  VCVT.S32.F32    S0, S10
927B2:  VMOV            R3, S2
927B6:  ORR.W           R0, R3, R0,LSL#8
927BA:  VMOV            R3, S4
927BE:  ORR.W           R0, R0, R3,LSL#16
927C2:  VMOV            R3, S0
927C6:  ORR.W           R3, R0, R3,LSL#24; int
927CA:  MOV             R0, R5; int
927CC:  BL              sub_9C2AC
927D0:  STR             R4, [R5,#0x58]
927D2:  VLDR            S0, [R9,#0x44]
927D6:  LDR.W           R9, [SP,#0x1B8+var_108]
927DA:  VCMP.F32        S0, #0.0
927DE:  VMRS            APSR_nzcv, FPSCR
927E2:  BLE.W           loc_9293E
927E6:  LDRB.W          R0, [R11,#8]
927EA:  LSLS            R0, R0, #0x1F
927EC:  BNE.W           loc_9293E
927F0:  LDR             R0, [SP,#0x1B8+var_F8]
927F2:  MOVW            R1, #0x1518
927F6:  VLDR            S12, [R11,#0x274]
927FA:  VLDR            S8, [R11,#0x10]
927FE:  LDR             R0, [R0]
92800:  VLDR            S6, [R11,#0xC]
92804:  ADD             R1, R0
92806:  VLDR            S10, [R11,#0x14]
9280A:  LDR.W           R0, [R11,#0x27C]; int
9280E:  VLDR            S2, [R1,#0x3C]
92812:  VLDR            S4, [R1,#0x3B4]
92816:  VADD.F32        S2, S2, S2
9281A:  VLDR            S3, =0.0
9281E:  VMLA.F32        S2, S4, S12
92822:  VMOV.F32        S4, #-1.0
92826:  VADD.F32        S2, S8, S2
9282A:  VADD.F32        S8, S22, S6
9282E:  VADD.F32        S2, S2, S4
92832:  VADD.F32        S4, S6, S10
92836:  VSTR            S8, [SP,#0x1B8+var_A0]
9283A:  VSTR            S2, [SP,#0x1B8+var_9C]
9283E:  VSUB.F32        S4, S4, S22
92842:  VLDR            S6, [R1]
92846:  VSTR            S2, [SP,#0x1B8+var_B0+4]
9284A:  VSTR            S4, [SP,#0x1B8+var_B0]
9284E:  VLDR            S10, [R1,#0x108]
92852:  VLDR            S4, [R1,#0x100]
92856:  VMUL.F32        S6, S10, S6
9285A:  VLDR            S2, [R1,#0xFC]
9285E:  VLDR            S8, [R1,#0x104]
92862:  VCMP.F32        S4, S16
92866:  VMRS            APSR_nzcv, FPSCR
9286A:  VMOV.F32        S10, S4
9286E:  VCMP.F32        S2, S16
92872:  IT GT
92874:  VMOVGT.F32      S10, S16
92878:  VMRS            APSR_nzcv, FPSCR
9287C:  VMOV.F32        S12, S2
92880:  VCMP.F32        S8, S16
92884:  IT GT
92886:  VMOVGT.F32      S12, S16
9288A:  VMRS            APSR_nzcv, FPSCR
9288E:  VMOV.F32        S14, S8
92892:  VCMP.F32        S6, S16
92896:  IT GT
92898:  VMOVGT.F32      S14, S16
9289C:  VMRS            APSR_nzcv, FPSCR
928A0:  VMOV.F32        S1, S6
928A4:  VCMP.F32        S4, #0.0
928A8:  IT GT
928AA:  VMOVGT.F32      S1, S16
928AE:  VMRS            APSR_nzcv, FPSCR
928B2:  VCMP.F32        S2, #0.0
928B6:  IT MI
928B8:  VMOVMI.F32      S10, S3
928BC:  VMRS            APSR_nzcv, FPSCR
928C0:  VCMP.F32        S8, #0.0
928C4:  IT MI
928C6:  VMOVMI.F32      S12, S3
928CA:  VMOV.F32        S4, S24
928CE:  VMRS            APSR_nzcv, FPSCR
928D2:  VCMP.F32        S6, #0.0
928D6:  VLDR            S2, =255.0
928DA:  VMOV.F32        S6, S24
928DE:  IT MI
928E0:  VMOVMI.F32      S14, S3
928E4:  VMOV.F32        S8, S24
928E8:  VMRS            APSR_nzcv, FPSCR
928EC:  IT MI
928EE:  VMOVMI.F32      S1, S3
928F2:  VSTR            S0, [SP,#0x1B8+var_1B8]
928F6:  VMLA.F32        S4, S10, S2
928FA:  VMOV.F32        S10, S24
928FE:  VMLA.F32        S6, S12, S2
92902:  VMLA.F32        S8, S14, S2
92906:  VMLA.F32        S10, S1, S2
9290A:  VCVT.S32.F32    S2, S4
9290E:  VCVT.S32.F32    S4, S6
92912:  VCVT.S32.F32    S6, S8
92916:  VCVT.S32.F32    S0, S10
9291A:  VMOV            R1, S2
9291E:  VMOV            R2, S4
92922:  ORR.W           R1, R2, R1,LSL#8
92926:  VMOV            R2, S6
9292A:  ORR.W           R1, R1, R2,LSL#16
9292E:  VMOV            R2, S0
92932:  ORR.W           R3, R1, R2,LSL#24; int
92936:  ADD             R1, SP, #0x1B8+var_A0; int
92938:  ADD             R2, SP, #0x1B8+var_B0; int
9293A:  BL              sub_9D43C
9293E:  LDR             R0, [SP,#0x1B8+var_124]
92940:  LDR             R2, [SP,#0x1B8+var_10C]
92942:  LDR             R4, [SP,#0x1B8+var_F4]
92944:  CMP             R0, #0
92946:  LDR             R1, [SP,#0x1B8+var_100]
92948:  ITT NE
9294A:  ADDNE.W         R0, R4, #0x280
9294E:  STRNE.W         R0, [R4,#0x27C]
92952:  LDR.W           R0, [R2,#0xC0]
92956:  LDR.W           R11, [SP,#0x1B8+var_114]
9295A:  CMP             R0, R4
9295C:  BNE.W           loc_92B32
92960:  VLDR            S4, [R4,#0xC]
92964:  VLDR            S8, [R4,#0x14]
92968:  VLDR            S6, [R4,#0x10]
9296C:  VLDR            S10, [R4,#0x18]
92970:  VADD.F32        S14, S4, S8
92974:  VLDR            S8, [R1,#0x3AC]
92978:  VADD.F32        S10, S6, S10
9297C:  VLDR            S0, [R1,#8]
92980:  VSUB.F32        S4, S4, S8
92984:  VLDR            S2, [R4,#0x3C]
92988:  VSUB.F32        S6, S6, S8
9298C:  VCMP.F32        S2, S0
92990:  VMRS            APSR_nzcv, FPSCR
92994:  IT GE
92996:  VMOVGE.F32      S0, S2
9299A:  VLDR            S5, [SP,#0x1B8+var_E0]
9299E:  VLDR            S1, [SP,#0x1B8+var_D8]
929A2:  VADD.F32        S12, S10, S8
929A6:  VLDR            S3, [SP,#0x1B8+var_DC]
929AA:  VADD.F32        S10, S14, S8
929AE:  VLDR            S14, [SP,#0x1B8+var_D4]
929B2:  VCMP.F32        S5, S4
929B6:  VSTR            S6, [SP,#0x1B8+var_9C]
929BA:  VMRS            APSR_nzcv, FPSCR
929BE:  VSTR            S4, [SP,#0x1B8+var_A0]
929C2:  VSTR            S12, [SP,#0x1B8+var_94]
929C6:  VSTR            S10, [SP,#0x1B8+var_98]
929CA:  ITT GE
929CC:  VCMPGE.F32      S3, S6
929D0:  VMRSGE          APSR_nzcv, FPSCR
929D4:  BLT             loc_92A16
929D6:  VCMP.F32        S1, S10
929DA:  VMRS            APSR_nzcv, FPSCR
929DE:  ITT LS
929E0:  VCMPLS.F32      S14, S12
929E4:  VMRSLS          APSR_nzcv, FPSCR
929E8:  BHI             loc_92A16
929EA:  VMOV.F32        S0, #-1.0
929EE:  VSUB.F32        S0, S0, S8
929F2:  VADD.F32        S8, S12, S0
929F6:  VADD.F32        S10, S10, S0
929FA:  VSUB.F32        S6, S6, S0
929FE:  VSUB.F32        S0, S4, S0
92A02:  VSTR            S8, [SP,#0x1B8+var_94]
92A06:  VSTR            S10, [SP,#0x1B8+var_98]
92A0A:  VSTR            S6, [SP,#0x1B8+var_9C]
92A0E:  VSTR            S0, [SP,#0x1B8+var_A0]
92A12:  VMOV.F32        S0, S2
92A16:  LDR             R0, [SP,#0x1B8+var_F8]
92A18:  MOVW            R1, #0x1518
92A1C:  VLDR            S2, [R2,#0xCC]
92A20:  MOV.W           R2, #0xFFFFFFFF
92A24:  VLDR            S3, =0.0
92A28:  LDR             R0, [R0]
92A2A:  ADD             R0, R1
92A2C:  MOVS            R1, #0x40400000
92A32:  VLDR            S4, [R0]
92A36:  VLDR            S12, [R0,#0x388]
92A3A:  VMUL.F32        S2, S2, S4
92A3E:  VLDR            S8, [R0,#0x380]
92A42:  VLDR            S6, [R0,#0x37C]
92A46:  VLDR            S10, [R0,#0x384]
92A4A:  VCMP.F32        S8, S16
92A4E:  VMRS            APSR_nzcv, FPSCR
92A52:  VMOV.F32        S4, S8
92A56:  VCMP.F32        S6, S16
92A5A:  IT GT
92A5C:  VMOVGT.F32      S4, S16
92A60:  VMRS            APSR_nzcv, FPSCR
92A64:  VCMP.F32        S10, S16
92A68:  VMOV.F32        S14, S10
92A6C:  VMUL.F32        S2, S12, S2
92A70:  VMOV.F32        S12, S6
92A74:  IT GT
92A76:  VMOVGT.F32      S12, S16
92A7A:  VMRS            APSR_nzcv, FPSCR
92A7E:  IT GT
92A80:  VMOVGT.F32      S14, S16
92A84:  VCMP.F32        S2, S16
92A88:  VMRS            APSR_nzcv, FPSCR
92A8C:  VMOV.F32        S1, S2
92A90:  VCMP.F32        S8, #0.0
92A94:  IT GT
92A96:  VMOVGT.F32      S1, S16
92A9A:  VMRS            APSR_nzcv, FPSCR
92A9E:  VCMP.F32        S6, #0.0
92AA2:  VMOV.F32        S6, S24
92AA6:  IT MI
92AA8:  VMOVMI.F32      S4, S3
92AAC:  VMRS            APSR_nzcv, FPSCR
92AB0:  VCMP.F32        S10, #0.0
92AB4:  IT MI
92AB6:  VMOVMI.F32      S12, S3
92ABA:  VMRS            APSR_nzcv, FPSCR
92ABE:  VCMP.F32        S2, #0.0
92AC2:  VLDR            S2, =255.0
92AC6:  VMOV.F32        S8, S24
92ACA:  IT MI
92ACC:  VMOVMI.F32      S14, S3
92AD0:  VMRS            APSR_nzcv, FPSCR
92AD4:  IT MI
92AD6:  VMOVMI.F32      S1, S3
92ADA:  VMLA.F32        S6, S4, S2
92ADE:  LDR.W           R0, [R4,#0x27C]; int
92AE2:  VMOV.F32        S4, S24
92AE6:  STRD.W          R2, R1, [SP,#0x1B8+var_1B4]; int
92AEA:  VMLA.F32        S24, S1, S2
92AEE:  VSTR            S0, [SP,#0x1B8+var_1B8]
92AF2:  VMLA.F32        S8, S14, S2
92AF6:  VMLA.F32        S4, S12, S2
92AFA:  VCVT.S32.F32    S2, S6
92AFE:  VCVT.S32.F32    S0, S8
92B02:  VCVT.S32.F32    S4, S4
92B06:  VMOV            R1, S2
92B0A:  VCVT.S32.F32    S2, S24
92B0E:  VMOV            R2, S4
92B12:  ORR.W           R1, R2, R1,LSL#8
92B16:  VMOV            R2, S0
92B1A:  ORR.W           R1, R1, R2,LSL#16
92B1E:  VMOV            R2, S2
92B22:  ORR.W           R3, R1, R2,LSL#24; int
92B26:  ADD             R1, SP, #0x1B8+var_A0; int
92B28:  ADD.W           R2, R1, #8; int
92B2C:  BL              sub_9D568
92B30:  LDR             R4, [SP,#0x1B8+var_F4]
92B32:  VLDR            S2, [R4,#0x2C]
92B36:  VMOV.F32        S8, S2
92B3A:  VCMP.F32        S2, #0.0
92B3E:  VMRS            APSR_nzcv, FPSCR
92B42:  BNE             loc_92B7C
92B44:  MOVW            R0, #0x808
92B48:  AND.W           R0, R0, R9
92B4C:  CMP.W           R0, #0x800
92B50:  IT EQ
92B52:  VLDREQ          S26, [R4,#0x24]
92B56:  VLDR            S4, [R4,#0x34]
92B5A:  VLDR            S0, [R4,#0x14]
92B5E:  VADD.F32        S4, S4, S4
92B62:  VLDR            S6, [R4,#0x70]
92B66:  VSUB.F32        S0, S0, S4
92B6A:  VSUB.F32        S8, S0, S6
92B6E:  VCMP.F32        S26, S8
92B72:  VMRS            APSR_nzcv, FPSCR
92B76:  IT GE
92B78:  VMOVGE.F32      S8, S26
92B7C:  VLDR            S0, [R4,#0x30]
92B80:  VCMP.F32        S0, #0.0
92B84:  VMRS            APSR_nzcv, FPSCR
92B88:  BEQ             loc_92B9C
92B8A:  VLDR            S4, [R4,#0x38]
92B8E:  VMOV.F32        S5, S0
92B92:  B               loc_92BD4
92B94:  DCFS 0.0
92B98:  DCFS 255.0
92B9C:  ANDS.W          R0, R9, #8
92BA0:  ITE EQ
92BA2:  VLDREQ          S6, [R4,#0x28]
92BA6:  VLDRNE          S6, =0.0
92BAA:  VLDR            S4, [R4,#0x38]
92BAE:  VLDR            S10, [R4,#0x18]
92BB2:  VADD.F32        S14, S4, S4
92BB6:  VLDR            S12, [R4,#0x74]
92BBA:  VSUB.F32        S10, S10, S14
92BBE:  VSUB.F32        S10, S10, S18
92BC2:  VSUB.F32        S5, S10, S12
92BC6:  VCMP.F32        S6, S5
92BCA:  VMRS            APSR_nzcv, FPSCR
92BCE:  IT GE
92BD0:  VMOVGE.F32      S5, S6
92BD4:  VLDR            S12, [R4,#0x50]
92BD8:  VLDR            S7, [R4,#0x1E0]
92BDC:  VLDR            S1, [R4,#0x54]
92BE0:  VLDR            S9, [R4,#0x1E4]
92BE4:  VSUB.F32        S7, S7, S12
92BE8:  VLDR            S3, [R4,#0x40]
92BEC:  VSUB.F32        S9, S9, S1
92BF0:  VLDR            S14, [R4,#0x34]
92BF4:  VCMP.F32        S4, S3
92BF8:  VLDR            S10, [R4,#0x10]
92BFC:  VMRS            APSR_nzcv, FPSCR
92C00:  VMOV.F32        S11, S3
92C04:  VCMP.F32        S14, S3
92C08:  VLDR            S6, [R4,#0xC]
92C0C:  IT GE
92C0E:  VMOVGE.F32      S11, S4
92C12:  VMRS            APSR_nzcv, FPSCR
92C16:  IT GE
92C18:  VMOVGE.F32      S3, S14
92C1C:  VSUB.F32        S13, S10, S1
92C20:  VADD.F32        S3, S7, S3
92C24:  VADD.F32        S9, S9, S11
92C28:  VSUB.F32        S7, S6, S12
92C2C:  VCMP.F32        S2, #0.0
92C30:  VMRS            APSR_nzcv, FPSCR
92C34:  VADD.F32        S11, S4, S13
92C38:  VCVT.S32.F32    S3, S3
92C3C:  VCVT.S32.F32    S9, S9
92C40:  VADD.F32        S7, S14, S7
92C44:  VCVT.F32.S32    S13, S3
92C48:  VCVT.F32.S32    S9, S9
92C4C:  VADD.F32        S3, S18, S11
92C50:  VSTR            S7, [R4,#0x220]
92C54:  VADD.F32        S8, S8, S13
92C58:  VSTR            S13, [R4,#0x200]
92C5C:  VADD.F32        S5, S5, S9
92C60:  VSTR            S9, [R4,#0x204]
92C64:  VSTR            S3, [R4,#0x224]
92C68:  VSTR            S8, [R4,#0x208]
92C6C:  VSTR            S5, [R4,#0x20C]
92C70:  BNE             loc_92C86
92C72:  VADD.F32        S2, S14, S14
92C76:  VLDR            S8, [R4,#0x14]
92C7A:  VLDR            S5, [R4,#0x70]
92C7E:  VSUB.F32        S2, S8, S2
92C82:  VSUB.F32        S2, S2, S5
92C86:  VADD.F32        S2, S7, S2
92C8A:  VCMP.F32        S0, #0.0
92C8E:  VMRS            APSR_nzcv, FPSCR
92C92:  VSTR            S2, [R4,#0x228]
92C96:  BNE             loc_92CB0
92C98:  VADD.F32        S0, S4, S4
92C9C:  VLDR            S2, [R4,#0x18]
92CA0:  VLDR            S8, [R4,#0x74]
92CA4:  VSUB.F32        S0, S2, S0
92CA8:  VSUB.F32        S0, S0, S18
92CAC:  VSUB.F32        S0, S0, S8
92CB0:  VLDR            S20, =0.0
92CB4:  VADD.F32        S4, S18, S4
92CB8:  MOVS            R6, #0
92CBA:  LDR.W           R0, [R4,#0x13C]
92CBE:  VADD.F32        S2, S14, S20
92CC2:  STRD.W          R0, R6, [R4,#0x138]
92CC6:  MOVS            R0, #0
92CC8:  STRD.W          R6, R6, [R4,#0x1B8]
92CCC:  STRD.W          R6, R6, [R4,#0xF8]
92CD0:  VMOV.I32        Q8, #0
92CD4:  STRB.W          R6, [R4,#0x142]
92CD8:  ADD.W           R1, R4, #0xE8
92CDC:  MOVS            R3, #0x58 ; 'X'
92CDE:  VADD.F32        S0, S3, S0
92CE2:  VSUB.F32        S4, S4, S1
92CE6:  MOV             R5, R4
92CE8:  VSUB.F32        S2, S2, S12
92CEC:  VADD.F32        S4, S4, S10
92CF0:  VLDR            S10, [R4,#0x5C]
92CF4:  VADD.F32        S8, S2, S20
92CF8:  VCMP.F32        S10, #0.0
92CFC:  VMRS            APSR_nzcv, FPSCR
92D00:  VSTR            S4, [R4,#0xDC]
92D04:  IT GT
92D06:  MOVGT           R0, #1
92D08:  STRB.W          R0, [R4,#0x141]
92D0C:  VADD.F32        S6, S8, S6
92D10:  LDR.W           R0, [R4,#0xDC]
92D14:  VST1.32         {D16-D17}, [R1],R3
92D18:  MOVS            R3, #0x18
92D1A:  STRB            R6, [R1]
92D1C:  ADD.W           R1, R4, #0xC8
92D20:  VSTR            S0, [R4,#0x22C]
92D24:  VSTR            S2, [R4,#0x1B4]
92D28:  VSTR            S6, [R4,#0xD8]
92D2C:  LDR.W           R2, [R4,#0xD8]
92D30:  VMOV            D16, R2, R0
92D34:  VMOV            D17, D16
92D38:  VST1.32         {D16-D17}, [R1],R3
92D3C:  STRD.W          R2, R0, [R1]
92D40:  LDR.W           R0, [R4,#0x150]
92D44:  CMP.W           R0, #0xFFFFFFFF
92D48:  BGT             loc_92DC2
92D4A:  LDR             R0, [SP,#0x1B8+var_F8]
92D4C:  MOV.W           R9, #0
92D50:  LDR             R0, [R0]
92D52:  CMP             R0, #0
92D54:  ITTT NE
92D56:  LDRNE.W         R1, [R0,#0x370]
92D5A:  ADDNE           R1, #1
92D5C:  STRNE.W         R1, [R0,#0x370]
92D60:  LDR             R5, =(dword_1ACF70 - 0x92D68)
92D62:  LDR             R0, =(off_117248 - 0x92D6A)
92D64:  ADD             R5, PC; dword_1ACF70
92D66:  ADD             R0, PC; off_117248
92D68:  LDR             R1, [R5]
92D6A:  LDR             R2, [R0]; sub_9A720
92D6C:  MOVS            R0, #0
92D6E:  BLX             R2; sub_9A720
92D70:  LDR.W           R1, [R4,#0x154]; src
92D74:  MOV             R8, R0
92D76:  CBZ             R1, loc_92DBC
92D78:  B               loc_92D84
92D7A:  ALIGN 4
92D7C:  DCD dword_1ACF70 - 0x92D68
92D80:  DCD off_117248 - 0x92D6A
92D84:  LDR.W           R0, [R4,#0x14C]
92D88:  LSLS            R2, R0, #2; n
92D8A:  MOV             R0, R8; dest
92D8C:  BLX             j_memcpy
92D90:  LDR.W           R0, [R4,#0x154]
92D94:  CMP             R0, #0
92D96:  ITTTT NE
92D98:  LDRNE           R1, [SP,#0x1B8+var_F8]
92D9A:  LDRNE           R1, [R1]
92D9C:  CMPNE           R1, #0
92D9E:  LDRNE.W         R2, [R1,#0x370]
92DA2:  ITT NE
92DA4:  SUBNE           R2, #1
92DA6:  STRNE.W         R2, [R1,#0x370]
92DAA:  LDR             R2, =(off_11724C - 0x92DB2)
92DAC:  LDR             R1, [R5]
92DAE:  ADD             R2, PC; off_11724C
92DB0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
92DB2:  BLX             R2; j_opus_decoder_destroy_0
92DB4:  B               loc_92DBC
92DB6:  ALIGN 4
92DB8:  DCD off_11724C - 0x92DB2
92DBC:  LDR             R5, [SP,#0x1B8+var_F4]
92DBE:  STRD.W          R9, R8, [R4,#0x150]
92DC2:  MOVS            R0, #1
92DC4:  LDR             R1, [SP,#0x1B8+var_118]
92DC6:  STR.W           R0, [R5,#0x15C]
92DCA:  MOVW            R9, #0
92DCE:  STR.W           R6, [R4,#0x14C]
92DD2:  CMP             R1, #0
92DD4:  ITT NE
92DD6:  LDRNE.W         R0, [R1,#0x15C]
92DDA:  LDRNE.W         R6, [R1,#0x16C]
92DDE:  LDR.W           R1, [R5,#0x17C]
92DE2:  MOV.W           R3, #0xFFFFFFFF
92DE6:  LDR.W           R2, [R5,#0x234]
92DEA:  MOVT            R9, #0xBF80
92DEE:  STRD.W          R3, R6, [R5,#0x168]
92DF2:  CMP.W           R1, #0xFFFFFFFF
92DF6:  MOV             R6, R5
92DF8:  STRD.W          R0, R3, [R5,#0x160]
92DFC:  STRD.W          R2, R9, [R5,#0x170]
92E00:  BGT             loc_92E66
92E02:  LDR             R0, [SP,#0x1B8+var_F8]
92E04:  MOV.W           R8, #0
92E08:  LDR             R0, [R0]
92E0A:  CMP             R0, #0
92E0C:  ITTT NE
92E0E:  LDRNE.W         R1, [R0,#0x370]
92E12:  ADDNE           R1, #1
92E14:  STRNE.W         R1, [R0,#0x370]
92E18:  LDR             R6, =(dword_1ACF70 - 0x92E20)
92E1A:  LDR             R0, =(off_117248 - 0x92E22)
92E1C:  ADD             R6, PC; dword_1ACF70
92E1E:  ADD             R0, PC; off_117248
92E20:  LDR             R1, [R6]
92E22:  LDR             R2, [R0]; sub_9A720
92E24:  MOVS            R0, #0
92E26:  BLX             R2; sub_9A720
92E28:  LDR.W           R1, [R5,#0x180]; src
92E2C:  MOV             R4, R0
92E2E:  CBZ             R1, loc_92E60
92E30:  LDR.W           R0, [R5,#0x178]
92E34:  LSLS            R2, R0, #2; n
92E36:  MOV             R0, R4; dest
92E38:  BLX             j_memcpy
92E3C:  LDR.W           R0, [R5,#0x180]
92E40:  CMP             R0, #0
92E42:  ITTTT NE
92E44:  LDRNE           R1, [SP,#0x1B8+var_F8]
92E46:  LDRNE           R1, [R1]
92E48:  CMPNE           R1, #0
92E4A:  LDRNE.W         R2, [R1,#0x370]
92E4E:  ITT NE
92E50:  SUBNE           R2, #1
92E52:  STRNE.W         R2, [R1,#0x370]
92E56:  LDR             R2, =(off_11724C - 0x92E5E)
92E58:  LDR             R1, [R6]
92E5A:  ADD             R2, PC; off_11724C
92E5C:  LDR             R2, [R2]; j_opus_decoder_destroy_0
92E5E:  BLX             R2; j_opus_decoder_destroy_0
92E60:  LDR             R6, [SP,#0x1B8+var_F4]
92E62:  STRD.W          R8, R4, [R5,#0x17C]
92E66:  LDR.W           R0, [R6,#0x188]
92E6A:  MOVS            R4, #0
92E6C:  STR.W           R4, [R5,#0x178]
92E70:  MOV             R5, R6
92E72:  CMP.W           R0, #0xFFFFFFFF
92E76:  BGT             loc_92EE0
92E78:  LDR             R0, [SP,#0x1B8+var_F8]
92E7A:  MOV.W           R10, #0
92E7E:  LDR             R0, [R0]
92E80:  CMP             R0, #0
92E82:  ITTT NE
92E84:  LDRNE.W         R1, [R0,#0x370]
92E88:  ADDNE           R1, #1
92E8A:  STRNE.W         R1, [R0,#0x370]
92E8E:  LDR             R5, =(dword_1ACF70 - 0x92E96)
92E90:  LDR             R0, =(off_117248 - 0x92E98)
92E92:  ADD             R5, PC; dword_1ACF70
92E94:  ADD             R0, PC; off_117248
92E96:  LDR             R1, [R5]
92E98:  LDR             R2, [R0]; sub_9A720
92E9A:  MOVS            R0, #0
92E9C:  BLX             R2; sub_9A720
92E9E:  LDR.W           R1, [R6,#0x18C]; src
92EA2:  MOV             R8, R0
92EA4:  CBZ             R1, loc_92ED6
92EA6:  LDR.W           R0, [R6,#0x184]
92EAA:  LSLS            R2, R0, #2; n
92EAC:  MOV             R0, R8; dest
92EAE:  BLX             j_memcpy
92EB2:  LDR.W           R0, [R6,#0x18C]
92EB6:  CMP             R0, #0
92EB8:  ITTTT NE
92EBA:  LDRNE           R1, [SP,#0x1B8+var_F8]
92EBC:  LDRNE           R1, [R1]
92EBE:  CMPNE           R1, #0
92EC0:  LDRNE.W         R2, [R1,#0x370]
92EC4:  ITT NE
92EC6:  SUBNE           R2, #1
92EC8:  STRNE.W         R2, [R1,#0x370]
92ECC:  LDR             R2, =(off_11724C - 0x92ED4)
92ECE:  LDR             R1, [R5]
92ED0:  ADD             R2, PC; off_11724C
92ED2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
92ED4:  BLX             R2; j_opus_decoder_destroy_0
92ED6:  STRD.W          R10, R8, [R6,#0x188]
92EDA:  LDR             R5, [SP,#0x1B8+var_F4]
92EDC:  LDR.W           R10, [SP,#0x1B8+var_104]
92EE0:  LDR.W           R0, [R5,#0x194]
92EE4:  STR.W           R4, [R6,#0x184]
92EE8:  MOV             R4, R5
92EEA:  CMP.W           R0, #0xFFFFFFFF
92EEE:  BGT             loc_92F54
92EF0:  LDR             R0, [SP,#0x1B8+var_F8]
92EF2:  MOV.W           R8, #0
92EF6:  LDR             R0, [R0]
92EF8:  CMP             R0, #0
92EFA:  ITTT NE
92EFC:  LDRNE.W         R1, [R0,#0x370]
92F00:  ADDNE           R1, #1
92F02:  STRNE.W         R1, [R0,#0x370]
92F06:  LDR             R4, =(dword_1ACF70 - 0x92F0E)
92F08:  LDR             R0, =(off_117248 - 0x92F10)
92F0A:  ADD             R4, PC; dword_1ACF70
92F0C:  ADD             R0, PC; off_117248
92F0E:  LDR             R1, [R4]
92F10:  LDR             R2, [R0]; sub_9A720
92F12:  MOVS            R0, #0
92F14:  BLX             R2; sub_9A720
92F16:  LDR.W           R1, [R5,#0x198]; src
92F1A:  MOV             R6, R0
92F1C:  CBZ             R1, loc_92F4E
92F1E:  LDR.W           R0, [R5,#0x190]
92F22:  LSLS            R2, R0, #2; n
92F24:  MOV             R0, R6; dest
92F26:  BLX             j_memcpy
92F2A:  LDR.W           R0, [R5,#0x198]
92F2E:  CMP             R0, #0
92F30:  ITTTT NE
92F32:  LDRNE           R1, [SP,#0x1B8+var_F8]
92F34:  LDRNE           R1, [R1]
92F36:  CMPNE           R1, #0
92F38:  LDRNE.W         R2, [R1,#0x370]
92F3C:  ITT NE
92F3E:  SUBNE           R2, #1
92F40:  STRNE.W         R2, [R1,#0x370]
92F44:  LDR             R2, =(off_11724C - 0x92F4C)
92F46:  LDR             R1, [R4]
92F48:  ADD             R2, PC; off_11724C
92F4A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
92F4C:  BLX             R2; j_opus_decoder_destroy_0
92F4E:  LDR             R4, [SP,#0x1B8+var_F4]
92F50:  STRD.W          R8, R6, [R5,#0x194]
92F54:  MOVS            R6, #0
92F56:  ADD.W           R1, R4, #0x25C
92F5A:  STR.W           R6, [R4,#0x1C0]
92F5E:  STR.W           R6, [R5,#0x190]
92F62:  LDR.W           R0, [R4,#0x1A0]
92F66:  STR.W           R1, [R4,#0x158]
92F6A:  CMP.W           R0, #0xFFFFFFFF
92F6E:  MOV             R0, R4
92F70:  STRD.W          R6, R6, [R4,#0x100]
92F74:  BGT             loc_92FE8
92F76:  LDR             R0, [SP,#0x1B8+var_F8]
92F78:  MOV.W           R8, #0
92F7C:  LDR             R0, [R0]
92F7E:  CMP             R0, #0
92F80:  ITTT NE
92F82:  LDRNE.W         R1, [R0,#0x370]
92F86:  ADDNE           R1, #1
92F88:  STRNE.W         R1, [R0,#0x370]
92F8C:  LDR             R1, =(dword_1ACF70 - 0x92F94)
92F8E:  LDR             R0, =(off_117248 - 0x92F96)
92F90:  ADD             R1, PC; dword_1ACF70
92F92:  ADD             R0, PC; off_117248
92F94:  MOV             R9, R1
92F96:  LDR             R1, [R1]
92F98:  LDR             R2, [R0]; sub_9A720
92F9A:  MOVS            R0, #0
92F9C:  BLX             R2; sub_9A720
92F9E:  LDR.W           R1, [R4,#0x1A4]; src
92FA2:  MOV             R5, R0
92FA4:  CBZ             R1, loc_92FDA
92FA6:  LDR.W           R0, [R4,#0x19C]
92FAA:  MOVS            R2, #0x2C ; ','
92FAC:  MULS            R2, R0; n
92FAE:  MOV             R0, R5; dest
92FB0:  BLX             j_memcpy
92FB4:  LDR.W           R0, [R4,#0x1A4]
92FB8:  CMP             R0, #0
92FBA:  ITTTT NE
92FBC:  LDRNE           R1, [SP,#0x1B8+var_F8]
92FBE:  LDRNE           R1, [R1]
92FC0:  CMPNE           R1, #0
92FC2:  LDRNE.W         R2, [R1,#0x370]
92FC6:  ITT NE
92FC8:  SUBNE           R2, #1
92FCA:  STRNE.W         R2, [R1,#0x370]
92FCE:  LDR             R2, =(off_11724C - 0x92FD8)
92FD0:  LDR.W           R1, [R9]
92FD4:  ADD             R2, PC; off_11724C
92FD6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
92FD8:  BLX             R2; j_opus_decoder_destroy_0
92FDA:  LDR             R0, [SP,#0x1B8+var_F4]
92FDC:  MOV             R9, #0xBF800000
92FE4:  STRD.W          R8, R5, [R4,#0x1A0]
92FE8:  LDR             R1, [SP,#0x1B8+var_100]
92FEA:  ADD.W           R0, R0, #0x238
92FEE:  LDR             R3, [SP,#0x1B8+var_12C]
92FF0:  LDR             R2, [R1,#0x44]
92FF2:  MOVS            R1, #3
92FF4:  STR.W           R6, [R4,#0x19C]
92FF8:  BL              sub_AEA50
92FFC:  LDR             R0, [SP,#0x1B8+var_110]
92FFE:  CMP             R0, #0
93000:  LDR             R0, [SP,#0x1B8+var_118]
93002:  BEQ             loc_930B2
93004:  LDR             R4, [SP,#0x1B8+var_F4]
93006:  LDR.W           R1, [R0,#0x16C]
9300A:  LDR.W           R0, [R4,#0x16C]
9300E:  CMP             R0, R1
93010:  BEQ             loc_930B2
93012:  LDRD.W          R0, R2, [R4,#0x178]
93016:  STR.W           R1, [R4,#0x16C]
9301A:  CMP             R0, R2
9301C:  BNE             loc_9309C
9301E:  CMP             R0, #0
93020:  ADD.W           R6, R0, #1
93024:  ITTE NE
93026:  ADDNE.W         R1, R0, R0,LSR#31
9302A:  ADDNE.W         R1, R0, R1,ASR#1
9302E:  MOVEQ           R1, #8
93030:  CMP             R1, R6
93032:  IT GT
93034:  MOVGT           R6, R1
93036:  CMP             R0, R6
93038:  BGE             loc_9309C
9303A:  LDR             R0, [SP,#0x1B8+var_F8]
9303C:  LDR             R1, [R0]
9303E:  LSLS            R0, R6, #2
93040:  CMP             R1, #0
93042:  ITTT NE
93044:  LDRNE.W         R2, [R1,#0x370]
93048:  ADDNE           R2, #1
9304A:  STRNE.W         R2, [R1,#0x370]
9304E:  LDR             R5, =(dword_1ACF70 - 0x93056)
93050:  LDR             R2, =(off_117248 - 0x93058)
93052:  ADD             R5, PC; dword_1ACF70
93054:  ADD             R2, PC; off_117248
93056:  LDR             R1, [R5]
93058:  LDR             R2, [R2]; sub_9A720
9305A:  BLX             R2; sub_9A720
9305C:  LDR.W           R1, [R4,#0x180]; src
93060:  MOV             R8, R0
93062:  CBZ             R1, loc_93094
93064:  LDR.W           R0, [R4,#0x178]
93068:  LSLS            R2, R0, #2; n
9306A:  MOV             R0, R8; dest
9306C:  BLX             j_memcpy
93070:  LDR.W           R0, [R4,#0x180]
93074:  CMP             R0, #0
93076:  ITTTT NE
93078:  LDRNE           R1, [SP,#0x1B8+var_F8]
9307A:  LDRNE           R1, [R1]
9307C:  CMPNE           R1, #0
9307E:  LDRNE.W         R2, [R1,#0x370]
93082:  ITT NE
93084:  SUBNE           R2, #1
93086:  STRNE.W         R2, [R1,#0x370]
9308A:  LDR             R2, =(off_11724C - 0x93092)
9308C:  LDR             R1, [R5]
9308E:  ADD             R2, PC; off_11724C
93090:  LDR             R2, [R2]; j_opus_decoder_destroy_0
93092:  BLX             R2; j_opus_decoder_destroy_0
93094:  LDR.W           R0, [R4,#0x178]
93098:  STRD.W          R6, R8, [R4,#0x17C]
9309C:  LDR.W           R2, [R4,#0x180]
930A0:  LDR.W           R1, [R4,#0x16C]
930A4:  STR.W           R1, [R2,R0,LSL#2]
930A8:  LDR.W           R0, [R4,#0x178]
930AC:  ADDS            R0, #1
930AE:  STR.W           R0, [R4,#0x178]
930B2:  LDR             R5, [SP,#0x1B8+var_F4]
930B4:  LDR.W           R0, [R5,#0x90]
930B8:  CMP             R0, #1
930BA:  ITT GE
930BC:  SUBGE           R0, #1
930BE:  STRGE.W         R0, [R5,#0x90]
930C2:  LDR.W           R0, [R5,#0x94]
930C6:  CMP             R0, #1
930C8:  ITT GE
930CA:  SUBGE           R0, #1
930CC:  STRGE.W         R0, [R5,#0x94]
930D0:  LDR             R0, [SP,#0x1B8+var_108]
930D2:  AND.W           R4, R0, #1
930D6:  LDR             R0, [SP,#0x1B8+var_138]
930D8:  CBZ             R0, loc_93134
930DA:  MOV             R0, R5
930DC:  BL              sub_8C628
930E0:  LDRD.W          R0, R5, [SP,#0x1B8+var_F8]
930E4:  MOVW            R2, #0x1AB4
930E8:  LDR             R1, [R5,#8]
930EA:  LDR             R0, [R0]
930EC:  ADD             R0, R2
930EE:  LSLS            R2, R1, #0xD
930F0:  BMI.W           loc_93220
930F4:  AND.W           R1, R1, #0x5000000
930F8:  CMP.W           R1, #0x1000000
930FC:  BNE             loc_93108
930FE:  LDR.W           R1, [R5,#0x30C]
93102:  CMP             R1, #0
93104:  BNE.W           loc_93224
93108:  ADR             R1, dword_93210
9310A:  LDR             R2, [R0,#0x58]
9310C:  VLD1.64         {D16-D17}, [R1@128]
93110:  MOVS            R3, #0
93112:  MOVW            R6, #0x101
93116:  LDR             R1, [R0]
93118:  STR             R3, [R0,#4]
9311A:  ADD.W           R1, R1, R2,LSL#2
9311E:  STRB.W          R3, [R0,#0x66]
93122:  STRH.W          R6, [R0,#0x64]
93126:  STR.W           R3, [R1,#0x30C]
9312A:  ADD.W           R1, R0, #0x6C ; 'l'
9312E:  STR             R3, [R0,#0x68]
93130:  VST1.64         {D16-D17}, [R1]
93134:  CMP             R4, #0
93136:  BNE             loc_9322C
93138:  LDR             R2, [SP,#0x1B8+var_F8]
9313A:  MOVS            R1, #2
9313C:  MOVS            R3, #1
9313E:  MOVW            R0, #0x18C8
93142:  STRD.W          R3, R1, [R5,#0x130]
93146:  MOVW            R1, #0x1550
9314A:  LDR             R2, [R2]
9314C:  LDR.W           R10, [R5,#0x16C]
93150:  ADD             R1, R2
93152:  ADD             R0, R2
93154:  LDR.W           R8, [R5,#8]
93158:  VLDR            S18, [R1]
9315C:  VLDR            S0, [R0]
93160:  ORR.W           R0, R10, #0x10
93164:  VMOV.F32        S22, S18
93168:  STR.W           R0, [R5,#0x16C]
9316C:  MOVS            R0, #0
9316E:  LDR             R1, [SP,#0x1B8+var_134]
93170:  STRD.W          R0, R0, [SP,#0x1B8+var_80]
93174:  STRD.W          R0, R0, [SP,#0x1B8+var_88]
93178:  MOVW            R0, #0x1534
9317C:  ADD.W           R11, R2, R0
93180:  AND.W           R0, R8, #0x20 ; ' '
93184:  CBZ             R1, loc_9319E
93186:  VADD.F32        S22, S18, S0
9318A:  VLDR            S2, [SP,#0x1B8+var_E8]
9318E:  LDR             R1, [SP,#0x1B8+var_EC]
93190:  STR             R1, [SP,#0x1B8+var_7C]
93192:  VSUB.F32        S2, S2, S22
93196:  VSUB.F32        S2, S2, S18
9319A:  VSTR            S2, [SP,#0x1B8+var_80]
9319E:  CMP             R0, #0
931A0:  BNE.W           loc_932C0
931A4:  LDR.W           R0, [R11,#8]
931A8:  CMP             R0, #0
931AA:  BEQ             loc_93232
931AC:  CMP             R0, #1
931AE:  BNE             loc_9324A
931B0:  VADD.F32        S22, S0, S22
931B4:  VLDR            S0, [SP,#0x1B8+var_E8]
931B8:  LDR             R0, [SP,#0x1B8+var_EC]
931BA:  STR             R0, [SP,#0x1B8+var_84]
931BC:  VSUB.F32        S0, S0, S22
931C0:  VSUB.F32        S0, S0, S18
931C4:  VSTR            S0, [SP,#0x1B8+var_88]
931C8:  B               loc_9324A
931CA:  ALIGN 4
931CC:  DCD dword_1ACF70 - 0x92E20
931D0:  DCD off_117248 - 0x92E22
931D4:  DCD off_11724C - 0x92E5E
931D8:  DCD dword_1ACF70 - 0x92E96
931DC:  DCD off_117248 - 0x92E98
931E0:  DCD off_11724C - 0x92ED4
931E4:  DCD dword_1ACF70 - 0x92F0E
931E8:  DCD off_117248 - 0x92F10
931EC:  DCD off_11724C - 0x92F4C
931F0:  DCD dword_1ACF70 - 0x92F94
931F4:  DCD off_117248 - 0x92F96
931F8:  DCD off_11724C - 0x92FD8
931FC:  DCD dword_1ACF70 - 0x93056
93200:  DCD off_117248 - 0x93058
93204:  DCD off_11724C - 0x93092
93208:  ALIGN 0x10
93210:  DCD 0x7F7FFFFF, 0x7F7FFFFF, 0xFF7FFFFF, 0xFF7FFFFF
93220:  LDR.W           R1, [R5,#0x30C]
93224:  STR             R1, [R0,#4]
93226:  CMP             R4, #0
93228:  BEQ.W           loc_93138
9322C:  LDR.W           R9, [SP,#0x1B8+var_108]
93230:  B               loc_936B6
93232:  VLDR            S2, [SP,#0x1B8+var_F0]
93236:  LDR             R0, [SP,#0x1B8+var_EC]
93238:  VADD.F32        S2, S18, S2
9323C:  STR             R0, [SP,#0x1B8+var_84]
9323E:  VSUB.F32        S2, S2, S18
93242:  VADD.F32        S18, S18, S0
93246:  VSTR            S2, [SP,#0x1B8+var_88]
9324A:  LDR.W           R0, [R5,#0x1C4]
9324E:  MOVS            R3, #0x23 ; '#'
93250:  LDR.W           R1, [R5,#0x1CC]
93254:  LDR             R2, =(aCollapse - 0x9325E); "#COLLAPSE" ...
93256:  ADD.W           R0, R1, R0,LSL#2
9325A:  ADD             R2, PC; "#COLLAPSE"
9325C:  LDR.W           R1, [R0,#-4]
93260:  ADDS            R0, R2, #1
93262:  MVNS            R1, R1
93264:  MOV             R2, R1
93266:  B               loc_9327A
93268:  UXTB            R6, R2
9326A:  ADDS            R0, #1
9326C:  EORS            R6, R4
9326E:  LDR             R4, [SP,#0x1B8+var_FC]
93270:  LDR.W           R6, [R4,R6,LSL#2]
93274:  EOR.W           R2, R6, R2,LSR#8
93278:  CBZ             R3, loc_93294
9327A:  MOV             R4, R3
9327C:  LDRB            R3, [R0]; "COLLAPSE"
9327E:  CMP             R4, #0x23 ; '#'
93280:  IT EQ
93282:  CMPEQ           R3, #0x23 ; '#'
93284:  BNE             loc_93268
93286:  LDRB            R3, [R0,#1]; "OLLAPSE"
93288:  CMP             R3, #0x23 ; '#'
9328A:  MOV.W           R3, #0x23 ; '#'
9328E:  IT EQ
93290:  MOVEQ           R2, R1
93292:  B               loc_93268
93294:  LDR.W           R1, [R11,#0x49C]
93298:  MVNS            R0, R2
9329A:  CMP             R1, R0
9329C:  IT EQ
9329E:  STREQ.W         R0, [R11,#0x4A0]
932A2:  LDR.W           R1, [R11,#0x4C8]
932A6:  CMP             R1, R0
932A8:  ITT EQ
932AA:  MOVEQ           R1, #1
932AC:  STRBEQ.W        R1, [R11,#0x4CC]
932B0:  ADD             R1, SP, #0x1B8+var_88
932B2:  BL              sub_A6BA8
932B6:  CMP             R0, #0
932B8:  ITT NE
932BA:  MOVNE           R0, #1
932BC:  STRBNE.W        R0, [R5,#0x7E]
932C0:  LDR             R0, [SP,#0x1B8+var_134]
932C2:  CBZ             R0, loc_9333E
932C4:  LDR.W           R0, [R5,#0x1C4]
932C8:  MOVS            R3, #0x23 ; '#'
932CA:  LDR.W           R1, [R5,#0x1CC]
932CE:  LDR             R2, =(aClose_0 - 0x932D8); "#CLOSE" ...
932D0:  ADD.W           R0, R1, R0,LSL#2
932D4:  ADD             R2, PC; "#CLOSE"
932D6:  LDR.W           R1, [R0,#-4]
932DA:  ADDS            R0, R2, #1
932DC:  MVNS            R1, R1
932DE:  MOV             R2, R1
932E0:  B               loc_932F4
932E2:  UXTB            R6, R2
932E4:  ADDS            R0, #1
932E6:  EORS            R6, R4
932E8:  LDR             R4, [SP,#0x1B8+var_FC]
932EA:  LDR.W           R6, [R4,R6,LSL#2]
932EE:  EOR.W           R2, R6, R2,LSR#8
932F2:  CBZ             R3, loc_9330E
932F4:  MOV             R4, R3
932F6:  LDRB            R3, [R0]; "CLOSE"
932F8:  CMP             R4, #0x23 ; '#'
932FA:  IT EQ
932FC:  CMPEQ           R3, #0x23 ; '#'
932FE:  BNE             loc_932E2
93300:  LDRB            R3, [R0,#1]; "LOSE"
93302:  CMP             R3, #0x23 ; '#'
93304:  MOV.W           R3, #0x23 ; '#'
93308:  IT EQ
9330A:  MOVEQ           R2, R1
9330C:  B               loc_932E2
9330E:  LDR             R0, [SP,#0x1B8+var_F8]
93310:  MOVW            R3, #0x19D0
93314:  LDR             R0, [R0]
93316:  ADDS            R1, R0, R3
93318:  LDR             R3, [R0,R3]
9331A:  MVNS            R0, R2
9331C:  CMP             R3, R0
9331E:  IT EQ
93320:  STREQ           R0, [R1,#4]
93322:  LDR             R2, [R1,#0x2C]
93324:  CMP             R2, R0
93326:  ITT EQ
93328:  MOVEQ           R2, #1
9332A:  STRBEQ.W        R2, [R1,#0x30]
9332E:  ADD             R1, SP, #0x1B8+var_80
93330:  BL              sub_A69B8
93334:  CMP             R0, #0
93336:  ITTT NE
93338:  MOVNE           R0, #0
9333A:  LDRNE           R1, [SP,#0x1B8+var_134]
9333C:  STRBNE          R0, [R1]
9333E:  ANDS.W          R8, R8, #0x100000
93342:  MOV.W           R0, #0
93346:  MOV.W           R1, #1
9334A:  STR.W           R10, [R5,#0x16C]
9334E:  STRD.W          R0, R1, [R5,#0x130]
93352:  BEQ             loc_93390
93354:  LDR             R1, [SP,#0x1B8+var_F8]
93356:  MOVW            R3, #0x18C4
9335A:  LDR             R2, [R1]
9335C:  LDR             R1, [R2,R3]; int
9335E:  ADD             R2, R3
93360:  LDR             R2, [R2,#4]; int
93362:  LDR             R3, =(byte_4CC4A - 0x9336E)
93364:  STRD.W          R0, R0, [SP,#0x1B8+var_1B0]; int
93368:  ADD             R0, SP, #0x1B8+var_A0; int
9336A:  ADD             R3, PC; byte_4CC4A
9336C:  STRD.W          R9, R3, [SP,#0x1B8+var_1B8]; float
93370:  MOV             R3, #0x7F7FFFFF; int
93378:  BL              sub_A3980
9337C:  VLDR            S0, =0.95
93380:  VLDR            S2, [SP,#0x1B8+var_A0]
93384:  VADD.F32        S0, S2, S0
93388:  VCVT.S32.F32    S0, S0
9338C:  VCVT.F32.S32    S20, S0
93390:  LDR             R0, [SP,#0x1B8+var_F8]
93392:  MOVW            R1, #0x18C4
93396:  LDR             R4, [SP,#0x1B8+s1]
93398:  LDR.W           R10, [SP,#0x1B8+var_104]
9339C:  LDR             R0, [R0]
9339E:  ADDS            R5, R4, #1
933A0:  ADD             R0, R1
933A2:  BEQ             loc_933C0
933A4:  MOV             R3, R4
933A6:  B               loc_933B4
933A8:  LDRB            R1, [R3,#1]
933AA:  CMP             R1, #0x23 ; '#'
933AC:  BEQ             loc_933CE
933AE:  ADDS            R3, #1
933B0:  ADDS            R1, R3, #1
933B2:  BEQ             loc_933CA
933B4:  LDRB            R1, [R3]
933B6:  CMP             R1, #0x23 ; '#'
933B8:  BEQ             loc_933A8
933BA:  CMP             R1, #0
933BC:  BNE             loc_933AE
933BE:  B               loc_933CE
933C0:  VLDR            S0, =0.0
933C4:  VLDR            S2, [R0,#4]
933C8:  B               loc_93412
933CA:  MOV.W           R3, #0xFFFFFFFF
933CE:  VLDR            S2, [R0,#4]
933D2:  CMP             R3, R4
933D4:  BEQ             loc_9340E
933D6:  VMOV            R2, S2; int
933DA:  LDR             R1, [R0]; int
933DC:  MOVS            R0, #0
933DE:  STRD.W          R9, R4, [SP,#0x1B8+var_1B8]; float
933E2:  STRD.W          R3, R0, [SP,#0x1B8+var_1B0]; int
933E6:  MOVW            R3, #0xFFFF
933EA:  ADD             R0, SP, #0x1B8+var_A0; int
933EC:  MOVT            R3, #0x7F7F; int
933F0:  BL              sub_A3980
933F4:  VLDR            S0, =0.95
933F8:  VLDR            S4, [SP,#0x1B8+var_A0]
933FC:  VLDR            S2, [SP,#0x1B8+var_9C]
93400:  VADD.F32        S0, S4, S0
93404:  VCVT.S32.F32    S0, S0
93408:  VCVT.F32.S32    S0, S0
9340C:  B               loc_93412
9340E:  VLDR            S0, =0.0
93412:  VADD.F32        S0, S20, S0
93416:  VLDR            S24, =0.0
9341A:  LDR.W           R9, [SP,#0x1B8+var_108]
9341E:  VADD.F32        S4, S2, S24
93422:  VSTR            S0, [SP,#0x1B8+var_90]
93426:  VLDR            S2, [R11,#0x1C]
9342A:  VSTR            S4, [SP,#0x1B8+var_8C]
9342E:  VCMP.F32        S18, S2
93432:  VMRS            APSR_nzcv, FPSCR
93436:  VCMP.F32        S22, S2
9343A:  ITT GT
9343C:  VLDRGT          S4, [R11,#0x34]
93440:  VADDGT.F32      S18, S18, S4
93444:  VMRS            APSR_nzcv, FPSCR
93448:  ITT GT
9344A:  VLDRGT          S2, [R11,#0x34]
9344E:  VADDGT.F32      S22, S22, S2
93452:  VLDR            S2, [R11]
93456:  VCMP.F32        S2, #0.0
9345A:  VMRS            APSR_nzcv, FPSCR
9345E:  BLE             loc_93504
93460:  VCMP.F32        S2, S16
93464:  VMRS            APSR_nzcv, FPSCR
93468:  BPL             loc_93504
9346A:  VMOV.F32        S4, #-0.5
9346E:  VCMP.F32        S18, S22
93472:  VMRS            APSR_nzcv, FPSCR
93476:  VMOV.F32        S10, S22
9347A:  VADD.F32        S6, S2, S4
9347E:  VLDR            S2, [SP,#0x1B8+var_F0]
93482:  VLDR            S4, [SP,#0x1B8+var_E8]
93486:  IT GE
93488:  VMOVGE.F32      S10, S18
9348C:  VSUB.F32        S8, S4, S2
93490:  VABS.F32        S6, S6
93494:  VSUB.F32        S8, S8, S18
93498:  VADD.F32        S6, S6, S6
9349C:  VSUB.F32        S8, S8, S22
934A0:  VSUB.F32        S6, S16, S6
934A4:  VSUB.F32        S0, S8, S0
934A8:  VCMP.F32        S6, S16
934AC:  VMRS            APSR_nzcv, FPSCR
934B0:  VMOV.F32        S8, S6
934B4:  IT GT
934B6:  VMOVGT.F32      S8, S16
934BA:  VCMP.F32        S10, S0
934BE:  VMRS            APSR_nzcv, FPSCR
934C2:  IT MI
934C4:  VMOVMI.F32      S0, S10
934C8:  VCMP.F32        S6, #0.0
934CC:  VMRS            APSR_nzcv, FPSCR
934D0:  IT MI
934D2:  VMOVMI.F32      S8, S24
934D6:  VMUL.F32        S0, S8, S0
934DA:  VCMP.F32        S22, S0
934DE:  VMRS            APSR_nzcv, FPSCR
934E2:  VMOV.F32        S6, S0
934E6:  VCMP.F32        S18, S0
934EA:  IT GE
934EC:  VMOVGE.F32      S6, S22
934F0:  VMRS            APSR_nzcv, FPSCR
934F4:  IT GE
934F6:  VMOVGE.F32      S0, S18
934FA:  VMOV.F32        S22, S6
934FE:  VMOV.F32        S18, S0
93502:  B               loc_9350C
93504:  VLDR            S2, [SP,#0x1B8+var_F0]
93508:  VLDR            S4, [SP,#0x1B8+var_E8]
9350C:  VSUB.F32        S0, S4, S22
93510:  VLDR            S4, [SP,#0x1B8+var_EC]
93514:  VADD.F32        S2, S2, S18
93518:  VLDR            S6, [SP,#0x1B8+var_E4]
9351C:  VSTR            S4, [SP,#0x1B8+var_9C]
93520:  VSTR            S6, [SP,#0x1B8+var_94]
93524:  VSTR            S0, [SP,#0x1B8+var_98]
93528:  VSTR            S2, [SP,#0x1B8+var_A0]
9352C:  VLDR            S8, [R11,#0x34]
93530:  VSTR            S6, [SP,#0x1B8+var_A4]
93534:  VADD.F32        S0, S0, S8
93538:  VSTR            S4, [SP,#0x1B8+var_B0+4]
9353C:  VSTR            S2, [SP,#0x1B8+var_B0]
93540:  VSTR            S0, [SP,#0x1B8+var_A8]
93544:  CBZ             R5, loc_935B8
93546:  ADD             R0, SP, #0x1B8+var_A0
93548:  MOV             R5, R4
9354A:  ADD.W           R2, R0, #8; int
9354E:  B               loc_9355C
93550:  LDRB            R0, [R5,#1]
93552:  CMP             R0, #0x23 ; '#'
93554:  BEQ             loc_93580
93556:  ADDS            R5, #1
93558:  ADDS            R0, R5, #1
9355A:  BEQ             loc_9357C
9355C:  LDRB            R0, [R5]
9355E:  CMP             R0, #0x23 ; '#'
93560:  BEQ             loc_93550
93562:  CMP             R0, #0
93564:  BNE             loc_93556
93566:  B               loc_93580
93568:  DCD aCollapse - 0x9325E
9356C:  DCD aClose_0 - 0x932D8
93570:  DCD byte_4CC4A - 0x9336E
93574:  DCFS 0.95
93578:  DCFS 0.0
9357C:  MOV.W           R5, #0xFFFFFFFF
93580:  CMP             R5, R4
93582:  BEQ             loc_935B8
93584:  LDR             R0, [SP,#0x1B8+var_F8]
93586:  ADD             R1, SP, #0x1B8+var_B0
93588:  ADD             R3, SP, #0x1B8+var_90
9358A:  LDR             R6, [R0]
9358C:  MOVW            R0, #0x19AC
93590:  LDR             R0, [R6,R0]
93592:  LDR.W           R0, [R0,#0x27C]; int
93596:  STRD.W          R11, R1, [SP,#0x1B8+var_1B0]; int
9359A:  ADD             R1, SP, #0x1B8+var_A0; int
9359C:  STRD.W          R5, R3, [SP,#0x1B8+var_1B8]; int
935A0:  MOV             R3, R4; int
935A2:  BL              sub_895D4
935A6:  MOVW            R0, #0x2D20
935AA:  LDRB            R0, [R6,R0]
935AC:  CBZ             R0, loc_935B8
935AE:  ADD             R0, SP, #0x1B8+var_A0; int
935B0:  MOV             R1, R4; s
935B2:  MOV             R2, R5
935B4:  BL              sub_892E0
935B8:  CMP.W           R8, #0
935BC:  BEQ             loc_936B0
935BE:  VLDR            S0, [SP,#0x1B8+var_A0]
935C2:  MOVS            R1, #0
935C4:  VLDR            S4, [SP,#0x1B8+var_98]
935C8:  VLDR            S10, [SP,#0x1B8+var_90]
935CC:  VMOV.F32        S1, S0
935D0:  VSUB.F32        S8, S4, S0
935D4:  VLDR            S12, [R11]
935D8:  VLDR            S14, [R11,#0x394]
935DC:  VADD.F32        S4, S4, S24
935E0:  VLDR            S2, [SP,#0x1B8+var_9C]
935E4:  VLDR            S6, [SP,#0x1B8+var_94]
935E8:  VADD.F32        S2, S2, S24
935EC:  VSUB.F32        S8, S8, S10
935F0:  VMLA.F32        S1, S8, S12
935F4:  VMOV.F32        S8, #-0.25
935F8:  VMOV.F32        S12, #2.0
935FC:  VCMP.F32        S0, S1
93600:  VMRS            APSR_nzcv, FPSCR
93604:  IT GE
93606:  VMOVGE.F32      S1, S0
9360A:  VMUL.F32        S0, S14, S8
9360E:  LDR             R0, =(byte_4CC4A - 0x9361E)
93610:  VSUB.F32        S8, S12, S20
93614:  STR             R1, [SP,#0x1B8+var_C8]
93616:  VADD.F32        S10, S10, S1
9361A:  ADD             R0, PC; byte_4CC4A
9361C:  VSTR            S4, [SP,#0x1B8+var_C0]
93620:  VCVT.S32.F32    S0, S0
93624:  VADD.F32        S8, S8, S10
93628:  VCVT.F32.S32    S0, S0
9362C:  VADD.F32        S8, S8, S24
93630:  VADD.F32        S2, S2, S0
93634:  VADD.F32        S0, S6, S0
93638:  VSTR            S8, [SP,#0x1B8+var_B8]
9363C:  VSTR            S2, [SP,#0x1B8+var_B4]
93640:  LDR.W           R1, [R11,#4]
93644:  STR             R1, [SP,#0x1B8+var_C4]
93646:  ADDS            R1, R0, #1
93648:  VSTR            S0, [SP,#0x1B8+var_BC]
9364C:  BEQ             loc_936B0
9364E:  MOV             R5, R0
93650:  B               loc_93660
93652:  LDRB            R2, [R5,#1]
93654:  CMP             R2, #0x23 ; '#'
93656:  BEQ             loc_93670
93658:  ADDS            R1, #1
9365A:  ADD.W           R5, R5, #1
9365E:  BEQ             loc_9366C
93660:  LDRB            R2, [R5]
93662:  CMP             R2, #0x23 ; '#'
93664:  BEQ             loc_93652
93666:  CMP             R2, #0
93668:  BNE             loc_93658
9366A:  B               loc_93670
9366C:  MOV.W           R5, #0xFFFFFFFF
93670:  CMP             R5, R0
93672:  BEQ             loc_936B0
93674:  LDR             R0, [SP,#0x1B8+var_F8]
93676:  ADD             R1, SP, #0x1B8+var_B0
93678:  ADD             R2, SP, #0x1B8+var_C8
9367A:  MOVS            R6, #0
9367C:  LDR             R4, [R0]
9367E:  MOVW            R0, #0x19AC
93682:  LDR             R0, [R4,R0]
93684:  LDR.W           R0, [R0,#0x27C]; int
93688:  LDR             R3, =(byte_4CC4A - 0x93694)
9368A:  STRD.W          R2, R1, [SP,#0x1B8+var_1B0]; int
9368E:  ADD             R1, SP, #0x1B8+var_B8; int
93690:  ADD             R3, PC; byte_4CC4A ; int
93692:  ADD             R2, SP, #0x1B8+var_C0; int
93694:  STRD.W          R5, R6, [SP,#0x1B8+var_1B8]; int
93698:  BL              sub_895D4
9369C:  MOVW            R0, #0x2D20
936A0:  LDRB            R0, [R4,R0]
936A2:  CBZ             R0, loc_936B0
936A4:  LDR             R1, =(byte_4CC4A - 0x936AE)
936A6:  ADD             R0, SP, #0x1B8+var_B8; int
936A8:  MOV             R2, R5
936AA:  ADD             R1, PC; byte_4CC4A ; s
936AC:  BL              sub_892E0
936B0:  LDR             R5, [SP,#0x1B8+var_F4]
936B2:  LDR.W           R11, [SP,#0x1B8+var_114]
936B6:  LDR             R0, [SP,#0x1B8+var_F8]
936B8:  VLDR            S4, [SP,#0x1B8+var_F0]
936BC:  LDR             R1, [R5,#0x48]
936BE:  LDR             R2, [R0]
936C0:  MOVW            R0, #0x1570
936C4:  ADD             R0, R2
936C6:  VLDR            S2, [R0]
936CA:  VLDR            S0, [R0,#4]
936CE:  VSUB.F32        S6, S4, S2
936D2:  STR.W           R1, [R5,#0x108]
936D6:  VLDR            S4, [R2,#0xE0]
936DA:  MOVS            R1, #0
936DC:  VCMP.F32        S4, S6
936E0:  VMRS            APSR_nzcv, FPSCR
936E4:  BLT             loc_93730
936E6:  VLDR            S8, [SP,#0x1B8+var_E8]
936EA:  MOVS            R3, #0
936EC:  VLDR            S6, [SP,#0x1B8+var_EC]
936F0:  VADD.F32        S2, S2, S8
936F4:  VLDR            S10, [SP,#0x1B8+var_E4]
936F8:  VSUB.F32        S6, S6, S0
936FC:  VLDR            S8, [R2,#0xE4]
93700:  VADD.F32        S0, S0, S10
93704:  MOVS            R2, #0
93706:  VCMP.F32        S4, S2
9370A:  VMRS            APSR_nzcv, FPSCR
9370E:  VCMP.F32        S8, S6
93712:  IT MI
93714:  MOVMI           R2, #1
93716:  VMRS            APSR_nzcv, FPSCR
9371A:  VCMP.F32        S8, S0
9371E:  IT GE
93720:  MOVGE           R3, #1
93722:  VMRS            APSR_nzcv, FPSCR
93726:  AND.W           R2, R2, R3
9372A:  IT MI
9372C:  MOVMI           R1, #1
9372E:  ANDS            R1, R2
93730:  ADD             R2, SP, #0x1B8+var_F0
93732:  STR.W           R1, [R5,#0x10C]
93736:  VLD1.64         {D16-D17}, [R2]
9373A:  ADD.W           R1, R5, #0x110
9373E:  MOVW            R2, #0x1518
93742:  VST1.32         {D16-D17}, [R1]
93746:  LDR.W           R6, [R0,#0x43C]
9374A:  MOVS            R4, #1
9374C:  LDR.W           R0, [R6,#0x27C]; int
93750:  ADD.W           R5, R5, #0x1F0
93754:  STRB.W          R4, [R6,#0x7C]
93758:  ADD.W           R8, R10, R2
9375C:  LDM             R5, {R1-R3,R5}; int
9375E:  STRD.W          R5, R4, [SP,#0x1B8+var_1B8]; float
93762:  BL              sub_9BFD8
93766:  LDR.W           R0, [R6,#0x27C]
9376A:  LDR             R1, [R0,#0x40]
9376C:  LDR             R2, [R0,#0x48]
9376E:  LDR             R0, [SP,#0x1B8+var_F4]
93770:  ADD.W           R1, R2, R1,LSL#4
93774:  LDR             R2, [SP,#0x1B8+var_120]
93776:  SUBS            R1, #0x10
93778:  VLD1.32         {D16-D17}, [R1]
9377C:  ADD.W           R1, R6, #0x210
93780:  VST1.32         {D16-D17}, [R1]
93784:  LDR             R1, [SP,#0x1B8+var_128]
93786:  CMP             R2, R1
93788:  ITT NE
9378A:  MOVNE           R1, #0
9378C:  STRBNE.W        R1, [R0,#0x7C]
93790:  LDRH.W          R2, [R0,#0x84]
93794:  MOVS            R1, #0
93796:  STR.W           R1, [R11,#0x74]
9379A:  ADDS            R1, R2, #1
9379C:  STRH.W          R1, [R0,#0x84]
937A0:  LDR             R1, [SP,#0x1B8+var_110]
937A2:  LDR             R2, [SP,#0x1B8+var_118]
937A4:  CBZ             R1, loc_937D2
937A6:  MOVS.W          R1, R9,LSL#25
937AA:  BMI             loc_937BC
937AC:  LDR.W           R1, [R0,#0x90]
937B0:  CMP             R1, #0
937B2:  ITT LE
937B4:  LDRLE.W         R1, [R0,#0x94]
937B8:  CMPLE           R1, #0
937BA:  BLE             loc_93864
937BC:  CBZ             R2, loc_937D2
937BE:  LDRB.W          R1, [R2,#0x7D]
937C2:  CMP             R1, #0
937C4:  ITTEE EQ
937C6:  LDRBEQ.W        R1, [R2,#0x81]
937CA:  CMPEQ           R1, #0
937CC:  MOVNE           R1, #1
937CE:  STRNE.W         R1, [R0,#0xA4]
937D2:  VLDR            S0, [R8]
937D6:  VCMP.F32        S0, #0.0
937DA:  VMRS            APSR_nzcv, FPSCR
937DE:  BLS             loc_937EC
937E0:  LDR.W           R1, [R0,#0xA4]
937E4:  CMP             R1, #0
937E6:  BLE             loc_937F4
937E8:  MOVS            R1, #1
937EA:  B               loc_93800
937EC:  MOVS            R1, #1
937EE:  STR.W           R1, [R0,#0xA4]
937F2:  B               loc_93800
937F4:  LDR.W           R2, [R0,#0xA8]
937F8:  MOVS            R1, #0
937FA:  CMP             R2, #0
937FC:  IT GT
937FE:  MOVGT           R1, #1
93800:  LDRB.W          R2, [R0,#0x7D]
93804:  STRB.W          R1, [R0,#0x81]
93808:  CBNZ            R2, loc_93818
9380A:  LDRB.W          R2, [R0,#0x7A]
9380E:  CMP             R2, #0
93810:  IT NE
93812:  EORSNE.W        R1, R1, #1
93816:  BNE             loc_93820
93818:  LDR.W           R1, [R0,#0x90]
9381C:  CMP             R1, #0
9381E:  BLE             loc_93824
93820:  MOVS            R1, #0
93822:  B               loc_93838
93824:  LDR.W           R2, [R0,#0x94]
93828:  MOVS            R1, #0
9382A:  CMP             R2, #0
9382C:  BGT             loc_93838
9382E:  LDR.W           R2, [R0,#0xA8]
93832:  CMP             R2, #1
93834:  IT LT
93836:  MOVLT           R1, #1
93838:  STRB.W          R1, [R0,#0x7F]
9383C:  LDR             R0, [SP,#0x1B8+var_64]
9383E:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x93846)
93842:  ADD             R2, PC; __stack_chk_guard_ptr
93844:  LDR             R2, [R2]; __stack_chk_guard
93846:  LDR             R2, [R2]
93848:  CMP             R2, R0
9384A:  ITTTT EQ
9384C:  EOREQ.W         R0, R1, #1
93850:  ADDEQ           SP, SP, #0x158
93852:  VPOPEQ          {D8-D15}
93856:  ADDEQ           SP, SP, #4
93858:  ITT EQ
9385A:  POPEQ.W         {R8-R11}
9385E:  POPEQ           {R4-R7,PC}
93860:  BLX             __stack_chk_fail
93864:  VLDR            S0, [R0,#0x1D0]
93868:  VLDR            S2, [R0,#0x1D8]
9386C:  VCMP.F32        S0, S2
93870:  VMRS            APSR_nzcv, FPSCR
93874:  BGE             loc_93888
93876:  VLDR            S0, [R0,#0x1D4]
9387A:  VLDR            S2, [R0,#0x1DC]
9387E:  VCMP.F32        S0, S2
93882:  VMRS            APSR_nzcv, FPSCR
93886:  BLT             loc_937BC
93888:  MOVS            R1, #1
9388A:  STR.W           R1, [R0,#0xA4]
9388E:  B               loc_937BC
93890:  LDRB.W          R0, [R11,#0x7B]
93894:  CMP             R0, #0
93896:  BEQ.W           loc_91000
9389A:  LDR             R1, [SP,#0x1B8+var_F8]
9389C:  ADD.W           R0, R11, #0xC
938A0:  STR             R0, [SP,#0x1B8+var_17C]
938A2:  MOVW            R0, #0x18C8
938A6:  LDR             R2, [R1]
938A8:  MOVS            R1, #2
938AA:  ADDS            R6, R2, R0
938AC:  ADD.W           R0, R2, #0xE0
938B0:  STR             R0, [SP,#0x1B8+var_184]
938B2:  LDR             R0, =(aResize - 0x938BE); "#RESIZE" ...
938B4:  STR.W           R1, [R11,#0x134]
938B8:  MOVS            R1, #1
938BA:  ADD             R0, PC; "#RESIZE"
938BC:  STR             R2, [SP,#0x1B8+var_170]
938BE:  LDRB.W          R9, [R2,#0xAF]
938C2:  VLDR            S30, [R6]
938C6:  STR.W           R1, [R11,#0x130]
938CA:  BL              sub_97A54
938CE:  VMLA.F32        S24, S30, S28
938D2:  VLDR            D16, =1.40444743e306
938D6:  VMUL.F32        S0, S30, S26
938DA:  ADD.W           R0, R6, #0x124
938DE:  VMOV.F32        S2, #0.75
938E2:  VLDR            S31, =0.0
938E6:  VMOV.F32        S19, #0.5
938EA:  VLDR            S21, =255.0
938EE:  VCMP.F32        S0, S24
938F2:  VMRS            APSR_nzcv, FPSCR
938F6:  IT GE
938F8:  VMOVGE.F32      S24, S0
938FC:  VCVT.S32.F32    S0, S24
93900:  VSTR            D16, [SP,#0x1B8+var_178]
93904:  CMP.W           R9, #0
93908:  VCVT.F32.S32    S0, S0
9390C:  VMUL.F32        S0, S0, S2
93910:  VMOV.F32        S2, #4.0
93914:  VCVT.S32.F32    S0, S0
93918:  VCVT.F32.S32    S30, S0
9391C:  VLDR            S0, =3.4028e38
93920:  VSTR            D0, [SP,#0x1B8+var_168]
93924:  VMOV.F64        D0, D1
93928:  LDR             R4, =(unk_53188 - 0x93938)
9392A:  STR             R6, [SP,#0x1B8+var_148]
9392C:  MOVW            R6, #0x19D0
93930:  STR.W           R9, [SP,#0x1B8+var_1A4]
93934:  ADD             R4, PC; unk_53188
93936:  STR             R0, [SP,#0x1B8+var_188]
93938:  IT EQ
9393A:  VMOVEQ.F32      S0, S31
9393E:  VNEG.F32        S2, S30
93942:  LDR             R0, [SP,#0x1B8+var_17C]
93944:  VDUP.32         D16, D0[0]
93948:  MOV.W           R9, #0
9394C:  ADDS            R0, #8
9394E:  STR             R0, [SP,#0x1B8+var_180]
93950:  LDR             R0, [SP,#0x1B8+var_D0]
93952:  STR             R0, [SP,#0x1B8+var_19C]
93954:  LDR             R0, [SP,#0x1B8+var_CC]
93956:  VSTR            D16, [SP,#0x1B8+var_160]
9395A:  VDUP.32         D16, D1[0]
9395E:  STR             R0, [SP,#0x1B8+var_1A0]
93960:  MOVS            R0, #0
93962:  STR.W           R10, [SP,#0x1B8+var_16C]
93966:  VSTR            D16, [SP,#0x1B8+var_198]
9396A:  STR             R0, [SP,#0x1B8+var_18C]
9396C:  B               loc_93AB2
9396E:  ALIGN 0x10
93970:  DCD byte_4CC4A - 0x9361E
93974:  DCD byte_4CC4A - 0x93694
93978:  DCD byte_4CC4A - 0x936AE
9397C:  DCD aResize - 0x938BE
93980:  DCFD 1.40444743e306
93988:  DCFS 255.0
9398C:  DCFS 3.4028e38
93990:  DCD unk_53188 - 0x93938
93994:  DCFS -3.4028e38
93998:  DCFS 0.04
9399C:  CMP             R1, #0
9399E:  MOV.W           R1, #0x1F
939A2:  IT EQ
939A4:  MOVEQ           R1, #0x1E
939A6:  LDR             R2, [SP,#0x1B8+var_F8]
939A8:  CMP             R0, #0
939AA:  MOVW            R0, #0x1518
939AE:  LDR             R2, [R2]
939B0:  IT NE
939B2:  MOVNE           R1, #0x20 ; ' '
939B4:  ADD             R0, R2
939B6:  VLDR            S0, [R0]
939BA:  ADD.W           R0, R0, R1,LSL#4
939BE:  VLDR            S8, [R0,#0xB8]
939C2:  VLDR            S4, [R0,#0xB0]
939C6:  VMUL.F32        S0, S8, S0
939CA:  VLDR            S2, [R0,#0xAC]
939CE:  VLDR            S6, [R0,#0xB4]
939D2:  VCMP.F32        S4, S16
939D6:  VMRS            APSR_nzcv, FPSCR
939DA:  VMOV.F32        S8, S4
939DE:  VCMP.F32        S2, S16
939E2:  IT GT
939E4:  VMOVGT.F32      S8, S16
939E8:  VMRS            APSR_nzcv, FPSCR
939EC:  VMOV.F32        S10, S2
939F0:  VCMP.F32        S6, S16
939F4:  IT GT
939F6:  VMOVGT.F32      S10, S16
939FA:  VMRS            APSR_nzcv, FPSCR
939FE:  VMOV.F32        S12, S6
93A02:  VCMP.F32        S0, S16
93A06:  IT GT
93A08:  VMOVGT.F32      S12, S16
93A0C:  VMRS            APSR_nzcv, FPSCR
93A10:  VMOV.F32        S14, S0
93A14:  VCMP.F32        S4, #0.0
93A18:  IT GT
93A1A:  VMOVGT.F32      S14, S16
93A1E:  VMRS            APSR_nzcv, FPSCR
93A22:  VCMP.F32        S2, #0.0
93A26:  IT MI
93A28:  VMOVMI.F32      S8, S31
93A2C:  VMRS            APSR_nzcv, FPSCR
93A30:  VCMP.F32        S6, #0.0
93A34:  IT MI
93A36:  VMOVMI.F32      S10, S31
93A3A:  VMRS            APSR_nzcv, FPSCR
93A3E:  VCMP.F32        S0, #0.0
93A42:  VMOV.F32        S0, S19
93A46:  IT MI
93A48:  VMOVMI.F32      S12, S31
93A4C:  VMOV.F32        S2, S19
93A50:  VMRS            APSR_nzcv, FPSCR
93A54:  VMOV.F32        S4, S19
93A58:  IT MI
93A5A:  VMOVMI.F32      S14, S31
93A5E:  VMOV.F32        S6, S19
93A62:  VMLA.F32        S0, S8, S21
93A66:  VMLA.F32        S2, S10, S21
93A6A:  VMLA.F32        S4, S12, S21
93A6E:  VMLA.F32        S6, S14, S21
93A72:  VCVT.S32.F32    S0, S0
93A76:  VCVT.S32.F32    S2, S2
93A7A:  VCVT.S32.F32    S4, S4
93A7E:  VMOV            R0, S0
93A82:  VMOV            R1, S2
93A86:  VCVT.S32.F32    S0, S6
93A8A:  ORR.W           R0, R1, R0,LSL#8
93A8E:  VMOV            R1, S4
93A92:  ORR.W           R0, R0, R1,LSL#16
93A96:  VMOV            R1, S0
93A9A:  ORR.W           R0, R0, R1,LSL#24
93A9E:  ADD             R1, SP, #0x1B8+var_78
93AA0:  STR.W           R0, [R1,R9,LSL#2]
93AA4:  LDR             R0, [SP,#0x1B8+var_11C]
93AA6:  ADD.W           R9, R9, #1
93AAA:  ADDS            R4, #0x18
93AAC:  CMP             R0, R9
93AAE:  BEQ.W           loc_93CE2
93AB2:  VLDR            S2, [R11,#0xC]
93AB6:  MOV             R0, R4
93AB8:  VLDR            S4, [R11,#0x14]
93ABC:  VLDR            S0, [R11,#0x10]
93AC0:  VLDR            S6, [R11,#0x18]
93AC4:  VADD.F32        S4, S2, S4
93AC8:  VLD1.32         {D12}, [R0]!
93ACC:  VADD.F32        S6, S0, S6
93AD0:  VLDR            D14, [R0]
93AD4:  VLDR            D16, [SP,#0x1B8+var_160]
93AD8:  VMUL.F32        D13, D16, D14
93ADC:  VSUB.F32        S4, S4, S2
93AE0:  VSUB.F32        S6, S6, S0
93AE4:  VMLA.F32        S2, S4, S24
93AE8:  VMLA.F32        S0, S6, S25
93AEC:  VSUB.F32        S6, S2, S26
93AF0:  VMLA.F32        S2, S28, S30
93AF4:  VSUB.F32        S4, S0, S27
93AF8:  VMLA.F32        S0, S29, S30
93AFC:  VSTR            S6, [SP,#0x1B8+var_A0]
93B00:  VCMP.F32        S6, S2
93B04:  VSTR            S2, [SP,#0x1B8+var_98]
93B08:  VMRS            APSR_nzcv, FPSCR
93B0C:  VSTR            S4, [SP,#0x1B8+var_9C]
93B10:  VCMP.F32        S4, S0
93B14:  VSTR            S0, [SP,#0x1B8+var_94]
93B18:  ITT GT
93B1A:  VSTRGT          S6, [SP,#0x1B8+var_98]
93B1E:  VSTRGT          S2, [SP,#0x1B8+var_A0]
93B22:  VMRS            APSR_nzcv, FPSCR
93B26:  ITT GT
93B28:  VSTRGT          S4, [SP,#0x1B8+var_94]
93B2C:  VSTRGT          S0, [SP,#0x1B8+var_9C]
93B30:  LDR.W           R0, [R11,#0x1C4]
93B34:  LDR.W           R1, [R11,#0x1CC]
93B38:  LDR             R3, [SP,#0x1B8+var_FC]
93B3A:  ADD.W           R0, R1, R0,LSL#2
93B3E:  LDR             R2, [SP,#0x1B8+var_F8]
93B40:  LDR.W           R0, [R0,#-4]
93B44:  LDR             R2, [R2]
93B46:  MVNS            R0, R0
93B48:  EOR.W           R1, R9, R0
93B4C:  UXTB            R1, R1
93B4E:  LDR.W           R1, [R3,R1,LSL#2]
93B52:  EOR.W           R0, R1, R0,LSR#8
93B56:  EOR.W           R1, R0, R9,LSR#8
93B5A:  UXTB            R1, R1
93B5C:  LDR.W           R1, [R3,R1,LSL#2]
93B60:  EOR.W           R0, R1, R0,LSR#8
93B64:  EOR.W           R1, R0, R9,LSR#16
93B68:  UXTB            R1, R1
93B6A:  LDR.W           R1, [R3,R1,LSL#2]
93B6E:  EOR.W           R0, R1, R0,LSR#8
93B72:  UXTB            R1, R0
93B74:  EOR.W           R1, R1, R9,LSR#24
93B78:  LDR.W           R1, [R3,R1,LSL#2]
93B7C:  LDR             R3, [R2,R6]
93B7E:  EOR.W           R0, R1, R0,LSR#8
93B82:  MVNS            R1, R0
93B84:  ADDS            R0, R2, R6
93B86:  CMP             R3, R1
93B88:  IT EQ
93B8A:  STREQ           R1, [R0,#4]
93B8C:  LDR             R2, [R0,#0x2C]
93B8E:  ADD             R3, SP, #0x1B8+var_80
93B90:  CMP             R2, R1
93B92:  ITT EQ
93B94:  MOVEQ           R2, #1
93B96:  STRBEQ.W        R2, [R0,#0x30]
93B9A:  MOVW            R0, #0x2020
93B9E:  ADD             R2, SP, #0x1B8+var_F0
93BA0:  STR             R0, [SP,#0x1B8+var_1B8]
93BA2:  ADD             R0, SP, #0x1B8+var_A0
93BA4:  BL              sub_A634C
93BA8:  LDRB.W          R0, [SP,#0x1B8+var_80]
93BAC:  LDRB.W          R1, [SP,#0x1B8+var_F0]
93BB0:  ORRS            R1, R0
93BB2:  LSLS            R1, R1, #0x18
93BB4:  BEQ             loc_93BC8
93BB6:  MOVS.W          R1, R9,LSL#31
93BBA:  MOV.W           R1, #5
93BBE:  IT EQ
93BC0:  MOVEQ           R1, #6
93BC2:  LDR             R2, [SP,#0x1B8+var_148]
93BC4:  STR.W           R1, [R2,#0x44C]
93BC8:  CMP             R0, #0
93BCA:  BEQ             loc_93CC6
93BCC:  LDR             R0, [SP,#0x1B8+var_170]
93BCE:  LDRB.W          R0, [R0,#0x3DD]
93BD2:  CBZ             R0, loc_93C1E
93BD4:  CMP.W           R9, #0
93BD8:  BNE             loc_93C1E
93BDA:  LDRD.W          R3, R2, [SP,#0x1B8+var_1A0]
93BDE:  ADD             R0, SP, #0x1B8+var_B0
93BE0:  MOV             R1, R11
93BE2:  BL              sub_963FC
93BE6:  LDR             R0, [SP,#0x1B8+var_F8]
93BE8:  LDR             R1, [SP,#0x1B8+var_B0+4]
93BEA:  STR             R1, [SP,#0x1B8+var_16C]
93BEC:  LDR             R0, [R0]
93BEE:  VLDR            S0, [SP,#0x1B8+var_B0]
93BF2:  LDR             R1, [R0,R6]
93BF4:  ADD             R0, R6
93BF6:  VSTR            D0, [SP,#0x1B8+var_168]
93BFA:  CMP             R1, #0
93BFC:  IT NE
93BFE:  MOVNE           R1, #1
93C00:  STRB            R1, [R0,#0xC]
93C02:  MOV.W           R1, #0
93C06:  ITT NE
93C08:  STRHNE          R1, [R0,#0xE]
93C0A:  STRNE           R1, [R0,#8]
93C0C:  STRD.W          R1, R1, [R0,#0x14]
93C10:  STR             R1, [R0]
93C12:  STR             R1, [R0,#0x24]
93C14:  STRB            R1, [R0,#0xD]
93C16:  STRB            R1, [R0,#0x10]
93C18:  MOVS            R0, #1
93C1A:  STR             R0, [SP,#0x1B8+var_18C]
93C1C:  B               loc_93CC6
93C1E:  VLDR            D16, [SP,#0x1B8+var_198]
93C22:  MOV             R1, R11
93C24:  LDR             R0, [SP,#0x1B8+var_188]
93C26:  VMUL.F32        D16, D14, D16
93C2A:  VSUB.F32        D16, D16, D13
93C2E:  VMLA.F32        D13, D16, D12
93C32:  VLDR            D16, [R0]
93C36:  LDR             R0, [SP,#0x1B8+var_184]
93C38:  VLDR            D17, [R0]
93C3C:  LDR             R0, [SP,#0x1B8+var_180]
93C3E:  VSUB.F32        D16, D17, D16
93C42:  VLDR            D17, [R0]
93C46:  LDR             R0, [SP,#0x1B8+var_17C]
93C48:  VADD.F32        D13, D13, D16
93C4C:  VLDR            D18, [R0]
93C50:  ADD             R0, SP, #0x1B8+var_B0
93C52:  VADD.F32        D16, D18, D17
93C56:  VSUB.F32        D17, D18, D13
93C5A:  VSUB.F32        D18, D13, D16
93C5E:  VMLA.F32        D13, D17, D12
93C62:  VMLA.F32        D16, D18, D12
93C66:  VSUB.F32        D12, D16, D13
93C6A:  VMOV.32         R2, D12[0]
93C6E:  VMOV.32         R3, D12[1]
93C72:  BL              sub_963FC
93C76:  SUB.W           R0, R9, #1
93C7A:  CMP             R0, #2
93C7C:  MOV.W           R0, #0
93C80:  IT CC
93C82:  MOVCC           R0, #1
93C84:  VLDR            D17, [SP,#0x1B8+var_B0]
93C88:  VMOV.32         D16[0], R0
93C8C:  VMOV.32         R1, D17[1]
93C90:  VSTR            D17, [SP,#0x1B8+var_168]
93C94:  VSUB.F32        D17, D17, D12
93C98:  STR             R1, [SP,#0x1B8+var_16C]
93C9A:  MOV             R1, #0x7FFFFFFE
93CA2:  AND.W           R1, R1, R9
93CA6:  SUBS            R1, #2
93CA8:  CLZ.W           R0, R1
93CAC:  LSRS            R0, R0, #5
93CAE:  VMOV.32         D16[1], R0
93CB2:  VSHL.I32        D16, D16, #0x1F
93CB6:  VSHR.S32        D16, D16, #0x1F
93CBA:  VAND            D16, D17, D16
93CBE:  VSUB.F32        D16, D13, D16
93CC2:  VSTR            D16, [SP,#0x1B8+var_178]
93CC6:  LDRB.W          R1, [SP,#0x1B8+var_F0]
93CCA:  CMP.W           R9, #0
93CCE:  LDRB.W          R0, [SP,#0x1B8+var_80]
93CD2:  BEQ.W           loc_9399C
93CD6:  CMP             R0, #0
93CD8:  IT EQ
93CDA:  CMPEQ           R1, #0
93CDC:  BEQ.W           loc_93AA4
93CE0:  B               loc_9399C
93CE2:  LDR             R0, [SP,#0x1B8+var_1A4]
93CE4:  CMP             R0, #0
93CE6:  BEQ.W           loc_93F46
93CEA:  VMOV.F32        S23, #-4.0
93CEE:  LDR             R6, [SP,#0x1B8+var_FC]
93CF0:  VLDR            S17, =-3.4028e38
93CF4:  MOV.W           R0, #0xFFFFFFFF
93CF8:  VLDR            S19, =3.4028e38
93CFC:  MOVS            R4, #0
93CFE:  VLDR            S21, =0.04
93D02:  MOVW            R9, #0x19D0
93D06:  STR             R0, [SP,#0x1B8+var_160]
93D08:  B               loc_93D82
93D0A:  VLDR            S2, [R0]
93D0E:  LDR             R0, [SP,#0x1B8+var_184]
93D10:  VLDR            S4, [R0]
93D14:  VSUB.F32        S2, S4, S2
93D18:  VMOV.F32        S4, #4.0
93D1C:  VADD.F32        S28, S2, S4
93D20:  VMOV.F32        S29, S1
93D24:  LDR             R0, [SP,#0x1B8+var_180]
93D26:  VSUB.F32        D17, D0, D14
93D2A:  MOV             R1, R11
93D2C:  VLDR            D16, [R0]
93D30:  ADD             R0, SP, #0x1B8+var_B0
93D32:  VADD.F32        D16, D16, D0
93D36:  VSUB.F32        D18, D14, D16
93D3A:  VMLA.F32        D14, D17, D12
93D3E:  VMLA.F32        D16, D18, D12
93D42:  VSUB.F32        D13, D16, D14
93D46:  VMOV.32         R2, D13[0]
93D4A:  VMOV.32         R3, D13[1]
93D4E:  BL              sub_963FC
93D52:  VLDR            D16, [SP,#0x1B8+var_B0]
93D56:  VCEQ.F32        D17, D12, #0.0
93D5A:  ADD.W           R12, SP, #0x1B8+var_E0
93D5E:  STR             R4, [SP,#0x1B8+var_160]
93D60:  VMOV.32         R0, D16[1]
93D64:  VSTR            D16, [SP,#0x1B8+var_168]
93D68:  VSUB.F32        D16, D16, D13
93D6C:  VAND            D16, D16, D17
93D70:  VSUB.F32        D16, D14, D16
93D74:  VSTR            D16, [SP,#0x1B8+var_178]
93D78:  STR             R0, [SP,#0x1B8+var_16C]
93D7A:  ADDS            R4, #1
93D7C:  CMP             R4, #4
93D7E:  BEQ.W           loc_93F50
93D82:  VMOV.F32        S0, S19
93D86:  CMP             R4, #3; switch 4 cases
93D88:  VMOV.F32        S4, S19
93D8C:  VMOV.F32        S2, S17
93D90:  VMOV.F32        S6, S17
93D94:  BHI             def_93DAE; jumptable 00093DAE default case
93D96:  VLDR            S0, [R11,#0xC]
93D9A:  VLDR            S2, [R11,#0x14]
93D9E:  VLDR            S4, [R11,#0x10]
93DA2:  VLDR            S6, [R11,#0x18]
93DA6:  VADD.F32        S10, S0, S2
93DAA:  VADD.F32        S8, S4, S6
93DAE:  TBB.W           [PC,R4]; switch jump
93DB2:  DCB 2; jump table for switch statement
93DB3:  DCB 0xD
93DB4:  DCB 0x18
93DB5:  DCB 0x23
93DB6:  VMOV.F32        S6, #4.0; jumptable 00093DAE case 0
93DBA:  VSUB.F32        S2, S10, S30
93DBE:  VADD.F32        S0, S0, S30
93DC2:  VADD.F32        S6, S4, S6
93DC6:  VADD.F32        S4, S4, S23
93DCA:  B               def_93DAE; jumptable 00093DAE default case
93DCC:  VMOV.F32        S0, #4.0; jumptable 00093DAE case 1
93DD0:  VSUB.F32        S6, S8, S30
93DD4:  VADD.F32        S4, S4, S30
93DD8:  VADD.F32        S2, S10, S0
93DDC:  VADD.F32        S0, S10, S23
93DE0:  B               def_93DAE; jumptable 00093DAE default case
93DE2:  VMOV.F32        S4, #4.0; jumptable 00093DAE case 2
93DE6:  VSUB.F32        S2, S10, S30
93DEA:  VADD.F32        S0, S0, S30
93DEE:  VADD.F32        S6, S8, S4
93DF2:  VADD.F32        S4, S8, S23
93DF6:  B               def_93DAE; jumptable 00093DAE default case
93DF8:  VMOV.F32        S2, #4.0; jumptable 00093DAE case 3
93DFC:  VSUB.F32        S6, S8, S30
93E00:  VADD.F32        S4, S4, S30
93E04:  VADD.F32        S2, S0, S2
93E08:  VADD.F32        S0, S0, S23
93E0C:  LDR.W           R0, [R11,#0x1C4]; jumptable 00093DAE default case
93E10:  LDR.W           R1, [R11,#0x1CC]
93E14:  LDR             R3, [SP,#0x1B8+var_F8]
93E16:  ADD.W           R0, R1, R0,LSL#2
93E1A:  ADDS            R1, R4, #4
93E1C:  LDR.W           R0, [R0,#-4]
93E20:  LDR             R3, [R3]
93E22:  VSTR            S6, [SP,#0x1B8+var_94]
93E26:  MVNS            R0, R0
93E28:  EOR.W           R2, R1, R0
93E2C:  VSTR            S2, [SP,#0x1B8+var_98]
93E30:  UXTB            R2, R2
93E32:  VSTR            S4, [SP,#0x1B8+var_9C]
93E36:  LDR.W           R2, [R6,R2,LSL#2]
93E3A:  VSTR            S0, [SP,#0x1B8+var_A0]
93E3E:  EOR.W           R0, R2, R0,LSR#8
93E42:  EOR.W           R2, R0, R1,LSR#8
93E46:  UXTB            R2, R2
93E48:  LDR.W           R2, [R6,R2,LSL#2]
93E4C:  EOR.W           R0, R2, R0,LSR#8
93E50:  EOR.W           R2, R0, R1,LSR#16
93E54:  UXTB            R2, R2
93E56:  LDR.W           R2, [R6,R2,LSL#2]
93E5A:  EOR.W           R0, R2, R0,LSR#8
93E5E:  UXTB            R2, R0
93E60:  EOR.W           R1, R2, R1,LSR#24
93E64:  LDR.W           R2, [R3,R9]
93E68:  LDR.W           R1, [R6,R1,LSL#2]
93E6C:  EOR.W           R0, R1, R0,LSR#8
93E70:  MVNS            R1, R0
93E72:  ADD.W           R0, R3, R9
93E76:  CMP             R2, R1
93E78:  IT EQ
93E7A:  STREQ           R1, [R0,#4]
93E7C:  LDR             R2, [R0,#0x2C]
93E7E:  ADD             R3, SP, #0x1B8+var_80
93E80:  CMP             R2, R1
93E82:  ITT EQ
93E84:  MOVEQ           R2, #1
93E86:  STRBEQ.W        R2, [R0,#0x30]
93E8A:  MOVS            R0, #0x20 ; ' '
93E8C:  ADD             R2, SP, #0x1B8+var_F0
93E8E:  STR             R0, [SP,#0x1B8+var_1B8]
93E90:  ADD             R0, SP, #0x1B8+var_A0
93E92:  BL              sub_A634C
93E96:  LDRB.W          R0, [SP,#0x1B8+var_F0]
93E9A:  CBZ             R0, loc_93ECE
93E9C:  LDR             R1, [SP,#0x1B8+var_148]
93E9E:  ADD.W           R12, SP, #0x1B8+var_E0
93EA2:  LDRB.W          R0, [SP,#0x1B8+var_80]
93EA6:  VLDR            S0, [R1,#0x100]
93EAA:  VCMP.F32        S0, S21
93EAE:  VMRS            APSR_nzcv, FPSCR
93EB2:  BGT             loc_93EBA
93EB4:  CMP             R0, #0
93EB6:  BEQ.W           loc_93D7A
93EBA:  LSLS            R1, R4, #0x1F
93EBC:  MOV.W           R1, #4
93EC0:  IT EQ
93EC2:  MOVEQ           R1, #3
93EC4:  LDR             R2, [SP,#0x1B8+var_148]
93EC6:  STR.W           R1, [R2,#0x44C]
93ECA:  CBNZ            R0, loc_93EEC
93ECC:  B               loc_93D7A
93ECE:  LDRB.W          R0, [SP,#0x1B8+var_80]
93ED2:  ADD.W           R12, SP, #0x1B8+var_E0
93ED6:  CMP             R0, #0
93ED8:  BEQ.W           loc_93D7A
93EDC:  LSLS            R0, R4, #0x1F
93EDE:  MOV.W           R0, #4
93EE2:  IT EQ
93EE4:  MOVEQ           R0, #3
93EE6:  LDR             R1, [SP,#0x1B8+var_148]
93EE8:  STR.W           R0, [R1,#0x44C]
93EEC:  LDR             R0, [SP,#0x1B8+var_17C]
93EEE:  VMOV.I32        D12, #0
93EF2:  CMP             R4, #3; switch 4 cases
93EF4:  VLDR            D0, [R0]
93EF8:  BHI             def_93EFA; jumptable 00093EFA default case
93EFA:  TBB.W           [PC,R4]; switch jump
93EFE:  DCB 4; jump table for switch statement
93EFF:  DCB 0xB
93F00:  DCB 0xF
93F01:  DCB 2
93F02:  LDR             R0, [SP,#0x1B8+var_188]; jumptable 00093EFA case 3
93F04:  B               loc_93D0A
93F06:  LDR             R0, [SP,#0x1B8+var_148]; jumptable 00093EFA case 0
93F08:  VMOV            D14, D0
93F0C:  B               loc_93F26
93F0E:  VMOV.F64        D14, D0; jumptable 00093EFA default case
93F12:  B               loc_93D24
93F14:  LDR             R0, [SP,#0x1B8+var_188]; jumptable 00093EFA case 1
93F16:  VLDR            D12, =?bad floating?
93F1A:  B               loc_93D0A
93F1C:  LDR             R0, [SP,#0x1B8+var_148]; jumptable 00093EFA case 2
93F1E:  VMOV            D14, D0
93F22:  VLDR            D12, =0.0078125
93F26:  VLDR            S2, [R0,#0x128]
93F2A:  LDR             R0, [SP,#0x1B8+var_170]
93F2C:  VLDR            S4, [R0,#0xE4]
93F30:  VSUB.F32        S2, S4, S2
93F34:  VMOV.F32        S4, #4.0
93F38:  VADD.F32        S2, S2, S4
93F3C:  VMOV            R0, S2
93F40:  VMOV.32         D14[1], R0
93F44:  B               loc_93D24
93F46:  ADD.W           R12, SP, #0x1B8+var_E0
93F4A:  MOV.W           R0, #0xFFFFFFFF
93F4E:  STR             R0, [SP,#0x1B8+var_160]
93F50:  LDR             R0, [SP,#0x1B8+var_F8]
93F52:  MOVW            R1, #0x19AC
93F56:  LDR             R0, [R0]
93F58:  LDR             R1, [R0,R1]
93F5A:  LDR             R0, [SP,#0x1B8+var_148]
93F5C:  LDR.W           R0, [R0,#0x22C]
93F60:  LDR.W           R2, [R1,#0x1C4]
93F64:  SUB.W           R2, R2, #1
93F68:  STR.W           R2, [R1,#0x1C4]
93F6C:  CBZ             R0, loc_93FD6
93F6E:  LDR.W           R0, [R0,#0x2FC]
93F72:  LDR.W           R9, [SP,#0x1B8+var_108]
93F76:  LDR             R4, [SP,#0x1B8+var_160]
93F78:  CMP             R0, R11
93F7A:  BNE             loc_94074
93F7C:  VMOV.F32        S24, S31
93F80:  LDR             R0, [SP,#0x1B8+var_148]
93F82:  LDR.W           R0, [R0,#0x214]
93F86:  CMP             R0, #3
93F88:  BNE             loc_93FB4
93F8A:  LDR             R0, [SP,#0x1B8+var_170]
93F8C:  LDRB.W          R0, [R0,#0xF9]
93F90:  CBZ             R0, loc_93FDE
93F92:  MOVS            R0, #0
93F94:  MOVS            R1, #1; int
93F96:  STR             R0, [SP,#0x1B8+var_1B8]; float
93F98:  ADD             R0, SP, #0x1B8+var_A0; int
93F9A:  MOVS            R2, #0; int
93F9C:  MOVS            R3, #0; int
93F9E:  BL              sub_99284
93FA2:  LDR             R0, [SP,#0x1B8+var_148]
93FA4:  ADD.W           R12, SP, #0x1B8+var_E0
93FA8:  VLDR            S24, [SP,#0x1B8+var_A0]
93FAC:  VLDR            S31, [SP,#0x1B8+var_9C]
93FB0:  LDR.W           R0, [R0,#0x214]
93FB4:  CMP             R0, #4
93FB6:  BNE             loc_93FE6
93FB8:  MOVS            R0, #0
93FBA:  MOVS            R1, #2; int
93FBC:  STR             R0, [SP,#0x1B8+var_1B8]; float
93FBE:  ADD             R0, SP, #0x1B8+var_A0; int
93FC0:  MOVS            R2, #0; int
93FC2:  MOVS            R3, #0; int
93FC4:  BL              sub_99284
93FC8:  ADD.W           R12, SP, #0x1B8+var_E0
93FCC:  VLDR            S24, [SP,#0x1B8+var_A0]
93FD0:  VLDR            S31, [SP,#0x1B8+var_9C]
93FD4:  B               loc_93FE6
93FD6:  LDR.W           R9, [SP,#0x1B8+var_108]
93FDA:  LDR             R4, [SP,#0x1B8+var_160]
93FDC:  B               loc_94074
93FDE:  VLDR            S31, =0.0
93FE2:  VMOV.F32        S24, S31
93FE6:  VCMP.F32        S24, #0.0
93FEA:  VMRS            APSR_nzcv, FPSCR
93FEE:  ITT EQ
93FF0:  VCMPEQ.F32      S31, #0.0
93FF4:  VMRSEQ          APSR_nzcv, FPSCR
93FF8:  BEQ             loc_94074
93FFA:  LDR             R0, [SP,#0x1B8+var_170]
93FFC:  VLDR            S0, =600.0
94000:  VLDR            S2, [R0,#0x18]
94004:  VLDR            S4, [R0,#0xA4]
94008:  VMUL.F32        S0, S2, S0
9400C:  VLDR            S6, [R0,#0xA8]
94010:  MOVS            R0, #1
94012:  VCMP.F32        S4, S6
94016:  VMRS            APSR_nzcv, FPSCR
9401A:  IT MI
9401C:  VMOVMI.F32      S6, S4
94020:  LDR             R1, [SP,#0x1B8+var_148]
94022:  VMUL.F32        S0, S0, S6
94026:  STRB.W          R0, [R1,#0x24F]
9402A:  MOVS            R0, #0
9402C:  STRB.W          R0, [R1,#0x240]
94030:  MOVS            R0, #0x20 ; ' '
94032:  MOV.W           R1, #0x3F800000
94036:  VCVT.S32.F32    S0, S0
9403A:  VCVT.F32.S32    S26, S0
9403E:  BL              sub_88C10
94042:  VLDR            S0, [R11,#0x1C]
94046:  MOV             R1, R11
94048:  VLDR            S2, [R11,#0x20]
9404C:  VMLA.F32        S0, S24, S26
94050:  VMLA.F32        S2, S31, S26
94054:  STR             R0, [SP,#0x1B8+var_78]
94056:  ADD             R0, SP, #0x1B8+var_A0
94058:  VMOV            R2, S0
9405C:  VMOV            R3, S2
94060:  BL              sub_963FC
94064:  ADD.W           R12, SP, #0x1B8+var_E0
94068:  VLDR            S0, [SP,#0x1B8+var_A0]
9406C:  LDR             R0, [SP,#0x1B8+var_9C]
9406E:  STR             R0, [SP,#0x1B8+var_16C]
94070:  VSTR            D0, [SP,#0x1B8+var_168]
94074:  VLDR            S0, =3.4028e38
94078:  VLDR            D1, [SP,#0x1B8+var_168]
9407C:  VCMP.F32        S2, S0
94080:  VMRS            APSR_nzcv, FPSCR
94084:  BEQ             loc_940B4
94086:  LDR             R0, [SP,#0x1B8+var_16C]
94088:  STR.W           R0, [R11,#0x20]
9408C:  LDR             R0, [SP,#0x1B8+var_F8]
9408E:  LDRB.W          R1, [R11,#9]
94092:  VSTR            S2, [R11,#0x1C]
94096:  LDR             R0, [R0]
94098:  LSLS            R1, R1, #0x1F
9409A:  BNE             loc_940B4
9409C:  MOVW            R1, #0x2CF8
940A0:  ADD             R1, R0
940A2:  VLDR            S2, [R1]
940A6:  VCMP.F32        S2, #0.0
940AA:  VMRS            APSR_nzcv, FPSCR
940AE:  ITT LS
940B0:  LDRLS           R0, [R0,#0x1C]
940B2:  STRLS           R0, [R1]
940B4:  VLDR            D1, [SP,#0x1B8+var_178]
940B8:  VCMP.F32        S2, S0
940BC:  VMRS            APSR_nzcv, FPSCR
940C0:  BEQ             loc_940FE
940C2:  VCVT.S32.F32    S0, S2
940C6:  LDR             R0, [SP,#0x1B8+var_F8]
940C8:  VCVT.S32.F32    S2, S3
940CC:  LDRB.W          R1, [R11,#9]
940D0:  LSLS            R1, R1, #0x1F
940D2:  VCVT.F32.S32    S0, S0
940D6:  VCVT.F32.S32    S2, S2
940DA:  VSTR            S0, [R11,#0xC]
940DE:  LDR             R0, [R0]
940E0:  VSTR            S2, [R11,#0x10]
940E4:  BNE             loc_940FE
940E6:  MOVW            R1, #0x2CF8
940EA:  ADD             R1, R0
940EC:  VLDR            S0, [R1]
940F0:  VCMP.F32        S0, #0.0
940F4:  VMRS            APSR_nzcv, FPSCR
940F8:  ITT LS
940FA:  LDRLS           R0, [R0,#0x1C]
940FC:  STRLS           R0, [R1]
940FE:  LDR             R1, [SP,#0x1B8+var_F4]
94100:  MOVS            R3, #1
94102:  LDRD.W          R0, R2, [R11,#0x1C]
94106:  MOVS            R6, #0
94108:  STRD.W          R0, R2, [R11,#0x14]
9410C:  STRD.W          R6, R3, [R11,#0x130]
94110:  MOV             R0, R1
94112:  LDRB.W          R2, [R0,#0x7D]!
94116:  STRB.W          R4, [R1,#0x83]
9411A:  CBZ             R2, loc_94122
9411C:  MOV             R11, R1
9411E:  B.W             loc_90FDC
94122:  LDR             R2, [SP,#0x1B8+var_18C]
94124:  MOV             R11, R1
94126:  LDR             R3, [SP,#0x1B8+var_154]
94128:  ORR.W           R8, R8, R2
9412C:  LDR             R6, [SP,#0x1B8+var_100]
9412E:  ORRS            R3, R2
94130:  B.W             loc_9100C
94134:  LDR             R0, =(byte_1ACFF0 - 0x9413A)
94136:  ADD             R0, PC; byte_1ACFF0 ; __guard *
94138:  BLX             j___cxa_guard_acquire
9413C:  CMP             R0, #0
9413E:  BEQ.W           loc_9252C
94142:  ADR             R0, dword_941A0
94144:  MOV             R1, R6
94146:  VLD1.64         {D16-D17}, [R0@128]
9414A:  ADR             R0, dword_941B0
9414C:  VLD1.64         {D18-D19}, [R0@128]
94150:  ADR             R0, dword_941C0
94152:  VLD1.64         {D20-D21}, [R0@128]
94156:  ADR             R0, dword_941D0
94158:  VLD1.64         {D22-D23}, [R0@128]
9415C:  ADR             R0, dword_941E0
9415E:  VLD1.64         {D24-D25}, [R0@128]
94162:  ADR             R0, dword_941F0
94164:  VLD1.64         {D26-D27}, [R0@128]
94168:  ADR             R0, dword_94200
9416A:  VLD1.64         {D28-D29}, [R0@128]
9416E:  LDR             R0, =(byte_1ACFF0 - 0x94178)
94170:  VST1.32         {D16-D17}, [R1@128]!
94174:  ADD             R0, PC; byte_1ACFF0 ; __guard *
94176:  VST1.32         {D18-D19}, [R1@128]!
9417A:  VST1.32         {D20-D21}, [R1@128]!
9417E:  VST1.32         {D22-D23}, [R1@128]!
94182:  VST1.32         {D24-D25}, [R1@128]!
94186:  VST1.32         {D26-D27}, [R1@128]!
9418A:  VST1.64         {D28-D29}, [R1@128]
9418E:  BLX             j___cxa_guard_release
94192:  B.W             loc_9252C
