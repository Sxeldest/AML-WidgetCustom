; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminal13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x53DFDC - 0x53E162
; =========================================================

53DFDC:  PUSH            {R4-R7,LR}
53DFDE:  ADD             R7, SP, #0xC
53DFE0:  PUSH.W          {R8,R9,R11}
53DFE4:  MOV             R4, R3
53DFE6:  MOV             R5, R2
53DFE8:  MOV             R8, R1
53DFEA:  MOV             R9, R0
53DFEC:  CMP             R4, #0
53DFEE:  BEQ.W           def_53E054; jumptable 0053E01A cases 10-14,16-30,32-35,37-40
53DFF2:  LDR             R0, [R4]
53DFF4:  LDR             R1, [R0,#8]
53DFF6:  MOV             R0, R4
53DFF8:  BLX             R1
53DFFA:  MOV             R6, R0
53DFFC:  LDR             R0, [R4]
53DFFE:  LDR             R1, [R0,#0x2C]
53E000:  MOV             R0, R4
53E002:  BLX             R1
53E004:  LDR.W           R1, [R9,#0xC]
53E008:  CMP             R1, #0
53E00A:  BEQ             loc_53E040
53E00C:  CMP             R0, R1
53E00E:  BNE             loc_53E040
53E010:  SUB.W           R0, R6, #9; switch 33 cases
53E014:  CMP             R0, #0x20 ; ' '
53E016:  BHI.W           def_53E01A; jumptable 0053E01A default case
53E01A:  TBB.W           [PC,R0]; switch jump
53E01E:  DCB 0x8E; jump table for switch statement
53E01F:  DCB 0x95
53E020:  DCB 0x95
53E021:  DCB 0x95
53E022:  DCB 0x95
53E023:  DCB 0x95
53E024:  DCB 0x8E
53E025:  DCB 0x95
53E026:  DCB 0x95
53E027:  DCB 0x95
53E028:  DCB 0x95
53E029:  DCB 0x95
53E02A:  DCB 0x95
53E02B:  DCB 0x95
53E02C:  DCB 0x95
53E02D:  DCB 0x95
53E02E:  DCB 0x95
53E02F:  DCB 0x95
53E030:  DCB 0x95
53E031:  DCB 0x95
53E032:  DCB 0x95
53E033:  DCB 0x95
53E034:  DCB 0x8E
53E035:  DCB 0x95
53E036:  DCB 0x95
53E037:  DCB 0x95
53E038:  DCB 0x95
53E039:  DCB 0x8E
53E03A:  DCB 0x95
53E03B:  DCB 0x95
53E03C:  DCB 0x95
53E03D:  DCB 0x95
53E03E:  DCB 0x8E
53E03F:  ALIGN 2
53E040:  CMP             R6, #0x49 ; 'I'
53E042:  IT NE
53E044:  CMPNE           R6, #0x24 ; '$'
53E046:  BEQ.W           loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E04A:  SUB.W           R0, R6, #9; switch 33 cases
53E04E:  CMP             R0, #0x20 ; ' '
53E050:  BHI.W           def_53E054; jumptable 0053E01A cases 10-14,16-30,32-35,37-40
53E054:  TBB.W           [PC,R0]; switch jump
53E058:  DCB 0x11; jump table for switch statement
53E059:  DCB 0x78
53E05A:  DCB 0x78
53E05B:  DCB 0x78
53E05C:  DCB 0x78
53E05D:  DCB 0x78
53E05E:  DCB 0x11
53E05F:  DCB 0x78
53E060:  DCB 0x78
53E061:  DCB 0x78
53E062:  DCB 0x78
53E063:  DCB 0x78
53E064:  DCB 0x78
53E065:  DCB 0x78
53E066:  DCB 0x78
53E067:  DCB 0x78
53E068:  DCB 0x78
53E069:  DCB 0x78
53E06A:  DCB 0x78
53E06B:  DCB 0x78
53E06C:  DCB 0x78
53E06D:  DCB 0x78
53E06E:  DCB 0x11
53E06F:  DCB 0x78
53E070:  DCB 0x78
53E071:  DCB 0x78
53E072:  DCB 0x78
53E073:  DCB 0x78
53E074:  DCB 0x78
53E075:  DCB 0x78
53E076:  DCB 0x78
53E077:  DCB 0x78
53E078:  DCB 0x11
53E079:  ALIGN 2
53E07A:  LDR             R0, [R4]; jumptable 0053E054 cases 9,15,31,41
53E07C:  LDR             R1, [R0,#0x2C]
53E07E:  MOV             R0, R4
53E080:  BLX             R1
53E082:  CMP             R0, #0
53E084:  BEQ             loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E086:  LDR             R0, [R4]
53E088:  LDR             R1, [R0,#0x2C]
53E08A:  MOV             R0, R4
53E08C:  BLX             R1
53E08E:  LDRB.W          R0, [R0,#0x3A]
53E092:  AND.W           R0, R0, #7
53E096:  CMP             R0, #3
53E098:  BNE             loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E09A:  LDR             R0, [R4]
53E09C:  LDR             R1, [R0,#0x2C]
53E09E:  MOV             R0, R4
53E0A0:  BLX             R1
53E0A2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53E0A6:  CMP             R0, #0
53E0A8:  BNE             loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E0AA:  LDR.W           R5, [R9,#0x10]
53E0AE:  CMP             R5, #0
53E0B0:  BEQ             loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E0B2:  LDR             R0, [R4]
53E0B4:  ORR.W           R6, R6, #0x20 ; ' '
53E0B8:  LDR             R1, [R0,#0x2C]
53E0BA:  MOV             R0, R4
53E0BC:  BLX             R1
53E0BE:  MOV             R1, R0; CPed *
53E0C0:  MOV             R0, R5; this
53E0C2:  BLX             j__ZN7CCopPed17AddCriminalToKillEP4CPed; CCopPed::AddCriminalToKill(CPed *)
53E0C6:  CMP             R6, #0x29 ; ')'
53E0C8:  BNE             loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E0CA:  CBZ             R0, loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E0CC:  LDR.W           R0, [R9,#0xC]
53E0D0:  CBZ             R0, loc_53E124
53E0D2:  LDR.W           R1, [R8,#0x14]
53E0D6:  LDR             R2, [R0,#0x14]
53E0D8:  ADD.W           R3, R1, #0x30 ; '0'
53E0DC:  CMP             R1, #0
53E0DE:  IT EQ
53E0E0:  ADDEQ.W         R3, R8, #4
53E0E4:  ADD.W           R1, R2, #0x30 ; '0'
53E0E8:  CMP             R2, #0
53E0EA:  VLDR            S0, [R3]
53E0EE:  IT EQ
53E0F0:  ADDEQ           R1, R0, #4
53E0F2:  VLDR            D16, [R3,#4]
53E0F6:  VLDR            S2, [R1]
53E0FA:  VLDR            D17, [R1,#4]
53E0FE:  VSUB.F32        S0, S2, S0
53E102:  VSUB.F32        D16, D17, D16
53E106:  VMUL.F32        D1, D16, D16
53E10A:  VMUL.F32        S0, S0, S0
53E10E:  VADD.F32        S0, S0, S2
53E112:  VADD.F32        S0, S0, S3
53E116:  VLDR            S2, =625.0
53E11A:  VCMPE.F32       S0, S2
53E11E:  VMRS            APSR_nzcv, FPSCR
53E122:  BGE             loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E124:  LDR             R0, [R4]
53E126:  LDR             R1, [R0,#0x2C]
53E128:  MOV             R0, R4
53E12A:  BLX             R1
53E12C:  MOV             R1, R0; CPed *
53E12E:  MOV             R0, R9; this
53E130:  BLX             j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53E134:  B               loc_53E13A; jumptable 0053E01A cases 9,15,31,36,41
53E136:  CMP             R6, #0x49 ; 'I'; jumptable 0053E01A default case
53E138:  BNE             def_53E054; jumptable 0053E01A cases 10-14,16-30,32-35,37-40
53E13A:  LDR             R0, [R4,#4]; jumptable 0053E01A cases 9,15,31,36,41
53E13C:  ADDS            R0, #1
53E13E:  STR             R0, [R4,#4]
53E140:  MOVS            R0, #0
53E142:  POP.W           {R8,R9,R11}
53E146:  POP             {R4-R7,PC}
53E148:  LDR.W           R0, [R9,#8]; jumptable 0053E01A cases 10-14,16-30,32-35,37-40
53E14C:  MOV             R2, R5
53E14E:  MOV             R3, R4
53E150:  LDR             R1, [R0]
53E152:  LDR.W           R12, [R1,#0x1C]
53E156:  MOV             R1, R8
53E158:  POP.W           {R8,R9,R11}
53E15C:  POP.W           {R4-R7,LR}
53E160:  BX              R12
