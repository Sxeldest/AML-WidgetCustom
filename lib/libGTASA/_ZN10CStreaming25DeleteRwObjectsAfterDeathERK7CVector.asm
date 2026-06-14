; =========================================================
; Game Engine Function: _ZN10CStreaming25DeleteRwObjectsAfterDeathERK7CVector
; Address            : 0x2D50D0 - 0x2D521C
; =========================================================

2D50D0:  PUSH            {R4-R7,LR}
2D50D2:  ADD             R7, SP, #0xC
2D50D4:  PUSH.W          {R8-R11}
2D50D8:  SUB             SP, SP, #4
2D50DA:  VPUSH           {D8-D10}
2D50DE:  SUB             SP, SP, #0x10
2D50E0:  VLDR            S16, =50.0
2D50E4:  VLDR            S0, [R0]
2D50E8:  VLDR            S20, =60.0
2D50EC:  VDIV.F32        S0, S0, S16
2D50F0:  VADD.F32        S0, S0, S20
2D50F4:  VLDR            S18, [R0,#4]
2D50F8:  VMOV            R0, S0; x
2D50FC:  BLX             floorf
2D5100:  VDIV.F32        S0, S18, S16
2D5104:  MOV             R4, R0
2D5106:  VADD.F32        S0, S0, S20
2D510A:  VMOV            R0, S0; x
2D510E:  BLX             floorf
2D5112:  VMOV            S0, R0
2D5116:  MOVS            R6, #0
2D5118:  VMOV            S2, R4
2D511C:  VCVT.S32.F32    S0, S0
2D5120:  VCVT.S32.F32    S2, S2
2D5124:  VMOV.F32        S16, #3.0
2D5128:  VMOV            R4, S0
2D512C:  VMOV            R0, S2
2D5130:  STR             R0, [SP,#0x48+var_48]
2D5132:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D5138)
2D5134:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D5136:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D5138:  STR             R0, [SP,#0x48+var_3C]
2D513A:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D5140)
2D513C:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D513E:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D5140:  STR             R0, [SP,#0x48+var_40]
2D5142:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D5148)
2D5144:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D5146:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D5148:  STR             R0, [SP,#0x48+var_44]
2D514A:  LDR             R0, [SP,#0x48+var_48]
2D514C:  AND.W           R11, R6, #0xF
2D5150:  MOV.W           R8, #0
2D5154:  SUBS            R0, R0, R6
2D5156:  VMOV            S0, R0
2D515A:  VCVT.F32.S32    S0, S0
2D515E:  VABS.F32        S18, S0
2D5162:  VCMPE.F32       S18, S16
2D5166:  VMRS            APSR_nzcv, FPSCR
2D516A:  BLE             loc_2D51FE
2D516C:  SUB.W           R0, R4, R8
2D5170:  VMOV            S0, R0
2D5174:  VCVT.F32.S32    S0, S0
2D5178:  VABS.F32        S0, S0
2D517C:  VCMPE.F32       S0, S16
2D5180:  VMRS            APSR_nzcv, FPSCR
2D5184:  BLE             loc_2D51FE
2D5186:  RSB.W           R0, R8, R8,LSL#4
2D518A:  ADD.W           R9, R6, R0,LSL#3
2D518E:  LDR             R0, [SP,#0x48+var_3C]
2D5190:  LDR.W           R10, [R0,R9,LSL#3]
2D5194:  B               loc_2D519C
2D5196:  LDR             R1, [R0]
2D5198:  LDR             R1, [R1,#0x24]
2D519A:  BLX             R1
2D519C:  CMP.W           R10, #0
2D51A0:  BEQ             loc_2D51B0
2D51A2:  LDRD.W          R0, R10, [R10]
2D51A6:  LDRB            R1, [R0,#0x1D]
2D51A8:  TST.W           R1, #0x24
2D51AC:  BNE             loc_2D519C
2D51AE:  B               loc_2D5196
2D51B0:  MOV.W           R0, R8,LSL#4
2D51B4:  LDR             R1, [SP,#0x48+var_40]
2D51B6:  UXTB            R0, R0
2D51B8:  ORR.W           R0, R0, R11
2D51BC:  ADD.W           R0, R0, R0,LSL#1
2D51C0:  ADD.W           R0, R1, R0,LSL#2
2D51C4:  LDR             R5, [R0,#8]
2D51C6:  B               loc_2D51CE
2D51C8:  LDR             R1, [R0]
2D51CA:  LDR             R1, [R1,#0x24]
2D51CC:  BLX             R1
2D51CE:  CBZ             R5, loc_2D51DE
2D51D0:  LDRD.W          R0, R5, [R5]
2D51D4:  LDRB            R1, [R0,#0x1D]
2D51D6:  TST.W           R1, #0x24
2D51DA:  BNE             loc_2D51CE
2D51DC:  B               loc_2D51C8
2D51DE:  LDR             R0, [SP,#0x48+var_44]
2D51E0:  ADD.W           R0, R0, R9,LSL#3
2D51E4:  LDR             R5, [R0,#4]
2D51E6:  B               loc_2D51EE
2D51E8:  LDR             R1, [R0]
2D51EA:  LDR             R1, [R1,#0x24]
2D51EC:  BLX             R1
2D51EE:  CBZ             R5, loc_2D51FE
2D51F0:  LDRD.W          R0, R5, [R5]
2D51F4:  LDRB            R1, [R0,#0x1D]
2D51F6:  TST.W           R1, #0x24
2D51FA:  BNE             loc_2D51EE
2D51FC:  B               loc_2D51E8
2D51FE:  ADD.W           R8, R8, #1
2D5202:  CMP.W           R8, #0x78 ; 'x'
2D5206:  BNE             loc_2D5162
2D5208:  ADDS            R6, #1
2D520A:  CMP             R6, #0x78 ; 'x'
2D520C:  BNE             loc_2D514A
2D520E:  ADD             SP, SP, #0x10
2D5210:  VPOP            {D8-D10}
2D5214:  ADD             SP, SP, #4
2D5216:  POP.W           {R8-R11}
2D521A:  POP             {R4-R7,PC}
