; =========================================================
; Game Engine Function: sub_1EC10A
; Address            : 0x1EC10A - 0x1EC19A
; =========================================================

1EC10A:  PUSH            {R4-R7,LR}
1EC10C:  ADD             R7, SP, #0xC
1EC10E:  PUSH.W          {R6-R10}
1EC112:  MOV             R8, R0
1EC114:  LDR             R0, [R7,#arg_4]
1EC116:  STR             R0, [SP,#0x20+var_20]
1EC118:  MOV             R0, R8
1EC11A:  MOV             R5, R3
1EC11C:  MOV             R10, R2
1EC11E:  MOV             R9, R1
1EC120:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIyyEEPyEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<ulong long,ulong long> &,ulong long *>(ulong long *,ulong long *,ulong long *,ulong long *,std::__less<ulong long,ulong long> &)
1EC124:  LDR.W           R12, [R7,#arg_0]
1EC128:  LDRD.W          R1, R2, [R5]
1EC12C:  LDRD.W          R4, R3, [R12]
1EC130:  SUBS            R6, R4, R1
1EC132:  SBCS.W          R6, R3, R2
1EC136:  BCS             loc_1EC194
1EC138:  STRD.W          R4, R3, [R5]
1EC13C:  STRD.W          R1, R2, [R12]
1EC140:  LDRD.W          R1, R2, [R10]
1EC144:  LDRD.W          R3, R4, [R5]
1EC148:  SUBS            R6, R3, R1
1EC14A:  SBCS.W          R6, R4, R2
1EC14E:  BCS             loc_1EC18E
1EC150:  STRD.W          R3, R4, [R10]
1EC154:  STRD.W          R1, R2, [R5]
1EC158:  LDRD.W          R1, R2, [R9]
1EC15C:  LDRD.W          R3, R4, [R10]
1EC160:  SUBS            R5, R3, R1
1EC162:  SBCS.W          R5, R4, R2
1EC166:  BCS             loc_1EC192
1EC168:  STRD.W          R3, R4, [R9]
1EC16C:  STRD.W          R1, R2, [R10]
1EC170:  LDRD.W          R1, R2, [R8]
1EC174:  LDRD.W          R3, R4, [R9]
1EC178:  SUBS            R5, R3, R1
1EC17A:  SBCS.W          R5, R4, R2
1EC17E:  ITEEE CS
1EC180:  ADDCS           R0, #3
1EC182:  STRDCC.W        R3, R4, [R8]
1EC186:  STRDCC.W        R1, R2, [R9]
1EC18A:  ADDCC           R0, #4
1EC18C:  B               loc_1EC194
1EC18E:  ADDS            R0, #1
1EC190:  B               loc_1EC194
1EC192:  ADDS            R0, #2
1EC194:  POP.W           {R2,R3,R8-R10}
1EC198:  POP             {R4-R7,PC}
