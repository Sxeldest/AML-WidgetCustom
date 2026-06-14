; =========================================================
; Game Engine Function: _ZN11CTagManager25GetPercentageTaggedInAreaER5CRect
; Address            : 0x362174 - 0x36223A
; =========================================================

362174:  PUSH            {R4,R5,R7,LR}
362176:  ADD             R7, SP, #8
362178:  LDR             R1, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x36217E)
36217A:  ADD             R1, PC; _ZN11CTagManager10ms_numTagsE_ptr
36217C:  LDR             R1, [R1]; CTagManager::ms_numTags ...
36217E:  LDR             R1, [R1]; CTagManager::ms_numTags
362180:  CMP             R1, #0
362182:  BEQ             loc_36220E
362184:  VLDR            S0, [R0]
362188:  MOV.W           LR, #0
36218C:  VLDR            S2, [R0,#4]
362190:  VLDR            S4, [R0,#8]
362194:  VLDR            S6, [R0,#0xC]
362198:  LDR             R0, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x36219E)
36219A:  ADD             R0, PC; _ZN11CTagManager10ms_tagDescE_ptr
36219C:  LDR             R3, [R0]; CTagManager::ms_tagDesc ...
36219E:  LDR             R0, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x3621A4)
3621A0:  ADD             R0, PC; _ZN11CTagManager10ms_tagDescE_ptr
3621A2:  LDR.W           R12, [R0]; CTagManager::ms_tagDesc ...
3621A6:  MOVS            R0, #0
3621A8:  MOV             R2, R1
3621AA:  ADD.W           R1, R3, R2,LSL#3
3621AE:  LDR.W           R1, [R1,#-8]
3621B2:  LDR             R5, [R1,#0x14]
3621B4:  ADD.W           R4, R5, #0x30 ; '0'
3621B8:  CMP             R5, #0
3621BA:  IT EQ
3621BC:  ADDEQ           R4, R1, #4
3621BE:  SUBS            R1, R2, #1
3621C0:  VLDR            S8, [R4]
3621C4:  VCMPE.F32       S8, S0
3621C8:  VMRS            APSR_nzcv, FPSCR
3621CC:  BLT             loc_3621F0
3621CE:  VCMPE.F32       S8, S4
3621D2:  VMRS            APSR_nzcv, FPSCR
3621D6:  BGT             loc_3621F0
3621D8:  VLDR            S8, [R4,#4]
3621DC:  VCMPE.F32       S8, S6
3621E0:  VMRS            APSR_nzcv, FPSCR
3621E4:  BLT             loc_3621F0
3621E6:  VCMPE.F32       S8, S2
3621EA:  VMRS            APSR_nzcv, FPSCR
3621EE:  BLE             loc_3621F6
3621F0:  CMP             R1, #0
3621F2:  BNE             loc_3621A8
3621F4:  B               loc_362214
3621F6:  ADD.W           R4, R12, R2,LSL#3
3621FA:  ADDS            R0, #1
3621FC:  LDRB.W          R4, [R4,#-4]
362200:  CMP             R4, #0xE4
362202:  IT HI
362204:  ADDHI.W         LR, LR, #1
362208:  CMP             R2, #1
36220A:  BNE             loc_3621A8
36220C:  B               loc_362214
36220E:  MOVS            R0, #0
362210:  MOV.W           LR, #0
362214:  VMOV            S0, R0
362218:  VMOV            S2, LR
36221C:  VCVT.F32.S32    S0, S0
362220:  VCVT.F32.S32    S2, S2
362224:  VDIV.F32        S0, S2, S0
362228:  VLDR            S2, =100.0
36222C:  VMUL.F32        S0, S0, S2
362230:  VCVT.S32.F32    S0, S0
362234:  VMOV            R0, S0
362238:  POP             {R4,R5,R7,PC}
