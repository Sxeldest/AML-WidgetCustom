; =========================================================
; Game Engine Function: sub_110F30
; Address            : 0x110F30 - 0x11110A
; =========================================================

110F30:  PUSH            {R4-R7,LR}
110F32:  ADD             R7, SP, #0xC
110F34:  PUSH.W          {R8-R10}
110F38:  SUB             SP, SP, #0x18
110F3A:  MOV             R5, R0
110F3C:  LDR             R0, =(byte_263404 - 0x110F44)
110F3E:  MOV             R4, R1
110F40:  ADD             R0, PC; byte_263404
110F42:  LDRB            R0, [R0]
110F44:  DMB.W           ISH
110F48:  LSLS            R0, R0, #0x1F
110F4A:  BEQ.W           loc_111078
110F4E:  LDR             R0, =(byte_26340C - 0x110F54)
110F50:  ADD             R0, PC; byte_26340C
110F52:  LDRB            R0, [R0]
110F54:  DMB.W           ISH
110F58:  LSLS            R0, R0, #0x1F
110F5A:  BEQ.W           loc_1110A8
110F5E:  LDR             R0, =(byte_263414 - 0x110F64)
110F60:  ADD             R0, PC; byte_263414
110F62:  LDRB            R0, [R0]
110F64:  DMB.W           ISH
110F68:  LSLS            R0, R0, #0x1F
110F6A:  BEQ.W           loc_1110DA
110F6E:  LDR             R0, =(byte_2633FC - 0x110F74)
110F70:  ADD             R0, PC; byte_2633FC
110F72:  LDRB            R0, [R0]
110F74:  CBZ             R0, loc_110F8C
110F76:  LDRB.W          R0, [R4,#0x3A]
110F7A:  AND.W           R0, R0, #7
110F7E:  CMP             R0, #3
110F80:  ITT EQ
110F82:  LDRBEQ.W        R0, [R4,#0x484]
110F86:  MOVSEQ.W        R0, R0,LSL#31
110F8A:  BEQ             loc_110F9A
110F8C:  LDR             R1, [R5]
110F8E:  MOV             R0, R4
110F90:  BLX             R1
110F92:  ADD             SP, SP, #0x18
110F94:  POP.W           {R8-R10}
110F98:  POP             {R4-R7,PC}
110F9A:  LDR             R0, =(off_263400 - 0x110FA2)
110F9C:  MOVS            R6, #0
110F9E:  ADD             R0, PC; off_263400
110FA0:  LDR             R1, [R0]
110FA2:  MOVS            R0, #0
110FA4:  BLX             R1
110FA6:  CMP             R0, R4
110FA8:  BNE             loc_110F8C
110FAA:  LDR             R0, =(off_23494C - 0x110FBA)
110FAC:  MOV             R1, #0x3F8CA5
110FB4:  STR             R6, [R4,#0x50]
110FB6:  ADD             R0, PC; off_23494C
110FB8:  STR             R6, [R4,#0x4C]
110FBA:  STR             R6, [R4,#0x48]
110FBC:  LDR.W           R10, [R0]; dword_23DF24
110FC0:  LDR.W           R0, [R10]
110FC4:  ADD             R1, R0
110FC6:  MOVS            R0, #0
110FC8:  BLX             R1
110FCA:  MOV             R9, R0
110FCC:  LDR             R0, =(off_263408 - 0x110FD2)
110FCE:  ADD             R0, PC; off_263408
110FD0:  LDR             R1, [R0]
110FD2:  MOV             R0, R9
110FD4:  BLX             R1
110FD6:  MOV             R8, R0
110FD8:  LDR             R0, =(off_263410 - 0x110FDE)
110FDA:  ADD             R0, PC; off_263410
110FDC:  LDR             R1, [R0]
110FDE:  MOV             R0, R9
110FE0:  BLX             R1
110FE2:  MOV             R9, R0
110FE4:  LDR.W           R0, [R10]
110FE8:  MOV             R1, #0x951FA8
110FF0:  ADD             R0, R1
110FF2:  BL              sub_163EE4
110FF6:  MOV             R1, R0
110FF8:  MOV             R0, R4
110FFA:  BL              sub_163F08
110FFE:  VMOV            S0, R8
111002:  VLDR            S2, =-32767.0
111006:  LDR             R0, =(unk_238E88 - 0x111014)
111008:  MOVS            R2, #0; int
11100A:  VCVT.F32.S32    S0, S0
11100E:  LDR             R1, [R4,#0x14]; int
111010:  ADD             R0, PC; unk_238E88
111012:  STR             R6, [SP,#0x30+var_30]; float
111014:  MOV             R8, R0
111016:  VDIV.F32        S0, S0, S2
11101A:  VLDR            S2, [R0]
11101E:  ADD             R0, SP, #0x30+var_28; int
111020:  VMUL.F32        S0, S0, S2
111024:  VMOV            R3, S0; int
111028:  BL              sub_163E1C
11102C:  VMOV            S0, R9
111030:  VLDR            S2, =32767.0
111034:  VLDR            S4, =0.003
111038:  VCVT.F32.S32    S0, S0
11103C:  LDR             R0, [R4,#0x14]
11103E:  VLDR            D16, [SP,#0x30+var_28]
111042:  LDR             R1, [SP,#0x30+var_20]
111044:  STR             R1, [R0,#0x38]
111046:  VSTR            D16, [R0,#0x30]
11104A:  VDIV.F32        S0, S0, S2
11104E:  VABS.F32        S2, S0
111052:  VCMP.F32        S2, S4
111056:  VMRS            APSR_nzcv, FPSCR
11105A:  BLT             loc_110F8C
11105C:  VLDR            S2, [R8]
111060:  VMOV.F32        S4, #0.75
111064:  LDR             R0, [R4,#0x14]
111066:  VMUL.F32        S0, S0, S2
11106A:  VLDR            S2, [R0,#0x38]
11106E:  VMLA.F32        S2, S0, S4
111072:  VSTR            S2, [R0,#0x38]
111076:  B               loc_110F8C
111078:  LDR             R0, =(byte_263404 - 0x11107E)
11107A:  ADD             R0, PC; byte_263404 ; __guard *
11107C:  BLX             j___cxa_guard_acquire
111080:  CMP             R0, #0
111082:  BEQ.W           loc_110F4E
111086:  LDR             R0, =(off_23494C - 0x111096)
111088:  MOVW            R3, #0xB289
11108C:  LDR             R2, =(off_263400 - 0x111098)
11108E:  MOVT            R3, #0x40 ; '@'
111092:  ADD             R0, PC; off_23494C
111094:  ADD             R2, PC; off_263400
111096:  LDR             R1, [R0]; dword_23DF24
111098:  LDR             R0, =(byte_263404 - 0x1110A0)
11109A:  LDR             R1, [R1]
11109C:  ADD             R0, PC; byte_263404 ; __guard *
11109E:  ADD             R1, R3
1110A0:  STR             R1, [R2]
1110A2:  BLX             j___cxa_guard_release
1110A6:  B               loc_110F4E
1110A8:  LDR             R0, =(byte_26340C - 0x1110AE)
1110AA:  ADD             R0, PC; byte_26340C ; __guard *
1110AC:  BLX             j___cxa_guard_acquire
1110B0:  CMP             R0, #0
1110B2:  BEQ.W           loc_110F5E
1110B6:  LDR             R0, =(off_23494C - 0x1110C6)
1110B8:  MOVW            R3, #0xA1C9
1110BC:  LDR             R1, =(off_263408 - 0x1110C8)
1110BE:  MOVT            R3, #0x3F ; '?'
1110C2:  ADD             R0, PC; off_23494C
1110C4:  ADD             R1, PC; off_263408
1110C6:  LDR             R0, [R0]; dword_23DF24
1110C8:  LDR             R2, [R0]
1110CA:  LDR             R0, =(byte_26340C - 0x1110D2)
1110CC:  ADD             R2, R3
1110CE:  ADD             R0, PC; byte_26340C ; __guard *
1110D0:  ADDS            R2, #0x80
1110D2:  STR             R2, [R1]
1110D4:  BLX             j___cxa_guard_release
1110D8:  B               loc_110F5E
1110DA:  LDR             R0, =(byte_263414 - 0x1110E0)
1110DC:  ADD             R0, PC; byte_263414 ; __guard *
1110DE:  BLX             j___cxa_guard_acquire
1110E2:  CMP             R0, #0
1110E4:  BEQ.W           loc_110F6E
1110E8:  LDR             R0, =(off_23494C - 0x1110F8)
1110EA:  MOVW            R3, #0xA1C9
1110EE:  LDR             R2, =(off_263410 - 0x1110FA)
1110F0:  MOVT            R3, #0x3F ; '?'
1110F4:  ADD             R0, PC; off_23494C
1110F6:  ADD             R2, PC; off_263410
1110F8:  LDR             R1, [R0]; dword_23DF24
1110FA:  LDR             R0, =(byte_263414 - 0x111102)
1110FC:  LDR             R1, [R1]
1110FE:  ADD             R0, PC; byte_263414 ; __guard *
111100:  ADD             R1, R3
111102:  STR             R1, [R2]
111104:  BLX             j___cxa_guard_release
111108:  B               loc_110F6E
