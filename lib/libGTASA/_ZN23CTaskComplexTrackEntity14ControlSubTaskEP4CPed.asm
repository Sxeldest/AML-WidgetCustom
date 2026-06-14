; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntity14ControlSubTaskEP4CPed
; Address            : 0x517F9C - 0x5181E8
; =========================================================

517F9C:  PUSH            {R4-R7,LR}
517F9E:  ADD             R7, SP, #0xC
517FA0:  PUSH.W          {R8}
517FA4:  MOV             R4, R0
517FA6:  MOV             R8, R1
517FA8:  LDR             R0, [R4,#0xC]
517FAA:  CBZ             R0, loc_518010
517FAC:  LDRB.W          R0, [R4,#0x38]
517FB0:  CBZ             R0, loc_517FDE
517FB2:  LDRB.W          R0, [R4,#0x39]
517FB6:  CBZ             R0, loc_517FCC
517FB8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x517FC0)
517FBA:  MOVS            R1, #0
517FBC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
517FBE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
517FC0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
517FC2:  STRB.W          R1, [R4,#0x39]
517FC6:  STR             R0, [R4,#0x30]
517FC8:  MOV             R1, R0
517FCA:  B               loc_517FD6
517FCC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x517FD4)
517FCE:  LDR             R1, [R4,#0x30]
517FD0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
517FD2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
517FD4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
517FD6:  LDR             R2, [R4,#0x34]
517FD8:  ADD             R1, R2
517FDA:  CMP             R1, R0
517FDC:  BLS             loc_518010
517FDE:  MOV             R0, R4; this
517FE0:  MOV             R1, R8; CPed *
517FE2:  BLX             j__ZN23CTaskComplexTrackEntity13CalcTargetPosEP4CPed; CTaskComplexTrackEntity::CalcTargetPos(CPed *)
517FE6:  LDR             R0, [R4,#8]
517FE8:  LDR             R1, [R0]
517FEA:  LDR             R1, [R1,#0x14]
517FEC:  BLX             R1
517FEE:  MOVW            R1, #0x38A
517FF2:  CMP             R0, R1
517FF4:  BNE             loc_518028
517FF6:  VLDR            S2, [R4,#0x28]
517FFA:  VLDR            S0, [R4,#0x50]
517FFE:  VMUL.F32        S2, S2, S2
518002:  VCMPE.F32       S0, S2
518006:  VMRS            APSR_nzcv, FPSCR
51800A:  BLE             loc_51807A
51800C:  MOVS            R6, #0
51800E:  B               loc_5181DA
518010:  LDR             R0, [R4,#8]
518012:  MOVS            R2, #1
518014:  MOVS            R3, #0
518016:  MOVS            R6, #0
518018:  LDR             R1, [R0]
51801A:  LDR             R5, [R1,#0x1C]
51801C:  MOV             R1, R8
51801E:  BLX             R5
518020:  CMP             R0, #0
518022:  IT EQ
518024:  LDREQ           R6, [R4,#8]
518026:  B               loc_5181DA
518028:  LDR             R0, [R4,#8]
51802A:  LDR             R1, [R0]
51802C:  LDR             R1, [R1,#0x14]
51802E:  BLX             R1
518030:  MOVW            R1, #0x39E
518034:  CMP             R0, R1
518036:  BNE.W           loc_5181D8
51803A:  VLDR            S2, [R4,#0x24]
51803E:  VLDR            S0, [R4,#0x50]
518042:  VMUL.F32        S2, S2, S2
518046:  VCMPE.F32       S0, S2
51804A:  VMRS            APSR_nzcv, FPSCR
51804E:  BLT             loc_518066
518050:  LDR             R0, [R4,#8]
518052:  MOVS            R2, #1
518054:  MOVS            R3, #0
518056:  LDR             R1, [R0]
518058:  LDR             R6, [R1,#0x1C]
51805A:  MOV             R1, R8
51805C:  BLX             R6
51805E:  CMP             R0, #1
518060:  BEQ             loc_5180A2
518062:  VLDR            S0, [R4,#0x50]
518066:  VLDR            S2, =0.04
51806A:  VCMPE.F32       S0, S2
51806E:  VMRS            APSR_nzcv, FPSCR
518072:  BGE             loc_5180B4
518074:  VLDR            S0, =0.0
518078:  B               loc_518110
51807A:  VLDR            S2, [R4,#0x24]
51807E:  VMUL.F32        S2, S2, S2
518082:  VCMPE.F32       S0, S2
518086:  VMRS            APSR_nzcv, FPSCR
51808A:  BGE.W           loc_5181D8
51808E:  LDR             R0, [R4,#8]
518090:  MOVS            R2, #1
518092:  MOVS            R3, #0
518094:  LDR             R1, [R0]
518096:  LDR             R6, [R1,#0x1C]
518098:  MOV             R1, R8
51809A:  BLX             R6
51809C:  CMP             R0, #1
51809E:  BNE.W           loc_5181D8
5180A2:  LDR             R0, [R4]
5180A4:  MOV             R1, R8
5180A6:  LDR             R2, [R0,#0x28]
5180A8:  MOV             R0, R4
5180AA:  POP.W           {R8}
5180AE:  POP.W           {R4-R7,LR}
5180B2:  BX              R2
5180B4:  VMOV.F32        S2, #25.0
5180B8:  VCMPE.F32       S0, S2
5180BC:  VMRS            APSR_nzcv, FPSCR
5180C0:  BLE             loc_5180C8
5180C2:  VMOV.F32        S0, #1.0
5180C6:  B               loc_518110
5180C8:  VSQRT.F32       S2, S0
5180CC:  VMOV.F32        S4, #1.0
5180D0:  VCMPE.F32       S0, S4
5180D4:  VMRS            APSR_nzcv, FPSCR
5180D8:  BGE             loc_5180F4
5180DA:  VLDR            S0, =-0.2
5180DE:  VMOV.F32        S4, #1.25
5180E2:  VADD.F32        S0, S2, S0
5180E6:  VMOV.F32        S2, #0.5
5180EA:  VMUL.F32        S0, S0, S4
5180EE:  VMUL.F32        S0, S0, S2
5180F2:  B               loc_518110
5180F4:  VMOV.F32        S0, #-1.0
5180F8:  VMOV.F32        S4, #0.25
5180FC:  VADD.F32        S0, S2, S0
518100:  VMOV.F32        S2, #0.5
518104:  VMUL.F32        S0, S0, S4
518108:  VMUL.F32        S0, S0, S2
51810C:  VADD.F32        S0, S0, S2
518110:  VSQRT.F32       S0, S0
518114:  ADD.W           R3, R4, #0x44 ; 'D'
518118:  VMOV.F32        S2, #3.0
51811C:  VMOV.F32        S4, #2.0
518120:  VMUL.F32        S6, S0, S2
518124:  VCMPE.F32       S6, S4
518128:  VMRS            APSR_nzcv, FPSCR
51812C:  VMOV.F32        S0, S6
518130:  IT GT
518132:  VMOVGT.F32      S0, S4
518136:  LDRB            R0, [R4,#0x1C]
518138:  VLDR            S4, =0.2
51813C:  CMP             R0, #0
51813E:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x51814E)
518140:  IT EQ
518142:  VMOVEQ.F32      S6, S0
518146:  VLDR            S0, [R4,#0x3C]
51814A:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
51814C:  VSUB.F32        S2, S6, S0
518150:  VADD.F32        S8, S0, S4
518154:  LDR             R6, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
518156:  VMOV.F32        S0, S6
51815A:  VCMPE.F32       S2, S4
51815E:  VLDR            S2, [R6]
518162:  VMRS            APSR_nzcv, FPSCR
518166:  IT GT
518168:  VMOVGT.F32      S0, S8
51816C:  LDM             R3, {R1-R3}
51816E:  LDR             R0, [R4,#8]
518170:  VSTR            S0, [R4,#0x3C]
518174:  VMOV            S4, R1
518178:  VSTR            S6, [R4,#0x40]
51817C:  VLDR            S6, [R0,#0xC]
518180:  VCMP.F32        S6, S4
518184:  VMRS            APSR_nzcv, FPSCR
518188:  BNE             loc_5181BC
51818A:  VMOV            S4, R2
51818E:  VLDR            S6, [R0,#0x10]
518192:  VCMP.F32        S6, S4
518196:  VMRS            APSR_nzcv, FPSCR
51819A:  BNE             loc_5181BC
51819C:  VMOV            S4, R3
5181A0:  VLDR            S6, [R0,#0x14]
5181A4:  VCMP.F32        S6, S4
5181A8:  VMRS            APSR_nzcv, FPSCR
5181AC:  BNE             loc_5181BC
5181AE:  VLDR            S4, [R0,#0x18]
5181B2:  VCMP.F32        S4, S2
5181B6:  VMRS            APSR_nzcv, FPSCR
5181BA:  BEQ             loc_5181E2
5181BC:  VSTR            S2, [R0,#0x18]
5181C0:  ADD.W           R12, R0, #0xC
5181C4:  LDRB            R6, [R0,#0x1C]
5181C6:  STM.W           R12, {R1-R3}
5181CA:  AND.W           R1, R6, #0xD0
5181CE:  ORR.W           R1, R1, #0x20 ; ' '
5181D2:  STRB            R1, [R0,#0x1C]
5181D4:  LDR             R1, [R4,#0x3C]
5181D6:  STR             R1, [R0,#0x20]
5181D8:  LDR             R6, [R4,#8]
5181DA:  MOV             R0, R6
5181DC:  POP.W           {R8}
5181E0:  POP             {R4-R7,PC}
5181E2:  VMOV            R1, S0
5181E6:  B               loc_5181D6
