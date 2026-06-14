; =========================================================
; Game Engine Function: sub_1379C0
; Address            : 0x1379C0 - 0x137A3E
; =========================================================

1379C0:  PUSH            {R4-R7,LR}
1379C2:  ADD             R7, SP, #0xC
1379C4:  PUSH.W          {R8}
1379C8:  SUB             SP, SP, #0x40
1379CA:  MOV             R4, R1
1379CC:  MOV             R1, R0
1379CE:  LDR             R0, =(dword_3141E8 - 0x1379DA)
1379D0:  MOV             R8, R2
1379D2:  ADD             R6, SP, #0x50+var_4C
1379D4:  MOV             R5, R3
1379D6:  ADD             R0, PC; dword_3141E8
1379D8:  LDRD.W          R2, R0, [R0]
1379DC:  SUBS            R0, R0, R2
1379DE:  MOV             R2, #0xEEEEEEEF
1379E6:  ASRS            R0, R0, #2
1379E8:  MULS            R0, R2
1379EA:  STR             R0, [SP,#0x50+var_4C]
1379EC:  ADDS            R0, R6, #4
1379EE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1379F2:  ADD.W           R0, R6, #0x10
1379F6:  MOV             R1, R4
1379F8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1379FC:  VLD1.32         {D16-D17}, [R5]
137A00:  ADD.W           R1, R6, #0x1C
137A04:  LDR             R0, =(dword_3141E8 - 0x137A0E)
137A06:  VLD1.32         {D18-D19}, [R8]
137A0A:  ADD             R0, PC; dword_3141E8
137A0C:  VST1.32         {D18-D19}, [R1]!
137A10:  VST1.32         {D16-D17}, [R1]
137A14:  MOV             R1, R6
137A16:  BL              sub_137A64
137A1A:  LDRB.W          R0, [SP,#0x50+var_3C]
137A1E:  LSLS            R0, R0, #0x1F
137A20:  ITT NE
137A22:  LDRNE           R0, [SP,#0x50+var_34]; void *
137A24:  BLXNE           j__ZdlPv; operator delete(void *)
137A28:  LDRB.W          R0, [SP,#0x50+var_48]
137A2C:  LSLS            R0, R0, #0x1F
137A2E:  ITT NE
137A30:  LDRNE           R0, [SP,#0x50+var_40]; void *
137A32:  BLXNE           j__ZdlPv; operator delete(void *)
137A36:  ADD             SP, SP, #0x40 ; '@'
137A38:  POP.W           {R8}
137A3C:  POP             {R4-R7,PC}
