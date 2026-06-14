; =========================================================
; Game Engine Function: sub_1387D4
; Address            : 0x1387D4 - 0x138854
; =========================================================

1387D4:  PUSH            {R4-R7,LR}
1387D6:  ADD             R7, SP, #0xC
1387D8:  PUSH.W          {R8-R10}
1387DC:  SUB             SP, SP, #0x10
1387DE:  MOV             R10, R1
1387E0:  LDR             R1, =(byte_8F794 - 0x1387EA)
1387E2:  ADD             R6, SP, #0x28+var_24
1387E4:  MOV             R4, R0
1387E6:  ADD             R1, PC; byte_8F794 ; s
1387E8:  MOV             R8, R3
1387EA:  MOV             R0, R6; int
1387EC:  MOV             R5, R2
1387EE:  BL              sub_DC6DC
1387F2:  MOV             R0, R4
1387F4:  MOV             R1, R6
1387F6:  MOVS            R2, #0
1387F8:  BL              sub_13CE34
1387FC:  LDRB.W          R0, [SP,#0x28+var_24]
138800:  LDR.W           R9, [R7,#arg_0]
138804:  LSLS            R0, R0, #0x1F
138806:  ITT NE
138808:  LDRNE           R0, [SP,#0x28+var_1C]; void *
13880A:  BLXNE           j__ZdlPv; operator delete(void *)
13880E:  LDR             R0, =(_ZTVN11ButtonVoice4iconE - 0x138818); `vtable for'ButtonVoice::icon ...
138810:  STRD.W          R5, R8, [R4,#0x74]
138814:  ADD             R0, PC; `vtable for'ButtonVoice::icon
138816:  STRB.W          R10, [R4,#0x70]
13881A:  ADDS            R0, #8
13881C:  STR             R0, [R4]
13881E:  ADD.W           R0, R4, #0x7C ; '|'
138822:  MOV             R1, R9
138824:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
138828:  LDRD.W          R3, R2, [R7,#arg_4]
13882C:  LDRD.W          R1, R0, [R7,#arg_C]
138830:  VLD1.32         {D16-D17}, [R3]
138834:  ADD.W           R3, R4, #0x88
138838:  VST1.32         {D16-D17}, [R3]!
13883C:  VLD1.32         {D16-D17}, [R2]
138840:  VST1.32         {D16-D17}, [R3]!
138844:  STR.W           R0, [R4,#0xAC]
138848:  MOV             R0, R4
13884A:  STR             R1, [R3]
13884C:  ADD             SP, SP, #0x10
13884E:  POP.W           {R8-R10}
138852:  POP             {R4-R7,PC}
