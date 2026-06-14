; =========================================================
; Game Engine Function: sub_1C8CD4
; Address            : 0x1C8CD4 - 0x1C9758
; =========================================================

1C8CD4:  PUSH            {R4-R11,LR}
1C8CD8:  ADD             R11, SP, #0x1C
1C8CDC:  SUB             SP, SP, #0x174
1C8CE0:  MOV             LR, R0
1C8CE4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C8CF8)
1C8CE8:  STR             R3, [SP,#0x190+var_190]
1C8CEC:  LDR             R9, [R11,#arg_C]
1C8CF0:  LDR             R0, [PC,R0]; __stack_chk_guard
1C8CF4:  LDR             R6, [R11,#arg_4]
1C8CF8:  LDR             R0, [R0]
1C8CFC:  STR             R0, [R11,#var_24]
1C8D00:  MOVW            R0, #0x12E8
1C8D04:  LDR             R0, [LR,R0]
1C8D08:  STR             R0, [SP,#0x190+var_134]
1C8D0C:  LDR             R0, [R11,#arg_0]
1C8D10:  LDR             R5, [LR,#0xD0]
1C8D14:  LDR             R4, [R0]
1C8D18:  CMP             R5, #0
1C8D1C:  STR             LR, [SP,#0x190+var_144]
1C8D20:  STR             R4, [SP,#0x190+var_16C]
1C8D24:  STR             R2, [SP,#0x190+var_128]
1C8D28:  STR             R1, [SP,#0x190+var_150]
1C8D2C:  BEQ             loc_1C94EC
1C8D30:  ADD             R0, R1, #0x128
1C8D34:  VMOV            S0, R4
1C8D38:  ADD             R0, R0, #0x28800
1C8D3C:  STR             R0, [SP,#0x190+var_180]
1C8D40:  ADD             R0, R1, #0x104
1C8D44:  MOV             R12, #0
1C8D48:  ADD             R0, R0, #0x28800
1C8D4C:  STR             R0, [SP,#0x190+var_184]
1C8D50:  MOVW            R0, #0x1D44
1C8D54:  ADD             R0, LR, R0
1C8D58:  STR             R0, [SP,#0x190+var_15C]
1C8D5C:  MOVW            R0, #0x1C48
1C8D60:  ADD             R0, LR, R0
1C8D64:  STR             R0, [SP,#0x190+var_168]
1C8D68:  MOVW            R0, #0x1C44
1C8D6C:  ADD             R8, LR, R0
1C8D70:  ADD             R0, R1, #0x12C
1C8D74:  ADD             R0, R0, #0x28800
1C8D78:  STR             R0, [SP,#0x190+var_188]
1C8D7C:  ADD             R0, R1, #0x108
1C8D80:  ADD             R1, LR, #0x1300
1C8D84:  ADD             R0, R0, #0x28800
1C8D88:  STR             R0, [SP,#0x190+var_18C]
1C8D8C:  MOVW            R0, #0x1E90
1C8D90:  ADD             R0, LR, R0
1C8D94:  STR             R0, [SP,#0x190+var_140]
1C8D98:  MOVW            R0, #0x1D48
1C8D9C:  ADD             R0, LR, R0
1C8DA0:  STR             R0, [SP,#0x190+var_160]
1C8DA4:  MOVW            R0, #0x12E0
1C8DA8:  ADD             R0, LR, R0
1C8DAC:  STR             R0, [SP,#0x190+var_17C]
1C8DB0:  VCVT.F32.S32    S2, S0
1C8DB4:  VLDR            S0, =0.000061035
1C8DB8:  ADD             R0, SP, #0x190+var_124
1C8DBC:  STR             R8, [SP,#0x190+var_178]
1C8DC0:  ADD             R10, R0, #4
1C8DC4:  MOVW            R0, #0x9E4
1C8DC8:  STR             R10, [SP,#0x190+var_148]
1C8DCC:  VMUL.F32        S2, S2, S0
1C8DD0:  STR             R12, [SP,#0x190+var_138]
1C8DD4:  MOV             R2, #0
1C8DD8:  STR             R1, [SP,#0x190+var_170]
1C8DDC:  LDR             R1, [LR,#0xDC]
1C8DE0:  STR             R6, [SP,#0x190+var_130]
1C8DE4:  CMP             R1, R6
1C8DE8:  MOVLS           R1, R6
1C8DEC:  SUB             R1, R1, R6
1C8DF0:  STR             R1, [SP,#0x190+var_13C]
1C8DF4:  VMOV            S4, R1
1C8DF8:  VCVT.F32.S32    S4, S4
1C8DFC:  LDR             R1, [SP,#0x190+var_17C]
1C8E00:  LDR             R12, [R1]
1C8E04:  LDR             R1, [SP,#0x190+var_170]
1C8E08:  ADD             R7, R8, R2
1C8E0C:  ADD             R4, R10, R2
1C8E10:  VLDR            S6, [R7]
1C8E14:  VLDR            S8, [R7,#4]
1C8E18:  ADD             R7, R1, R2
1C8E1C:  VMUL.F32        S6, S6, S4
1C8E20:  ADD             R2, R2, #8
1C8E24:  VLDR            S10, [R7,#-4]
1C8E28:  CMP             R2, #0x100
1C8E2C:  VSUB.F32        S6, S10, S6
1C8E30:  VSTR            S6, [R4,#-4]
1C8E34:  VMUL.F32        S6, S8, S4
1C8E38:  VLDR            S8, [R7]
1C8E3C:  VSUB.F32        S6, S8, S6
1C8E40:  VSTR            S6, [R4]
1C8E44:  BNE             loc_1C8E08
1C8E48:  LDR             R6, [SP,#0x190+var_138]
1C8E4C:  LDR             R1, [SP,#0x190+var_160]
1C8E50:  LDR             R2, [SP,#0x190+var_13C]
1C8E54:  ADD             R4, LR, R6,LSL#3
1C8E58:  LDR             R8, [R1]
1C8E5C:  MOV             R1, #0x1C00
1C8E60:  LDR             R7, [R4,R1]
1C8E64:  LDR             R1, [SP,#0x190+var_15C]
1C8E68:  MLS             R7, R8, R2, R7
1C8E6C:  LDR             R8, [SP,#0x190+var_130]
1C8E70:  LDR             R3, [R1]
1C8E74:  MOVW            R1, #0x1BFC
1C8E78:  LDR             R1, [R4,R1]
1C8E7C:  ADD             R10, R12, R8
1C8E80:  MOV             R12, R6
1C8E84:  MLS             R1, R3, R2, R1
1C8E88:  MOV             R6, R8
1C8E8C:  CMP             R6, #0
1C8E90:  ADD             R8, R7, #0x8000
1C8E94:  ANDEQ           R7, R10, #0x3F ; '?'
1C8E98:  ADDEQ           R6, R10, #1
1C8E9C:  ANDEQ           R6, R6, #0x1F
1C8EA0:  ADD             R3, R1, #0x8000
1C8EA4:  LDREQ           R1, [SP,#0x190+var_128]
1C8EA8:  ADDEQ           R1, R1, R12,LSL#2
1C8EAC:  VLDREQ          S4, [R1]
1C8EB0:  ADDEQ           R1, R1, R5,LSL#2
1C8EB4:  VLDREQ          S6, [R1]
1C8EB8:  MOVWEQ          R1, #0x1E94
1C8EBC:  ADDEQ           R1, R4, R1
1C8EC0:  VSUBEQ.F32      S6, S6, S4
1C8EC4:  VMULEQ.F32      S6, S2, S6
1C8EC8:  VADDEQ.F32      S4, S6, S4
1C8ECC:  VLDREQ          S6, [R1]
1C8ED0:  LDREQ           R1, [SP,#0x190+var_140]
1C8ED4:  VLDREQ          S8, [R1]
1C8ED8:  MOVWEQ          R1, #0x1E98
1C8EDC:  ADDEQ           R1, R4, R1
1C8EE0:  VSUBEQ.F32      S6, S6, S4
1C8EE4:  VMULEQ.F32      S6, S6, S8
1C8EE8:  VADDEQ.F32      S4, S6, S4
1C8EEC:  VLDREQ          S6, [R1]
1C8EF0:  ADDEQ           R1, LR, R12,LSL#8
1C8EF4:  ADDEQ           R2, R1, #0xE0
1C8EF8:  ADDEQ           R1, R1, R6,LSL#3
1C8EFC:  ADDEQ           R7, R2, R7,LSL#2
1C8F00:  VSUBEQ.F32      S6, S6, S4
1C8F04:  VMULEQ.F32      S6, S6, S8
1C8F08:  VADDEQ.F32      S4, S6, S4
1C8F0C:  VSTREQ          S4, [R7]
1C8F10:  SUBEQ           R7, R10, R3,LSR#16
1C8F14:  ANDEQ           R7, R7, #0x3F ; '?'
1C8F18:  LDREQ           R6, [SP,#0x190+var_184]
1C8F1C:  VLDREQ          S8, [SP,#0x190+var_124]
1C8F20:  ADDEQ           R7, R2, R7,LSL#2
1C8F24:  VLDREQ          S10, [R6]
1C8F28:  VLDREQ          S4, [R7]
1C8F2C:  ADDEQ           R7, R1, #0x9E0
1C8F30:  ADDEQ           R1, R1, R0
1C8F34:  VLDREQ          S6, [R7]
1C8F38:  VMULEQ.F32      S4, S8, S4
1C8F3C:  SUBEQ           R7, R10, R8,LSR#16
1C8F40:  VSUBEQ.F32      S6, S10, S6
1C8F44:  ANDEQ           R7, R7, #0x3F ; '?'
1C8F48:  ADDEQ           R2, R2, R7,LSL#2
1C8F4C:  VSUBEQ.F32      S4, S6, S4
1C8F50:  VLDREQ          S6, [R2]
1C8F54:  VSTREQ          S4, [R6]
1C8F58:  MOVEQ           R6, #0
1C8F5C:  VLDREQ          S4, [R1]
1C8F60:  LDREQ           R1, [SP,#0x190+var_18C]
1C8F64:  VLDREQ          S8, [SP,#0x190+var_120]
1C8F68:  VLDREQ          S10, [R1]
1C8F6C:  VMULEQ.F32      S6, S8, S6
1C8F70:  VSUBEQ.F32      S4, S10, S4
1C8F74:  VSUBEQ.F32      S4, S4, S6
1C8F78:  VSTREQ          S4, [R1]
1C8F7C:  LDR             R1, [SP,#0x190+var_13C]
1C8F80:  STR             R3, [SP,#0x190+var_130]
1C8F84:  MOV             R3, #0
1C8F88:  CMP             R1, #1
1C8F8C:  LDR             R1, [SP,#0x190+var_16C]
1C8F90:  STR             R4, [SP,#0x190+var_174]
1C8F94:  STR             R8, [SP,#0x190+var_12C]
1C8F98:  BLT             loc_1C91B4
1C8F9C:  CMP             R9, #0
1C8FA0:  BEQ             loc_1C91B4
1C8FA4:  MOVW            R2, #0x1E94
1C8FA8:  MOV             R7, #0
1C8FAC:  ADD             R2, R4, R2
1C8FB0:  MOV             R4, R1
1C8FB4:  MOV             R3, #0
1C8FB8:  STR             R2, [SP,#0x190+var_164]
1C8FBC:  MUL             R1, R7, R5
1C8FC0:  VMOV            S4, R4
1C8FC4:  STR             R3, [SP,#0x190+var_14C]
1C8FC8:  VCVT.F32.S32    S4, S4
1C8FCC:  LDR             R2, [SP,#0x190+var_128]
1C8FD0:  ADD             LR, LR, R12,LSL#8
1C8FD4:  ADD             R8, R10, #1
1C8FD8:  ADD             R1, R2, R1,LSL#2
1C8FDC:  LDR             R2, [SP,#0x190+var_164]
1C8FE0:  ADD             R1, R1, R12,LSL#2
1C8FE4:  VLDR            S6, [R1]
1C8FE8:  ADD             R1, R1, R5,LSL#2
1C8FEC:  VMUL.F32        S4, S4, S0
1C8FF0:  VLDR            S8, [R1]
1C8FF4:  LDR             R1, [SP,#0x190+var_140]
1C8FF8:  VSUB.F32        S8, S8, S6
1C8FFC:  VLDR            S10, [R1]
1C9000:  ADD             R1, LR, #0xE0
1C9004:  VMUL.F32        S4, S4, S8
1C9008:  VLDR            S8, [R2,#4]
1C900C:  VADD.F32        S4, S4, S6
1C9010:  VLDR            S6, [R2]
1C9014:  VSUB.F32        S6, S6, S4
1C9018:  VMUL.F32        S6, S6, S10
1C901C:  VADD.F32        S4, S6, S4
1C9020:  VSUB.F32        S6, S8, S4
1C9024:  VSTR            S4, [R2]
1C9028:  VMUL.F32        S6, S6, S10
1C902C:  VADD.F32        S6, S6, S4
1C9030:  VSTR            S6, [R2,#4]
1C9034:  AND             R2, R10, #0x3F ; '?'
1C9038:  ADD             R2, R1, R2,LSL#2
1C903C:  VSTR            S6, [R2]
1C9040:  LDR             R2, [SP,#0x190+var_130]
1C9044:  LDR             R3, [SP,#0x190+var_12C]
1C9048:  SUB             R2, R10, R2,LSR#16
1C904C:  AND             R2, R2, #0x3F ; '?'
1C9050:  SUB             R3, R10, R3,LSR#16
1C9054:  AND             R3, R3, #0x3F ; '?'
1C9058:  ADD             R2, R1, R2,LSL#2
1C905C:  ADD             R1, R1, R3,LSL#2
1C9060:  AND             R3, R10, #0x1F
1C9064:  VLDR            S6, [R2]
1C9068:  LDR             R2, [SP,#0x190+var_160]
1C906C:  VLDR            S4, [R1]
1C9070:  ADD             R1, LR, R3,LSL#3
1C9074:  LDR             R2, [R2]
1C9078:  STR             R2, [SP,#0x190+var_158]
1C907C:  LDR             R2, [SP,#0x190+var_15C]
1C9080:  LDR             R2, [R2]
1C9084:  STR             R2, [SP,#0x190+var_154]
1C9088:  MOV             R2, #0
1C908C:  STR             R2, [R1,#0x9E0]
1C9090:  STR             R2, [R1,#0x9E4]
1C9094:  MOV             R1, #1
1C9098:  LDR             R12, [SP,#0x190+var_168]
1C909C:  LDR             R2, [SP,#0x190+var_148]
1C90A0:  VLDR            S8, [R2,#-4]
1C90A4:  ADD             R3, R10, R1
1C90A8:  AND             R3, R3, #0x1F
1C90AC:  ADD             R1, R1, #1
1C90B0:  VMUL.F32        S10, S8, S6
1C90B4:  CMP             R1, #0x21 ; '!'
1C90B8:  ADD             R3, LR, R3,LSL#3
1C90BC:  ADD             R9, R3, #0x9E0
1C90C0:  ADD             R3, R3, R0
1C90C4:  VLDR            S12, [R9]
1C90C8:  VADD.F32        S10, S12, S10
1C90CC:  VSTR            S10, [R9]
1C90D0:  VLDR            S10, [R2]
1C90D4:  VLDR            S14, [R3]
1C90D8:  VMUL.F32        S12, S10, S4
1C90DC:  VADD.F32        S12, S14, S12
1C90E0:  VSTR            S12, [R3]
1C90E4:  VLDR            S12, [R12,#-4]
1C90E8:  VLDR            S14, [R12]
1C90EC:  ADD             R12, R12, #8
1C90F0:  VADD.F32        S8, S8, S12
1C90F4:  VADD.F32        S10, S10, S14
1C90F8:  VSTR            S8, [R2,#-4]
1C90FC:  VSTR            S10, [R2]
1C9100:  ADD             R2, R2, #8
1C9104:  BNE             loc_1C90A0
1C9108:  ADD             R1, R6, R6,LSL#3
1C910C:  LDR             R2, [SP,#0x190+var_150]
1C9110:  ADD             R6, R6, #1
1C9114:  ADD             R1, R2, R1,LSL#2
1C9118:  AND             R2, R8, #0x1F
1C911C:  ADD             R2, LR, R2,LSL#3
1C9120:  VLDR            S4, [R1,#0xB8]
1C9124:  ADD             R3, R2, #0x9E0
1C9128:  ADD             R2, R2, R0
1C912C:  VLDR            S6, [R1,#0xBC]
1C9130:  VLDR            S8, [R3]
1C9134:  VADD.F32        S4, S4, S8
1C9138:  VSTR            S4, [R1,#0xB8]
1C913C:  VLDR            S4, [R2]
1C9140:  VADD.F32        S4, S6, S4
1C9144:  VSTR            S4, [R1,#0xBC]
1C9148:  LDR             R1, [SP,#0x190+var_12C]
1C914C:  LDR             R2, [SP,#0x190+var_158]
1C9150:  LDR             R3, [SP,#0x190+var_14C]
1C9154:  ADD             R1, R2, R1
1C9158:  STR             R1, [SP,#0x190+var_12C]
1C915C:  LDR             R1, [SP,#0x190+var_130]
1C9160:  ADD             R3, R3, #1
1C9164:  LDR             R2, [SP,#0x190+var_154]
1C9168:  ADD             R1, R2, R1
1C916C:  STR             R1, [SP,#0x190+var_130]
1C9170:  LDR             R1, [SP,#0x190+var_134]
1C9174:  ADD             R4, R4, R1
1C9178:  LDR             R1, [SP,#0x190+var_13C]
1C917C:  ADD             R7, R7, R4,LSR#14
1C9180:  BFC             R4, #0xE, #0x12
1C9184:  CMP             R1, #2
1C9188:  BLT             loc_1C91C4
1C918C:  LDR             R9, [R11,#arg_C]
1C9190:  MOV             R10, R8
1C9194:  LDR             LR, [SP,#0x190+var_144]
1C9198:  SUB             R1, R1, #1
1C919C:  LDR             R12, [SP,#0x190+var_138]
1C91A0:  CMP             R3, R9
1C91A4:  STR             R1, [SP,#0x190+var_13C]
1C91A8:  BCC             loc_1C8FBC
1C91AC:  B               loc_1C91D0
1C91B0:  DCFS 0.000061035
1C91B4:  MOV             R8, R10
1C91B8:  MOV             R4, R1
1C91BC:  MOV             R7, #0
1C91C0:  B               loc_1C91D0
1C91C4:  LDR             LR, [SP,#0x190+var_144]
1C91C8:  LDR             R9, [R11,#arg_C]
1C91CC:  LDR             R12, [SP,#0x190+var_138]
1C91D0:  LDR             R1, [SP,#0x190+var_12C]
1C91D4:  CMP             R3, R9
1C91D8:  MOV             R1, R1,LSR#16
1C91DC:  STR             R1, [SP,#0x190+var_12C]
1C91E0:  LDR             R1, [SP,#0x190+var_130]
1C91E4:  MOV             R1, R1,LSR#16
1C91E8:  STR             R1, [SP,#0x190+var_13C]
1C91EC:  BCS             loc_1C93BC
1C91F0:  ADD             R1, R6, R9
1C91F4:  STR             R1, [SP,#0x190+var_164]
1C91F8:  ADD             R1, R8, R9
1C91FC:  LDR             R2, [SP,#0x190+var_174]
1C9200:  STR             R1, [SP,#0x190+var_158]
1C9204:  MOVW            R1, #0x1E94
1C9208:  ADD             R1, R2, R1
1C920C:  STR             R1, [SP,#0x190+var_154]
1C9210:  LDR             R1, [SP,#0x190+var_128]
1C9214:  MOV             R12, R3
1C9218:  STR             R6, [SP,#0x190+var_130]
1C921C:  STR             R3, [SP,#0x190+var_14C]
1C9220:  MUL             R2, R7, R5
1C9224:  VMOV            S4, R4
1C9228:  ADD             R6, R8, #1
1C922C:  VCVT.F32.S32    S4, S4
1C9230:  LDR             R3, [SP,#0x190+var_138]
1C9234:  ADD             R10, LR, R3,LSL#8
1C9238:  ADD             R2, R1, R2,LSL#2
1C923C:  LDR             R1, [SP,#0x190+var_140]
1C9240:  ADD             R2, R2, R3,LSL#2
1C9244:  AND             R3, R8, #0x3F ; '?'
1C9248:  VLDR            S6, [R2]
1C924C:  ADD             R2, R2, R5,LSL#2
1C9250:  VMUL.F32        S4, S4, S0
1C9254:  VLDR            S10, [R1]
1C9258:  VLDR            S8, [R2]
1C925C:  LDR             R2, [SP,#0x190+var_154]
1C9260:  VSUB.F32        S8, S8, S6
1C9264:  VMUL.F32        S4, S4, S8
1C9268:  VLDR            S8, [R2,#4]
1C926C:  VADD.F32        S4, S4, S6
1C9270:  VLDR            S6, [R2]
1C9274:  VSUB.F32        S6, S6, S4
1C9278:  VMUL.F32        S6, S6, S10
1C927C:  VADD.F32        S4, S6, S4
1C9280:  VSUB.F32        S6, S8, S4
1C9284:  VSTR            S4, [R2]
1C9288:  VMUL.F32        S6, S6, S10
1C928C:  VADD.F32        S6, S6, S4
1C9290:  VSTR            S6, [R2,#4]
1C9294:  ADD             R2, R10, #0xE0
1C9298:  ADD             R3, R2, R3,LSL#2
1C929C:  VSTR            S6, [R3]
1C92A0:  LDR             R1, [SP,#0x190+var_13C]
1C92A4:  SUB             R3, R8, R1
1C92A8:  LDR             R1, [SP,#0x190+var_12C]
1C92AC:  AND             R3, R3, #0x3F ; '?'
1C92B0:  SUB             R1, R8, R1
1C92B4:  AND             R1, R1, #0x3F ; '?'
1C92B8:  ADD             R3, R2, R3,LSL#2
1C92BC:  ADD             R1, R2, R1,LSL#2
1C92C0:  AND             R2, R8, #0x1F
1C92C4:  VLDR            S6, [R3]
1C92C8:  ADD             R2, R10, R2,LSL#3
1C92CC:  VLDR            S4, [R1]
1C92D0:  MOV             R1, #0
1C92D4:  STR             R1, [R2,#0x9E0]
1C92D8:  STR             R1, [R2,#0x9E4]
1C92DC:  MOV             R2, #1
1C92E0:  LDR             R9, [SP,#0x190+var_148]
1C92E4:  VLDR            S8, [R9,#-4]
1C92E8:  ADD             R1, R8, R2
1C92EC:  AND             R1, R1, #0x1F
1C92F0:  ADD             R2, R2, #1
1C92F4:  VMUL.F32        S8, S8, S6
1C92F8:  CMP             R2, #0x21 ; '!'
1C92FC:  ADD             R1, R10, R1,LSL#3
1C9300:  ADD             LR, R1, #0x9E0
1C9304:  ADD             R1, R1, R0
1C9308:  VLDR            S10, [LR]
1C930C:  VADD.F32        S8, S10, S8
1C9310:  VSTR            S8, [LR]
1C9314:  VLDR            S8, [R9]
1C9318:  ADD             R9, R9, #8
1C931C:  VLDR            S10, [R1]
1C9320:  VMUL.F32        S8, S8, S4
1C9324:  VADD.F32        S8, S10, S8
1C9328:  VSTR            S8, [R1]
1C932C:  BNE             loc_1C92E4
1C9330:  LDR             R3, [SP,#0x190+var_130]
1C9334:  MOV             R8, R6
1C9338:  LDR             R2, [SP,#0x190+var_150]
1C933C:  ADD             R12, R12, #1
1C9340:  LDR             R9, [R11,#arg_C]
1C9344:  ADD             R1, R3, R3,LSL#3
1C9348:  ADD             R3, R3, #1
1C934C:  CMP             R12, R9
1C9350:  ADD             R1, R2, R1,LSL#2
1C9354:  AND             R2, R6, #0x1F
1C9358:  ADD             R2, R10, R2,LSL#3
1C935C:  VLDR            S4, [R1,#0xB8]
1C9360:  ADD             R6, R2, #0x9E0
1C9364:  ADD             R2, R2, R0
1C9368:  VLDR            S6, [R1,#0xBC]
1C936C:  VLDR            S8, [R6]
1C9370:  VADD.F32        S4, S4, S8
1C9374:  VSTR            S4, [R1,#0xB8]
1C9378:  VLDR            S4, [R2]
1C937C:  VADD.F32        S4, S6, S4
1C9380:  VSTR            S4, [R1,#0xBC]
1C9384:  LDR             R1, [SP,#0x190+var_134]
1C9388:  LDR             LR, [SP,#0x190+var_144]
1C938C:  ADD             R4, R4, R1
1C9390:  LDR             R1, [SP,#0x190+var_128]
1C9394:  STR             R3, [SP,#0x190+var_130]
1C9398:  ADD             R7, R7, R4,LSR#14
1C939C:  BFC             R4, #0xE, #0x12
1C93A0:  BNE             loc_1C9220
1C93A4:  LDR             R1, [SP,#0x190+var_14C]
1C93A8:  LDR             R2, [SP,#0x190+var_164]
1C93AC:  LDR             R12, [SP,#0x190+var_138]
1C93B0:  SUB             R6, R2, R1
1C93B4:  LDR             R2, [SP,#0x190+var_158]
1C93B8:  SUB             R8, R2, R1
1C93BC:  LDR             R1, [R11,#arg_8]
1C93C0:  LDR             R10, [SP,#0x190+var_148]
1C93C4:  CMP             R6, R1
1C93C8:  SUB             R6, R6, R9
1C93CC:  MULEQ           R1, R7, R5
1C93D0:  VMOVEQ          S4, R4
1C93D4:  ANDEQ           R3, R8, #0x3F ; '?'
1C93D8:  VCVTEQ.F32.S32  S4, S4
1C93DC:  LDREQ           R2, [SP,#0x190+var_128]
1C93E0:  ADDEQ           R1, R2, R1,LSL#2
1C93E4:  LDREQ           R2, [SP,#0x190+var_174]
1C93E8:  ADDEQ           R1, R1, R12,LSL#2
1C93EC:  VLDREQ          S6, [R1]
1C93F0:  ADDEQ           R1, R1, R5,LSL#2
1C93F4:  VMULEQ.F32      S4, S4, S0
1C93F8:  VLDREQ          S8, [R1]
1C93FC:  MOVWEQ          R1, #0x1E94
1C9400:  ADDEQ           R1, R2, R1
1C9404:  VSUBEQ.F32      S8, S8, S6
1C9408:  VMULEQ.F32      S4, S4, S8
1C940C:  VADDEQ.F32      S4, S4, S6
1C9410:  VLDREQ          S6, [R1]
1C9414:  LDREQ           R1, [SP,#0x190+var_140]
1C9418:  VLDREQ          S8, [R1]
1C941C:  MOVWEQ          R1, #0x1E98
1C9420:  ADDEQ           R1, R2, R1
1C9424:  VSUBEQ.F32      S6, S6, S4
1C9428:  VMULEQ.F32      S6, S6, S8
1C942C:  VADDEQ.F32      S4, S6, S4
1C9430:  VLDREQ          S6, [R1]
1C9434:  ADDEQ           R1, LR, R12,LSL#8
1C9438:  ADDEQ           R2, R1, #0xE0
1C943C:  ADDEQ           R3, R2, R3,LSL#2
1C9440:  VSUBEQ.F32      S6, S6, S4
1C9444:  VMULEQ.F32      S6, S6, S8
1C9448:  VADDEQ.F32      S4, S6, S4
1C944C:  VSTREQ          S4, [R3]
1C9450:  LDREQ           R3, [SP,#0x190+var_13C]
1C9454:  VLDREQ          S6, [SP,#0x190+var_124]
1C9458:  SUBEQ           R3, R8, R3
1C945C:  ANDEQ           R3, R3, #0x3F ; '?'
1C9460:  ADDEQ           R3, R2, R3,LSL#2
1C9464:  VLDREQ          S4, [R3]
1C9468:  ADDEQ           R3, R8, #1
1C946C:  ANDEQ           R3, R3, #0x1F
1C9470:  VMULEQ.F32      S4, S6, S4
1C9474:  ADDEQ           R12, R1, R3,LSL#3
1C9478:  LDREQ           R1, [SP,#0x190+var_180]
1C947C:  ADDEQ           R3, R12, #0x9E0
1C9480:  VLDREQ          S6, [R3]
1C9484:  LDREQ           R3, [SP,#0x190+var_12C]
1C9488:  VADDEQ.F32      S4, S4, S6
1C948C:  VLDREQ          S6, [R1]
1C9490:  SUBEQ           R3, R8, R3
1C9494:  ANDEQ           R3, R3, #0x3F ; '?'
1C9498:  ADDEQ           R2, R2, R3,LSL#2
1C949C:  VADDEQ.F32      S4, S4, S6
1C94A0:  VLDREQ          S6, [R2]
1C94A4:  VSTREQ          S4, [R1]
1C94A8:  ADDEQ           R1, R12, R0
1C94AC:  VLDREQ          S4, [SP,#0x190+var_120]
1C94B0:  LDREQ           R12, [SP,#0x190+var_138]
1C94B4:  VMULEQ.F32      S4, S4, S6
1C94B8:  VLDREQ          S6, [R1]
1C94BC:  LDREQ           R1, [SP,#0x190+var_188]
1C94C0:  ADD             R12, R12, #1
1C94C4:  VADDEQ.F32      S4, S4, S6
1C94C8:  VLDREQ          S6, [R1]
1C94CC:  VADDEQ.F32      S4, S4, S6
1C94D0:  VSTREQ          S4, [R1]
1C94D4:  CMP             R12, R5
1C94D8:  LDR             R1, [SP,#0x190+var_170]
1C94DC:  LDR             R8, [SP,#0x190+var_178]
1C94E0:  ADD             R1, R1, #0x100
1C94E4:  BNE             loc_1C8DD0
1C94E8:  B               loc_1C94F4
1C94EC:  MOV             R7, #0
1C94F0:  MOV             R1, R4
1C94F4:  LDR             R0, [SP,#0x190+var_150]
1C94F8:  LDR             R0, [R0,#0x38]
1C94FC:  STR             R0, [SP,#0x190+var_140]
1C9500:  CMP             R0, #0
1C9504:  BEQ             loc_1C9720
1C9508:  LDR             R0, [SP,#0x190+var_16C]
1C950C:  MOV             R1, #0
1C9510:  MOVW            R12, #0x1EE8
1C9514:  VMOV            S0, R0
1C9518:  VCVT.F32.S32    S2, S0
1C951C:  VLDR            S0, =0.000061035
1C9520:  VMUL.F32        S2, S2, S0
1C9524:  ADD             R0, R1, R1,LSL#1
1C9528:  ADD             R8, LR, R0,LSL#4
1C952C:  MOVW            R0, #0x1EDC
1C9530:  LDR             R0, [R8,R0]
1C9534:  STR             R1, [SP,#0x190+var_13C]
1C9538:  CMP             R0, #0
1C953C:  CMPNE           R5, #0
1C9540:  BEQ             loc_1C9708
1C9544:  MOVW            R1, #0x40CC
1C9548:  ADD             R1, R0, R1
1C954C:  STR             R1, [SP,#0x190+var_12C]
1C9550:  MOVW            R1, #0x1EE0
1C9554:  ADD             R1, R8, R1
1C9558:  VLDR            S4, [R1]
1C955C:  MOVW            R1, #0x40C8
1C9560:  ADD             R1, R0, R1
1C9564:  STR             R1, [SP,#0x190+var_130]
1C9568:  MOVW            R1, #0x1EE4
1C956C:  ADD             R3, R8, R1
1C9570:  MOV             R1, #0
1C9574:  ADD             R0, R0, #0xC8
1C9578:  STR             R0, [SP,#0x190+var_138]
1C957C:  CMP             R6, #0
1C9580:  LDREQ           R0, [SP,#0x190+var_128]
1C9584:  MOVEQ           R6, #0
1C9588:  VLDREQ          S10, [R3]
1C958C:  ADDEQ           R0, R0, R1,LSL#2
1C9590:  VLDREQ          S6, [R0]
1C9594:  ADDEQ           R0, R0, R5,LSL#2
1C9598:  VLDREQ          S8, [R0]
1C959C:  ADDEQ           R0, R8, R1,LSL#2
1C95A0:  ADDEQ           R0, R0, R12
1C95A4:  VSUBEQ.F32      S8, S8, S6
1C95A8:  VMULEQ.F32      S8, S2, S8
1C95AC:  VADDEQ.F32      S6, S8, S6
1C95B0:  VLDREQ          S8, [R0]
1C95B4:  LDREQ           R0, [SP,#0x190+var_130]
1C95B8:  VSUBEQ.F32      S8, S6, S8
1C95BC:  VMULEQ.F32      S8, S8, S10
1C95C0:  VSUBEQ.F32      S6, S8, S6
1C95C4:  VLDREQ          S8, [R0]
1C95C8:  VMULEQ.F32      S6, S6, S4
1C95CC:  VADDEQ.F32      S6, S8, S6
1C95D0:  VSTREQ          S6, [R0]
1C95D4:  CMP             R9, #0
1C95D8:  LDR             R4, [SP,#0x190+var_16C]
1C95DC:  BEQ             loc_1C9688
1C95E0:  LDR             R0, [SP,#0x190+var_138]
1C95E4:  ADD             R2, R8, R1,LSL#2
1C95E8:  ADD             LR, R2, R12
1C95EC:  MOV             R12, R9
1C95F0:  MOV             R10, R6
1C95F4:  ADD             R0, R0, R6,LSL#2
1C95F8:  LDR             R9, [SP,#0x190+var_134]
1C95FC:  MOV             R7, #0
1C9600:  LDR             R6, [SP,#0x190+var_128]
1C9604:  MUL             R2, R7, R5
1C9608:  VMOV            S6, R4
1C960C:  ADD             R4, R4, R9
1C9610:  VCVT.F32.S32    S6, S6
1C9614:  SUBS            R12, R12, #1
1C9618:  ADD             R7, R7, R4,LSR#14
1C961C:  BFC             R4, #0xE, #0x12
1C9620:  ADD             R2, R6, R2,LSL#2
1C9624:  ADD             R2, R2, R1,LSL#2
1C9628:  VLDR            S8, [R2]
1C962C:  ADD             R2, R2, R5,LSL#2
1C9630:  VMUL.F32        S6, S6, S0
1C9634:  VLDR            S10, [R2]
1C9638:  VSUB.F32        S10, S10, S8
1C963C:  VMUL.F32        S6, S6, S10
1C9640:  VLDR            S10, [R3]
1C9644:  VADD.F32        S6, S6, S8
1C9648:  VLDR            S8, [LR]
1C964C:  VSUB.F32        S8, S8, S6
1C9650:  VMUL.F32        S8, S8, S10
1C9654:  VADD.F32        S6, S8, S6
1C9658:  VMUL.F32        S8, S6, S4
1C965C:  VSTR            S6, [LR]
1C9660:  VLDR            S6, [R0]
1C9664:  VADD.F32        S6, S8, S6
1C9668:  VSTR            S6, [R0]
1C966C:  ADD             R0, R0, #4
1C9670:  BNE             loc_1C9604
1C9674:  LDR             R9, [R11,#arg_C]
1C9678:  MOV             R6, R10
1C967C:  MOVW            R12, #0x1EE8
1C9680:  ADD             R6, R6, R9
1C9684:  B               loc_1C968C
1C9688:  MOV             R7, #0
1C968C:  LDR             R0, [R11,#arg_8]
1C9690:  CMP             R6, R0
1C9694:  SUB             R6, R6, R9
1C9698:  MULEQ           R0, R7, R5
1C969C:  VMOVEQ          S6, R4
1C96A0:  VCVTEQ.F32.S32  S6, S6
1C96A4:  LDREQ           R2, [SP,#0x190+var_128]
1C96A8:  ADDEQ           R0, R2, R0,LSL#2
1C96AC:  ADDEQ           R0, R0, R1,LSL#2
1C96B0:  VLDREQ          S8, [R0]
1C96B4:  ADDEQ           R0, R0, R5,LSL#2
1C96B8:  VMULEQ.F32      S6, S6, S0
1C96BC:  VLDREQ          S10, [R0]
1C96C0:  ADDEQ           R0, R8, R1,LSL#2
1C96C4:  ADDEQ           R0, R0, R12
1C96C8:  ADD             R1, R1, #1
1C96CC:  VSUBEQ.F32      S10, S10, S8
1C96D0:  VMULEQ.F32      S6, S6, S10
1C96D4:  VLDREQ          S10, [R3]
1C96D8:  VADDEQ.F32      S6, S6, S8
1C96DC:  VLDREQ          S8, [R0]
1C96E0:  LDREQ           R0, [SP,#0x190+var_12C]
1C96E4:  VSUBEQ.F32      S8, S8, S6
1C96E8:  VMULEQ.F32      S8, S8, S10
1C96EC:  VADDEQ.F32      S6, S8, S6
1C96F0:  VLDREQ          S8, [R0]
1C96F4:  VMULEQ.F32      S6, S6, S4
1C96F8:  VADDEQ.F32      S6, S6, S8
1C96FC:  VSTREQ          S6, [R0]
1C9700:  CMP             R1, R5
1C9704:  BNE             loc_1C957C
1C9708:  LDR             R1, [SP,#0x190+var_13C]
1C970C:  LDR             R0, [SP,#0x190+var_140]
1C9710:  LDR             LR, [SP,#0x190+var_144]
1C9714:  ADD             R1, R1, #1
1C9718:  CMP             R1, R0
1C971C:  BCC             loc_1C9524
1C9720:  LDR             R1, [SP,#0x190+var_190]
1C9724:  LDR             R0, [R1]
1C9728:  ADD             R0, R0, R7
1C972C:  STR             R0, [R1]
1C9730:  LDR             R0, [R11,#arg_0]
1C9734:  STR             R4, [R0]
1C9738:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C9748)
1C973C:  LDR             R1, [R11,#var_24]
1C9740:  LDR             R0, [PC,R0]; __stack_chk_guard
1C9744:  LDR             R0, [R0]
1C9748:  SUBS            R0, R0, R1
1C974C:  SUBEQ           SP, R11, #0x1C
1C9750:  POPEQ           {R4-R11,PC}
1C9754:  BL              __stack_chk_fail
