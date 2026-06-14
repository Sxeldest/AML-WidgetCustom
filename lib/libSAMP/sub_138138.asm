; =========================================================
; Game Engine Function: sub_138138
; Address            : 0x138138 - 0x138198
; =========================================================

138138:  PUSH            {R4-R7,LR}
13813A:  ADD             R7, SP, #0xC
13813C:  PUSH.W          {R11}
138140:  SUB             SP, SP, #0x10
138142:  MOV             R4, R1
138144:  LDR             R1, =(unk_3141C8 - 0x13814A)
138146:  ADD             R1, PC; unk_3141C8
138148:  LDR             R1, [R1,#(dword_3141D0 - 0x3141C8)]
13814A:  CBZ             R1, loc_138190
13814C:  LDR             R2, [R1,#0xC]
13814E:  LDR.W           R3, [R2,#0xAC]
138152:  CMP             R3, R0
138154:  BEQ             loc_13815A
138156:  LDR             R1, [R1]
138158:  B               loc_13814A
13815A:  LDR             R0, =(off_234A54 - 0x138166)
13815C:  ADD             R6, SP, #0x20+var_1C
13815E:  ADD.W           R1, R2, #0x7C ; '|'
138162:  ADD             R0, PC; off_234A54
138164:  LDR             R0, [R0]; dword_381A0C
138166:  LDR             R5, [R0]
138168:  MOV             R0, R6
13816A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
13816E:  VMOV            S0, R4
138172:  VCVT.F32.S32    S0, S0
138176:  VMOV            R2, S0
13817A:  MOV             R0, R5
13817C:  MOV             R1, R6
13817E:  BL              sub_1381B4
138182:  LDRB.W          R0, [SP,#0x20+var_1C]
138186:  LSLS            R0, R0, #0x1F
138188:  BEQ             loc_138190
13818A:  LDR             R0, [SP,#0x20+var_14]; void *
13818C:  BLX             j__ZdlPv; operator delete(void *)
138190:  ADD             SP, SP, #0x10
138192:  POP.W           {R11}
138196:  POP             {R4-R7,PC}
