; =========================================================
; Game Engine Function: sub_719EC
; Address            : 0x719EC - 0x71C38
; =========================================================

719EC:  PUSH            {R4-R7,LR}
719EE:  ADD             R7, SP, #0xC
719F0:  PUSH.W          {R8-R11}
719F4:  SUB             SP, SP, #4
719F6:  VPUSH           {D8-D12}
719FA:  SUB             SP, SP, #0x20
719FC:  MOV             R10, R0
719FE:  LDR             R0, =(__stack_chk_guard_ptr - 0x71A06)
71A00:  MOV             R5, R1
71A02:  ADD             R0, PC; __stack_chk_guard_ptr
71A04:  LDR             R0, [R0]; __stack_chk_guard
71A06:  LDR             R0, [R0]
71A08:  STR             R0, [SP,#0x68+var_4C]
71A0A:  MOVS            R0, #0
71A0C:  LDRB            R4, [R2]
71A0E:  LDR             R1, [R2,#4]
71A10:  ANDS.W          R6, R4, #1
71A14:  STRD.W          R0, R0, [R10]
71A18:  IT EQ
71A1A:  LSREQ           R1, R4, #1
71A1C:  CMP             R1, #0
71A1E:  BEQ.W           loc_71C16
71A22:  VLDR            S24, =0.0
71A26:  VMOV            S22, R3
71A2A:  ADD.W           R9, SP, #0x68+var_54
71A2E:  MOVS            R4, #0
71A30:  VMOV.F32        S20, S24
71A34:  VMOV.F32        S18, S24
71A38:  VMOV.F32        S16, S24
71A3C:  VCMP.F32        S22, #0.0
71A40:  VMRS            APSR_nzcv, FPSCR
71A44:  ITT EQ
71A46:  LDREQ           R0, [R5,#8]
71A48:  VLDREQ          S22, [R0,#0x10]
71A4C:  LDR             R0, [R2,#8]
71A4E:  CMP             R6, #0
71A50:  IT EQ
71A52:  ADDEQ           R0, R2, #1
71A54:  ADD.W           R11, R0, R1
71A58:  MOV             R8, R0
71A5A:  B               loc_71A68
71A5C:  CMP             R1, #0
71A5E:  BEQ.W           loc_71BA4
71A62:  MOV             R6, R8
71A64:  ADD.W           R8, R8, #1
71A68:  LDRB.W          R1, [R8]
71A6C:  CMP             R1, #9
71A6E:  BLE             loc_71ADC
71A70:  CMP             R1, #0xA
71A72:  BEQ             loc_71B34
71A74:  CMP             R1, #0x7B ; '{'
71A76:  BNE             loc_71A62
71A78:  ADD.W           R6, R8, #7
71A7C:  CMP             R6, R11
71A7E:  BCS             loc_71A62
71A80:  LDRB            R1, [R6]
71A82:  CMP             R1, #0x7D ; '}'
71A84:  BNE             loc_71A62
71A86:  CMP             R8, R0
71A88:  BEQ             loc_71AD2
71A8A:  VCMP.F32        S22, #0.0
71A8E:  LDR             R1, [R5,#8]; int
71A90:  VMOV.F32        S0, S22
71A94:  VMRS            APSR_nzcv, FPSCR
71A98:  IT EQ
71A9A:  VLDREQ          S0, [R1,#0x10]
71A9E:  VMOV            R2, S0; int
71AA2:  MOVW            R3, #0xFFFF
71AA6:  STRD.W          R4, R0, [SP,#0x68+var_68]; float
71AAA:  MOV             R0, R9; int
71AAC:  MOVT            R3, #0x7F7F; int
71AB0:  STRD.W          R8, R4, [SP,#0x68+var_60]; int
71AB4:  BL              sub_A3980
71AB8:  VLDR            S0, [SP,#0x68+var_54]
71ABC:  VCMP.F32        S16, #0.0
71AC0:  VLDR            S2, [SP,#0x68+var_50]
71AC4:  VADD.F32        S18, S18, S0
71AC8:  VMRS            APSR_nzcv, FPSCR
71ACC:  IT EQ
71ACE:  VMOVEQ.F32      S16, S2
71AD2:  ADD.W           R0, R8, #8
71AD6:  ADD.W           R8, R6, #1
71ADA:  B               loc_71A68
71ADC:  BNE             loc_71A5C
71ADE:  CMP             R8, R0
71AE0:  BEQ             loc_71B2A
71AE2:  VCMP.F32        S22, #0.0
71AE6:  LDR             R1, [R5,#8]; int
71AE8:  VMOV.F32        S0, S22
71AEC:  VMRS            APSR_nzcv, FPSCR
71AF0:  IT EQ
71AF2:  VLDREQ          S0, [R1,#0x10]
71AF6:  VMOV            R2, S0; int
71AFA:  MOVW            R3, #0xFFFF
71AFE:  STRD.W          R4, R0, [SP,#0x68+var_68]; float
71B02:  MOV             R0, R9; int
71B04:  MOVT            R3, #0x7F7F; int
71B08:  STRD.W          R8, R4, [SP,#0x68+var_60]; int
71B0C:  BL              sub_A3980
71B10:  VLDR            S0, [SP,#0x68+var_54]
71B14:  VCMP.F32        S16, #0.0
71B18:  VLDR            S2, [SP,#0x68+var_50]
71B1C:  VADD.F32        S18, S18, S0
71B20:  VMRS            APSR_nzcv, FPSCR
71B24:  IT EQ
71B26:  VMOVEQ.F32      S16, S2
71B2A:  VADD.F32        S18, S22, S18
71B2E:  ADD.W           R0, R8, #1
71B32:  B               loc_71A62
71B34:  CMP             R8, R0
71B36:  BEQ             loc_71B80
71B38:  VCMP.F32        S22, #0.0
71B3C:  LDR             R1, [R5,#8]; int
71B3E:  VMOV.F32        S0, S22
71B42:  VMRS            APSR_nzcv, FPSCR
71B46:  IT EQ
71B48:  VLDREQ          S0, [R1,#0x10]
71B4C:  VMOV            R2, S0; int
71B50:  MOVW            R3, #0xFFFF
71B54:  STRD.W          R4, R0, [SP,#0x68+var_68]; float
71B58:  MOV             R0, R9; int
71B5A:  MOVT            R3, #0x7F7F; int
71B5E:  STRD.W          R8, R4, [SP,#0x68+var_60]; int
71B62:  BL              sub_A3980
71B66:  VLDR            S0, [SP,#0x68+var_54]
71B6A:  VCMP.F32        S16, #0.0
71B6E:  VLDR            S2, [SP,#0x68+var_50]
71B72:  VADD.F32        S18, S18, S0
71B76:  VMRS            APSR_nzcv, FPSCR
71B7A:  IT EQ
71B7C:  VMOVEQ.F32      S16, S2
71B80:  VCMP.F32        S20, S18
71B84:  ADD.W           R0, R8, #1
71B88:  VMRS            APSR_nzcv, FPSCR
71B8C:  IT GE
71B8E:  VMOVGE.F32      S18, S20
71B92:  VADD.F32        S16, S22, S16
71B96:  VSTR            S18, [R10]
71B9A:  VMOV.F32        S20, S18
71B9E:  VMOV.F32        S18, S24
71BA2:  B               loc_71A62
71BA4:  CMP             R8, R0
71BA6:  BEQ             loc_71BEE
71BA8:  VCMP.F32        S22, #0.0
71BAC:  LDR             R1, [R5,#8]; int
71BAE:  VMRS            APSR_nzcv, FPSCR
71BB2:  IT EQ
71BB4:  VLDREQ          S22, [R1,#0x10]
71BB8:  VMOV            R2, S22; int
71BBC:  MOVS            R3, #0
71BBE:  STRD.W          R3, R0, [SP,#0x68+var_68]; float
71BC2:  ADD             R0, SP, #0x68+var_54; int
71BC4:  STRD.W          R8, R3, [SP,#0x68+var_60]; int
71BC8:  MOV             R3, #0x7F7FFFFF; int
71BD0:  BL              sub_A3980
71BD4:  VLDR            S0, [SP,#0x68+var_54]
71BD8:  VCMP.F32        S16, #0.0
71BDC:  VLDR            S2, [SP,#0x68+var_50]
71BE0:  VADD.F32        S18, S18, S0
71BE4:  VMRS            APSR_nzcv, FPSCR
71BE8:  IT EQ
71BEA:  VMOVEQ.F32      S16, S2
71BEE:  VCMP.F32        S16, #0.0
71BF2:  VLDR            S0, =0.0
71BF6:  VMRS            APSR_nzcv, FPSCR
71BFA:  VCMP.F32        S20, S18
71BFE:  IT LS
71C00:  VMOVLS.F32      S16, S0
71C04:  VMRS            APSR_nzcv, FPSCR
71C08:  IT GE
71C0A:  VMOVGE.F32      S18, S20
71C0E:  VSTR            S18, [R10]
71C12:  VSTR            S16, [R10,#4]
71C16:  LDR             R0, [SP,#0x68+var_4C]
71C18:  LDR             R1, =(__stack_chk_guard_ptr - 0x71C1E)
71C1A:  ADD             R1, PC; __stack_chk_guard_ptr
71C1C:  LDR             R1, [R1]; __stack_chk_guard
71C1E:  LDR             R1, [R1]
71C20:  CMP             R1, R0
71C22:  ITTTT EQ
71C24:  ADDEQ           SP, SP, #0x20 ; ' '
71C26:  VPOPEQ          {D8-D12}
71C2A:  ADDEQ           SP, SP, #4
71C2C:  POPEQ.W         {R8-R11}
71C30:  IT EQ
71C32:  POPEQ           {R4-R7,PC}
71C34:  BLX             __stack_chk_fail
