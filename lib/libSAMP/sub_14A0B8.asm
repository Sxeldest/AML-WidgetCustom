; =========================================================
; Game Engine Function: sub_14A0B8
; Address            : 0x14A0B8 - 0x14A262
; =========================================================

14A0B8:  PUSH            {R4-R7,LR}
14A0BA:  ADD             R7, SP, #0xC
14A0BC:  PUSH.W          {R8-R11}
14A0C0:  SUB             SP, SP, #0xBC
14A0C2:  MOV             R4, R0
14A0C4:  ADR             R0, dword_14A268
14A0C6:  VLD1.64         {D16-D17}, [R0]
14A0CA:  ADD             R0, SP, #0xD8+var_30
14A0CC:  MOVS            R1, #0
14A0CE:  VST1.64         {D16-D17}, [R0]
14A0D2:  ADD             R0, SP, #0xD8+var_40
14A0D4:  VST1.64         {D16-D17}, [R0]
14A0D8:  LDR             R0, [R4,#4]
14A0DA:  STRD.W          R1, R1, [SP,#0xD8+var_90]
14A0DE:  CMP             R0, #0
14A0E0:  STR             R1, [SP,#0xD8+var_88]
14A0E2:  BEQ.W           loc_14A25A
14A0E6:  ADD             R1, SP, #0xD8+var_90
14A0E8:  BL              sub_F89E0
14A0EC:  VLDR            S0, =0.02
14A0F0:  MOVW            R3, #0xD70A
14A0F4:  VLDR            S2, [SP,#0xD8+var_90]
14A0F8:  MOVT            R3, #0x3CA3
14A0FC:  VCMP.F32        S2, S0
14A100:  VMRS            APSR_nzcv, FPSCR
14A104:  BLS             loc_14A10C
14A106:  MOV             R1, R3
14A108:  STR             R3, [SP,#0xD8+var_90]
14A10A:  B               loc_14A12E
14A10C:  VLDR            S4, =-0.02
14A110:  VCMP.F32        S2, S4
14A114:  VMRS            APSR_nzcv, FPSCR
14A118:  BPL             loc_14A12A
14A11A:  MOVW            R0, #0xD70A
14A11E:  ADD.W           R1, R3, #0x80000000
14A122:  MOVT            R0, #0xBCA3
14A126:  STR             R0, [SP,#0xD8+var_90]
14A128:  B               loc_14A12E
14A12A:  VMOV            R1, S2
14A12E:  VLDR            S2, [SP,#0xD8+var_8C]
14A132:  MOV             R2, R3
14A134:  VCMP.F32        S2, S0
14A138:  VMRS            APSR_nzcv, FPSCR
14A13C:  BHI             loc_14A150
14A13E:  VLDR            S0, =-0.02
14A142:  VCMP.F32        S2, S0
14A146:  VMRS            APSR_nzcv, FPSCR
14A14A:  BPL             loc_14A156
14A14C:  ADD.W           R2, R3, #0x80000000
14A150:  VSTR            S0, [SP,#0xD8+var_8C]
14A154:  B               loc_14A15A
14A156:  VMOV            R2, S2
14A15A:  VLDR            S0, =0.02
14A15E:  VLDR            S2, [SP,#0xD8+var_88]
14A162:  VCMP.F32        S2, S0
14A166:  VMRS            APSR_nzcv, FPSCR
14A16A:  BHI             loc_14A17E
14A16C:  VLDR            S0, =-0.02
14A170:  VCMP.F32        S2, S0
14A174:  VMRS            APSR_nzcv, FPSCR
14A178:  BPL             loc_14A184
14A17A:  ADD.W           R3, R3, #0x80000000
14A17E:  VSTR            S0, [SP,#0xD8+var_88]
14A182:  B               loc_14A188
14A184:  VMOV            R3, S2
14A188:  LDR             R0, [R4,#4]
14A18A:  BL              sub_F8A08
14A18E:  LDR             R0, [R4,#4]
14A190:  ADD             R1, SP, #0xD8+var_80
14A192:  BL              sub_F8910
14A196:  LDR             R0, [SP,#0xD8+var_80]
14A198:  ADD             R2, SP, #0xD8+var_4C
14A19A:  STR             R0, [SP,#0xD8+var_94]
14A19C:  ADD.W           LR, SP, #0xD8+var_68
14A1A0:  LDR             R0, [SP,#0xD8+var_7C]
14A1A2:  STR             R0, [SP,#0xD8+var_98]
14A1A4:  LDR             R0, [SP,#0xD8+var_78]
14A1A6:  STR             R0, [SP,#0xD8+var_9C]
14A1A8:  LDM             R2, {R0-R2}
14A1AA:  LDRD.W          R9, R8, [SP,#0xD8+var_54]
14A1AE:  LDRD.W          R3, R6, [SP,#0xD8+var_74]
14A1B2:  STRD.W          R9, R8, [SP,#0xD8+var_B8]
14A1B6:  ADD.W           R8, SP, #0xD8+var_B0
14A1BA:  STR             R4, [SP,#0xD8+var_A0]
14A1BC:  LDM.W           LR, {R4,R12,LR}
14A1C0:  STM.W           R8, {R0-R2}
14A1C4:  STRD.W          R3, R6, [SP,#0xD8+var_D8]
14A1C8:  ADD             R6, SP, #0xD8+var_30
14A1CA:  LDR             R1, [SP,#0xD8+var_94]
14A1CC:  LDRD.W          R3, R2, [SP,#0xD8+var_9C]
14A1D0:  MOV             R0, R6
14A1D2:  LDRD.W          R10, R11, [SP,#0xD8+var_5C]
14A1D6:  LDR             R5, [SP,#0xD8+var_6C]
14A1D8:  STRD.W          R5, R4, [SP,#0xD8+var_D0]
14A1DC:  STRD.W          R12, LR, [SP,#0xD8+var_C8]
14A1E0:  STRD.W          R10, R11, [SP,#0xD8+var_C0]
14A1E4:  BL              sub_17D12C
14A1E8:  LDR             R4, [SP,#0xD8+var_A0]
14A1EA:  ADD             R5, SP, #0xD8+var_40
14A1EC:  MOV             R2, R6
14A1EE:  MOV.W           R3, #0x3F400000
14A1F2:  ADD.W           R1, R4, #0x4C ; 'L'
14A1F6:  MOV             R0, R5
14A1F8:  BL              sub_17D338
14A1FC:  MOV             R0, R5
14A1FE:  BL              sub_17D2F2
14A202:  ADD             R1, SP, #0xD8+var_80
14A204:  MOV             R0, R5
14A206:  BL              sub_17D238
14A20A:  LDR             R0, [SP,#0xD8+var_80]
14A20C:  ADD             R3, SP, #0xD8+var_4C
14A20E:  STR             R0, [SP,#0xD8+var_94]
14A210:  ADD.W           R10, SP, #0xD8+var_60
14A214:  LDR             R0, [SP,#0xD8+var_7C]
14A216:  STR             R0, [SP,#0xD8+var_98]
14A218:  LDR             R0, [SP,#0xD8+var_78]
14A21A:  STR             R0, [SP,#0xD8+var_9C]
14A21C:  LDR             R0, [R4,#4]
14A21E:  LDM             R3, {R1-R3}
14A220:  STR             R0, [SP,#0xD8+var_A0]
14A222:  LDRD.W          R4, R0, [SP,#0xD8+var_54]
14A226:  STRD.W          R4, R0, [SP,#0xD8+var_B8]
14A22A:  ADD             R0, SP, #0xD8+var_B0
14A22C:  STM             R0!, {R1-R3}
14A22E:  LDM.W           R10, {R8-R10}
14A232:  LDRD.W          R6, LR, [SP,#0xD8+var_68]
14A236:  LDRD.W          R5, R11, [SP,#0xD8+var_70]
14A23A:  LDRD.W          R2, R1, [SP,#0xD8+var_98]
14A23E:  LDRD.W          R0, R3, [SP,#0xD8+var_A0]
14A242:  LDR.W           R12, [SP,#0xD8+var_74]
14A246:  STRD.W          R12, R5, [SP,#0xD8+var_D8]
14A24A:  STRD.W          R11, R6, [SP,#0xD8+var_D0]
14A24E:  STRD.W          LR, R8, [SP,#0xD8+var_C8]
14A252:  STRD.W          R9, R10, [SP,#0xD8+var_C0]
14A256:  BL              sub_F894A
14A25A:  ADD             SP, SP, #0xBC
14A25C:  POP.W           {R8-R11}
14A260:  POP             {R4-R7,PC}
