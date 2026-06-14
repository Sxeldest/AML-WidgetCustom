; =========================================================
; Game Engine Function: sub_1E01E4
; Address            : 0x1E01E4 - 0x1E0308
; =========================================================

1E01E4:  PUSH            {R4-R6,R10,R11,LR}
1E01E8:  ADD             R11, SP, #0x10
1E01EC:  VPUSH           {D8-D9}
1E01F0:  MOV             R4, R0
1E01F4:  ADD             R0, R4, #0x10; int
1E01F8:  MOV             R5, R2
1E01FC:  LDR             R6, [R1,#0xFC]
1E0200:  MOV             R1, #0x24 ; '$'; n
1E0204:  VLDR            S16, [R5,#0x90]
1E0208:  VLDR            S18, [R5,#0xB8]
1E020C:  BL              sub_22178C
1E0210:  VMUL.F32        S16, S16, S18
1E0214:  LDR             R0, [R5]
1E0218:  CMP             R0, #0x9000
1E021C:  BEQ             loc_1E02FC
1E0220:  MOVW            R1, #0x9001
1E0224:  CMP             R0, R1
1E0228:  BNE             loc_1E0300
1E022C:  MOV             R0, #0x3F800000
1E0230:  MOV             R1, #0
1E0234:  BL              j_aluCart2LUTpos
1E0238:  ADD             R0, R0, R0,LSL#3
1E023C:  ADD             R0, R6, R0,LSL#2
1E0240:  ADD             R1, R0, #0x4100
1E0244:  ADD             R1, R1, #0x20000
1E0248:  VLDR            S0, [R1]
1E024C:  ADD             R1, R0, #0x104
1E0250:  ADD             R1, R1, #0x24000
1E0254:  VMUL.F32        S0, S0, S16
1E0258:  VSTR            S0, [R4,#0x10]
1E025C:  VLDR            S0, [R1]
1E0260:  ADD             R1, R0, #0x108
1E0264:  ADD             R1, R1, #0x24000
1E0268:  VMUL.F32        S0, S0, S16
1E026C:  VSTR            S0, [R4,#0x14]
1E0270:  VLDR            S0, [R1]
1E0274:  ADD             R1, R0, #0x10C
1E0278:  ADD             R1, R1, #0x24000
1E027C:  VMUL.F32        S0, S0, S16
1E0280:  VSTR            S0, [R4,#0x18]
1E0284:  VLDR            S0, [R1]
1E0288:  ADD             R1, R0, #0x110
1E028C:  ADD             R1, R1, #0x24000
1E0290:  VMUL.F32        S0, S0, S16
1E0294:  VSTR            S0, [R4,#0x1C]
1E0298:  VLDR            S0, [R1]
1E029C:  ADD             R1, R0, #0x114
1E02A0:  ADD             R1, R1, #0x24000
1E02A4:  VMUL.F32        S0, S0, S16
1E02A8:  VSTR            S0, [R4,#0x20]
1E02AC:  VLDR            S0, [R1]
1E02B0:  ADD             R1, R0, #0x118
1E02B4:  ADD             R1, R1, #0x24000
1E02B8:  VMUL.F32        S0, S0, S16
1E02BC:  VSTR            S0, [R4,#0x24]
1E02C0:  VLDR            S0, [R1]
1E02C4:  ADD             R1, R0, #0x11C
1E02C8:  ADD             R1, R1, #0x24000
1E02CC:  ADD             R0, R0, #0x120
1E02D0:  VMUL.F32        S0, S0, S16
1E02D4:  ADD             R0, R0, #0x24000
1E02D8:  VSTR            S0, [R4,#0x28]
1E02DC:  VLDR            S0, [R1]
1E02E0:  VMUL.F32        S0, S0, S16
1E02E4:  VSTR            S0, [R4,#0x2C]
1E02E8:  VLDR            S0, [R0]
1E02EC:  VMUL.F32        S0, S0, S16
1E02F0:  VSTR            S0, [R4,#0x30]
1E02F4:  VPOP            {D8-D9}
1E02F8:  POP             {R4-R6,R10,R11,PC}
1E02FC:  VSTR            S16, [R4,#0x1C]
1E0300:  VPOP            {D8-D9}
1E0304:  POP             {R4-R6,R10,R11,PC}
