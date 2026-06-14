; =========================================================
; Game Engine Function: sub_102128
; Address            : 0x102128 - 0x1021E6
; =========================================================

102128:  PUSH            {R4-R7,LR}
10212A:  ADD             R7, SP, #0xC
10212C:  PUSH.W          {R8-R11}
102130:  SUB             SP, SP, #4
102132:  VPUSH           {D8}
102136:  SUB             SP, SP, #0x78
102138:  MOV             R4, R0
10213A:  LDR             R0, [R0,#4]
10213C:  CMP             R0, #0
10213E:  BEQ             loc_1021D8
102140:  LDR             R0, =(off_23494C - 0x102148)
102142:  ADD             R1, SP, #0xA0+var_68
102144:  ADD             R0, PC; off_23494C
102146:  LDR             R0, [R0]; dword_23DF24
102148:  LDR             R0, [R0]
10214A:  ADD.W           R0, R0, #0x960000
10214E:  ADD.W           R0, R0, #0xB500
102152:  VLDR            S16, [R0]
102156:  MOV             R0, R4
102158:  BL              sub_F8910
10215C:  LDR             R0, [R4,#4]
10215E:  ADD.W           LR, SP, #0xA0+var_64
102162:  VLDR            S4, [SP,#0xA0+var_38]
102166:  VLDR            S8, [SP,#0xA0+var_34]
10216A:  LDR             R6, [R0,#0x48]
10216C:  LDR             R5, [R0,#0x4C]
10216E:  LDR             R0, [R0,#0x50]
102170:  VMOV            S2, R6
102174:  LDR             R1, [SP,#0xA0+var_68]
102176:  VMOV            S6, R5
10217A:  STR             R1, [SP,#0xA0+var_6C]
10217C:  VMOV            S0, R0
102180:  LDRD.W          R6, R1, [SP,#0xA0+var_40]
102184:  VMLA.F32        S4, S16, S2
102188:  VLDR            S2, [SP,#0xA0+var_30]
10218C:  VMLA.F32        S8, S16, S6
102190:  STR             R1, [SP,#0xA0+var_80]
102192:  VMLA.F32        S2, S16, S0
102196:  LDR.W           R10, [SP,#0xA0+var_4C]
10219A:  LDR             R1, [SP,#0xA0+var_6C]
10219C:  LDR             R0, [SP,#0xA0+var_2C]
10219E:  LDM.W           LR, {R2,R3,R8,R12,LR}
1021A2:  LDRD.W          R5, R11, [SP,#0xA0+var_48]
1021A6:  LDR.W           R9, [SP,#0xA0+var_50]
1021AA:  STR             R0, [SP,#0xA0+var_70]
1021AC:  MOV             R0, R4
1021AE:  VSTR            S4, [SP,#0xA0+var_38]
1021B2:  VSTR            S8, [SP,#0xA0+var_34]
1021B6:  VSTR            S2, [SP,#0xA0+var_30]
1021BA:  VSTR            S4, [SP,#0xA0+var_7C]
1021BE:  VSTR            S8, [SP,#0xA0+var_78]
1021C2:  VSTR            S2, [SP,#0xA0+var_74]
1021C6:  STMEA.W         SP, {R8,R12,LR}
1021CA:  STRD.W          R9, R10, [SP,#0xA0+var_94]
1021CE:  STRD.W          R5, R11, [SP,#0xA0+var_8C]
1021D2:  STR             R6, [SP,#0xA0+var_84]
1021D4:  BL              sub_F8F58
1021D8:  ADD             SP, SP, #0x78 ; 'x'
1021DA:  VPOP            {D8}
1021DE:  ADD             SP, SP, #4
1021E0:  POP.W           {R8-R11}
1021E4:  POP             {R4-R7,PC}
