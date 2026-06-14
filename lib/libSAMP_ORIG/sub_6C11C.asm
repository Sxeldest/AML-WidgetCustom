; =========================================================
; Game Engine Function: sub_6C11C
; Address            : 0x6C11C - 0x6C22C
; =========================================================

6C11C:  PUSH            {R4-R7,LR}
6C11E:  ADD             R7, SP, #0xC
6C120:  PUSH.W          {R8}
6C124:  SUB             SP, SP, #0x20
6C126:  LDR             R0, =(off_114AA8 - 0x6C12E)
6C128:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C130)
6C12A:  ADD             R0, PC; off_114AA8
6C12C:  ADD             R1, PC; __stack_chk_guard_ptr
6C12E:  LDR             R0, [R0]; dword_1A4404
6C130:  LDR             R1, [R1]; __stack_chk_guard
6C132:  LDR             R0, [R0]
6C134:  LDR             R1, [R1]
6C136:  STR             R1, [SP,#0x30+var_14]
6C138:  MOV             R1, #0x6D687C
6C140:  ADD.W           R8, R0, R1
6C144:  MOV             R0, R8; s
6C146:  BLX             strlen
6C14A:  CMN.W           R0, #0x10
6C14E:  BCS             loc_6C226
6C150:  MOV             R4, R0
6C152:  CMP             R0, #0xB
6C154:  BCS             loc_6C166
6C156:  LSLS            R0, R4, #1
6C158:  STRB.W          R0, [SP,#0x30+var_2C]
6C15C:  ADD             R0, SP, #0x30+var_2C
6C15E:  ADD.W           R6, R0, #1
6C162:  CBNZ            R4, loc_6C17E
6C164:  B               loc_6C188
6C166:  ADD.W           R0, R4, #0x10
6C16A:  BIC.W           R5, R0, #0xF
6C16E:  MOV             R0, R5; unsigned int
6C170:  BLX             j__Znwj; operator new(uint)
6C174:  MOV             R6, R0
6C176:  STRD.W          R4, R0, [SP,#0x30+var_28]
6C17A:  ADDS            R0, R5, #1
6C17C:  STR             R0, [SP,#0x30+var_2C]
6C17E:  MOV             R0, R6; dest
6C180:  MOV             R1, R8; src
6C182:  MOV             R2, R4; n
6C184:  BLX             j_memcpy
6C188:  LDR             R1, =(aFontsArialBold - 0x6C192); "fonts/arial_bold.ttf" ...
6C18A:  MOVS            R5, #0
6C18C:  STRB            R5, [R6,R4]
6C18E:  ADD             R1, PC; "fonts/arial_bold.ttf"
6C190:  ADD             R0, SP, #0x30+var_2C; int
6C192:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
6C196:  VLDR            D16, [R0]
6C19A:  LDR             R1, [R0,#8]
6C19C:  STR             R1, [SP,#0x30+var_18]
6C19E:  VSTR            D16, [SP,#0x30+var_20]
6C1A2:  STRD.W          R5, R5, [R0]
6C1A6:  STR             R5, [R0,#8]
6C1A8:  LDRB.W          R0, [SP,#0x30+var_2C]
6C1AC:  LSLS            R0, R0, #0x1F
6C1AE:  ITT NE
6C1B0:  LDRNE           R0, [SP,#0x30+var_24]; void *
6C1B2:  BLXNE           j__ZdlPv; operator delete(void *)
6C1B6:  MOVS            R0, #0xB4; unsigned int
6C1B8:  BLX             j__Znwj; operator new(uint)
6C1BC:  MOV             R4, R0
6C1BE:  LDR             R0, =(off_114ADC - 0x6C1C4)
6C1C0:  ADD             R0, PC; off_114ADC
6C1C2:  LDR             R0, [R0]; dword_11751C
6C1C4:  LDR             R0, [R0]
6C1C6:  VLDR            S0, [R0,#4]
6C1CA:  VLDR            S2, [R0,#8]
6C1CE:  VCVT.F32.S32    S0, S0
6C1D2:  VCVT.F32.S32    S2, S2
6C1D6:  VSTR            S0, [SP,#0x30+var_2C]
6C1DA:  VSTR            S2, [SP,#0x30+var_28]
6C1DE:  ADD             R1, SP, #0x30+var_2C
6C1E0:  ADD             R2, SP, #0x30+var_20
6C1E2:  MOV             R0, R4
6C1E4:  BL              sub_7B698
6C1E8:  LDR             R5, =(dword_1A442C - 0x6C1F0)
6C1EA:  LDR             R0, [R4]
6C1EC:  ADD             R5, PC; dword_1A442C
6C1EE:  LDR             R1, [R0,#0x2C]
6C1F0:  STR             R4, [R5]
6C1F2:  MOV             R0, R4
6C1F4:  BLX             R1
6C1F6:  LDR             R0, [R5]
6C1F8:  LDR             R1, [R0]
6C1FA:  LDR             R1, [R1,#8]
6C1FC:  BLX             R1
6C1FE:  LDRB.W          R0, [SP,#0x30+var_20]
6C202:  LSLS            R0, R0, #0x1F
6C204:  ITT NE
6C206:  LDRNE           R0, [SP,#0x30+var_18]; void *
6C208:  BLXNE           j__ZdlPv; operator delete(void *)
6C20C:  LDR             R0, [SP,#0x30+var_14]
6C20E:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C214)
6C210:  ADD             R1, PC; __stack_chk_guard_ptr
6C212:  LDR             R1, [R1]; __stack_chk_guard
6C214:  LDR             R1, [R1]
6C216:  CMP             R1, R0
6C218:  ITTT EQ
6C21A:  ADDEQ           SP, SP, #0x20 ; ' '
6C21C:  POPEQ.W         {R8}
6C220:  POPEQ           {R4-R7,PC}
6C222:  BLX             __stack_chk_fail
6C226:  ADD             R0, SP, #0x30+var_2C
6C228:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
