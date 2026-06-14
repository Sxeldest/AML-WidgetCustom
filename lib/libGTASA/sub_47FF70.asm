; =========================================================
; Game Engine Function: sub_47FF70
; Address            : 0x47FF70 - 0x48011C
; =========================================================

47FF70:  PUSH            {R4-R7,LR}
47FF72:  ADD             R7, SP, #0xC
47FF74:  PUSH.W          {R8-R11}
47FF78:  SUB             SP, SP, #0x20
47FF7A:  STR             R0, [SP,#0x3C+var_2C]
47FF7C:  MOV             R12, R2
47FF7E:  LDR.W           R0, [R0,#0x114]
47FF82:  CMP             R0, #1
47FF84:  BLT.W           loc_480114
47FF88:  VMOV.I16        D16, #3
47FF8C:  LDR             R0, [R3]
47FF8E:  VMOV.I16        Q9, #2
47FF92:  MOV.W           R9, #0
47FF96:  VMOV.I16        Q10, #1
47FF9A:  STR             R0, [SP,#0x3C+var_30]
47FF9C:  STRD.W          R12, R1, [SP,#0x3C+var_3C]
47FFA0:  LDR             R0, [SP,#0x3C+var_30]
47FFA2:  LDR.W           R8, [R12,R9,LSL#2]
47FFA6:  LDR.W           LR, [R0,R9,LSL#2]
47FFAA:  LDRB.W          R0, [R8]
47FFAE:  MOV             R4, R8
47FFB0:  ADD.W           R5, LR, #2
47FFB4:  STRB.W          R0, [LR]
47FFB8:  LDRB.W          R3, [R4,#1]!
47FFBC:  ADD.W           R0, R0, R0,LSL#1
47FFC0:  ADD             R0, R3
47FFC2:  ADDS            R0, #2
47FFC4:  LSRS            R0, R0, #2
47FFC6:  STRB.W          R0, [LR,#1]
47FFCA:  LDR             R2, [R1,#0x28]
47FFCC:  SUBS            R3, R2, #2
47FFCE:  BEQ.W           loc_4800EE
47FFD2:  SUB.W           R0, R8, #1
47FFD6:  CMP             R3, #0x10
47FFD8:  MOV.W           R6, R2,LSL#1
47FFDC:  SUB.W           R11, LR, #2
47FFE0:  STR.W           R11, [SP,#0x3C+var_20]
47FFE4:  STRD.W          R6, R0, [SP,#0x3C+var_28]
47FFE8:  BCC             loc_48009A
47FFEA:  BIC.W           R10, R3, #0xF
47FFEE:  CMP.W           R10, #0
47FFF2:  BEQ             loc_48009A
47FFF4:  ADD.W           R0, R8, R2
47FFF8:  CMP             R5, R0
47FFFA:  ITTT CC
47FFFC:  ADDCC.W         R0, LR, R2,LSL#1
480000:  SUBCC           R0, #2
480002:  CMPCC           R8, R0
480004:  BCC             loc_48009A
480006:  ADD             R4, R10
480008:  ADD.W           R11, LR, R10,LSL#1
48000C:  SUB.W           R12, R3, R10
480010:  ADD.W           R6, R5, R10,LSL#1
480014:  MOV             R1, R10
480016:  MOV             R0, R10
480018:  STR             R3, [SP,#0x3C+var_34]
48001A:  ADD.W           R10, R8, #1
48001E:  ADD.W           R3, R8, #2
480022:  VLD1.8          {D22-D23}, [R10]
480026:  SUBS            R0, #0x10
480028:  VMOVL.U8        Q12, D22
48002C:  VLD1.8          {D30-D31}, [R8]!
480030:  VMOVL.U8        Q11, D23
480034:  VMULL.U16       Q13, D25, D16
480038:  VMULL.U16       Q14, D23, D16
48003C:  VMULL.U16       Q11, D22, D16
480040:  VMULL.U16       Q12, D24, D16
480044:  VMOVN.I32       D27, Q13
480048:  VMOVN.I32       D29, Q14
48004C:  VMOVN.I32       D28, Q11
480050:  VLD1.8          {D22-D23}, [R3]
480054:  VMOVN.I32       D26, Q12
480058:  VADDW.U8        Q12, Q14, D23
48005C:  VADDW.U8        Q11, Q13, D22
480060:  VADDW.U8        Q14, Q14, D31
480064:  VADD.I16        Q12, Q12, Q9
480068:  VADDW.U8        Q13, Q13, D30
48006C:  VADD.I16        Q11, Q11, Q9
480070:  VADD.I16        Q14, Q14, Q10
480074:  VSHRN.I16       D3, Q12, #2
480078:  VADD.I16        Q13, Q13, Q10
48007C:  VSHRN.I16       D2, Q11, #2
480080:  VSHRN.I16       D1, Q14, #2
480084:  VSHRN.I16       D0, Q13, #2
480088:  VST2.8          {D0-D3}, [R5]!
48008C:  BNE             loc_48001A
48008E:  LDR             R0, [SP,#0x3C+var_34]
480090:  LDRD.W          R10, R8, [SP,#0x3C+var_3C]
480094:  CMP             R0, R1
480096:  BNE             loc_4800A4
480098:  B               loc_4800D8
48009A:  MOV             R10, R12
48009C:  MOV             R8, R1
48009E:  MOV             R6, R5
4800A0:  MOV             R12, R3
4800A2:  MOV             R11, LR
4800A4:  LDRB            R3, [R4]
4800A6:  MOV             R0, R6
4800A8:  LDRB.W          R1, [R4,#-1]
4800AC:  SUBS.W          R12, R12, #1
4800B0:  ADD.W           R3, R3, R3,LSL#1
4800B4:  ADD             R1, R3
4800B6:  ADD.W           R1, R1, #1
4800BA:  MOV.W           R1, R1,LSR#2
4800BE:  STRB.W          R1, [R6],#2
4800C2:  LDRB.W          R1, [R4,#1]!
4800C6:  ADD             R1, R3
4800C8:  ADD.W           R1, R1, #2
4800CC:  MOV.W           R1, R1,LSR#2
4800D0:  STRB.W          R1, [R11,#3]
4800D4:  MOV             R11, R0
4800D6:  BNE             loc_4800A4
4800D8:  LDR             R0, [SP,#0x3C+var_20]
4800DA:  MOV             R12, R10
4800DC:  LDR             R1, [SP,#0x3C+var_28]
4800DE:  ADDS            R5, R0, R1
4800E0:  LDR             R0, [SP,#0x3C+var_24]
4800E2:  ADDS            R4, R0, R2
4800E4:  ADD.W           R0, LR, R1
4800E8:  SUB.W           LR, R0, #4
4800EC:  MOV             R1, R8
4800EE:  LDRB            R2, [R4]
4800F0:  ADD.W           R9, R9, #1
4800F4:  LDRB.W          R0, [R4,#-1]
4800F8:  ADD.W           R3, R2, R2,LSL#1
4800FC:  ADD             R0, R3
4800FE:  ADDS            R0, #1
480100:  LSRS            R0, R0, #2
480102:  STRB            R0, [R5]
480104:  STRB.W          R2, [LR,#3]
480108:  LDR             R0, [SP,#0x3C+var_2C]
48010A:  LDR.W           R0, [R0,#0x114]
48010E:  CMP             R9, R0
480110:  BLT.W           loc_47FFA0
480114:  ADD             SP, SP, #0x20 ; ' '
480116:  POP.W           {R8-R11}
48011A:  POP             {R4-R7,PC}
