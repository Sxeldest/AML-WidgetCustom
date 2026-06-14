; =========================================================
; Game Engine Function: sub_6B030
; Address            : 0x6B030 - 0x6B1FC
; =========================================================

6B030:  PUSH            {R4-R7,LR}
6B032:  ADD             R7, SP, #0xC
6B034:  PUSH.W          {R8,R9,R11}
6B038:  SUB             SP, SP, #0xB0
6B03A:  LDR             R1, =(aMemory - 0x6B048); "Memory" ...
6B03C:  MOV             R8, R0
6B03E:  LDR             R2, =(aGetlibraryaddr - 0x6B04A); "getLibraryAddress: %s" ...
6B040:  MOV             R3, R8
6B042:  LDR             R0, =(__stack_chk_guard_ptr - 0x6B04C)
6B044:  ADD             R1, PC; "Memory"
6B046:  ADD             R2, PC; "getLibraryAddress: %s"
6B048:  ADD             R0, PC; __stack_chk_guard_ptr
6B04A:  LDR             R0, [R0]; __stack_chk_guard
6B04C:  LDR             R0, [R0]
6B04E:  STR             R0, [SP,#0xC8+var_1C]
6B050:  MOVS            R0, #4; prio
6B052:  BLX             __android_log_print
6B056:  ADD.W           R9, SP, #0xC8+var_68
6B05A:  VMOV.I32        Q8, #0
6B05E:  MOVS            R1, #0
6B060:  MOV             R0, R9
6B062:  VST1.64         {D16-D17}, [R0]!
6B066:  VST1.64         {D16-D17}, [R0]!
6B06A:  VST1.64         {D16-D17}, [R0]!
6B06E:  VST1.64         {D16-D17}, [R0]!
6B072:  STR             R1, [R0]
6B074:  MOV             R0, R8; s
6B076:  BLX             strlen
6B07A:  CMN.W           R0, #0x10
6B07E:  BCS.W           loc_6B1F6
6B082:  MOV             R5, R0
6B084:  CMP             R0, #0xB
6B086:  BCS             loc_6B098
6B088:  LSLS            R0, R5, #1
6B08A:  STRB.W          R0, [SP,#0xC8+var_BC]
6B08E:  ADD             R0, SP, #0xC8+var_BC
6B090:  ADD.W           R6, R0, #1
6B094:  CBNZ            R5, loc_6B0B2
6B096:  B               loc_6B0BC
6B098:  ADD.W           R0, R5, #0x10
6B09C:  BIC.W           R4, R0, #0xF
6B0A0:  MOV             R0, R4; unsigned int
6B0A2:  BLX             j__Znwj; operator new(uint)
6B0A6:  MOV             R6, R0
6B0A8:  ORR.W           R0, R4, #1
6B0AC:  STR             R5, [SP,#0xC8+var_B8]
6B0AE:  STR             R0, [SP,#0xC8+var_BC]
6B0B0:  STR             R6, [SP,#0xC8+var_B4]
6B0B2:  MOV             R0, R6; dest
6B0B4:  MOV             R1, R8; src
6B0B6:  MOV             R2, R5; n
6B0B8:  BLX             j_memcpy
6B0BC:  MOVS            R0, #0
6B0BE:  STRB            R0, [R6,R5]
6B0C0:  ADD             R5, SP, #0xC8+var_B0
6B0C2:  ADD             R1, SP, #0xC8+var_BC
6B0C4:  MOV             R0, R5
6B0C6:  BL              sub_B04BC
6B0CA:  MOV             R0, R5
6B0CC:  LDRB.W          R1, [SP,#0xC8+var_40]
6B0D0:  VLD1.64         {D16-D17}, [R0]!
6B0D4:  ADD.W           R6, R5, #0x28 ; '('
6B0D8:  ADD.W           R4, R9, #0x28 ; '('
6B0DC:  VLD1.64         {D18-D19}, [R0]!
6B0E0:  VLDR            D20, [R0]
6B0E4:  MOV             R0, R9
6B0E6:  VST1.64         {D16-D17}, [R0]!
6B0EA:  VST1.64         {D18-D19}, [R0]!
6B0EE:  VSTR            D20, [R0]
6B0F2:  LSLS            R0, R1, #0x1F
6B0F4:  ITT NE
6B0F6:  LDRNE           R0, [SP,#0xC8+var_38]; void *
6B0F8:  BLXNE           j__ZdlPv; operator delete(void *)
6B0FC:  LDRB.W          R1, [SP,#0xC8+var_30]
6B100:  VLDR            D16, [R6]
6B104:  LDR             R2, [R6,#8]
6B106:  ADD.W           R6, R5, #0x38 ; '8'
6B10A:  LDR             R0, [SP,#0xC8+var_7C]
6B10C:  ADD.W           R5, R9, #0x38 ; '8'
6B110:  STR             R0, [SP,#0xC8+var_34]
6B112:  LSLS            R0, R1, #0x1F
6B114:  STR             R2, [R4,#8]
6B116:  VSTR            D16, [R4]
6B11A:  MOV.W           R4, #0
6B11E:  STRH.W          R4, [SP,#0xC8+var_88]
6B122:  BNE             loc_6B136
6B124:  VLDR            D16, [R6]
6B128:  LDR             R0, [R6,#8]
6B12A:  STR             R0, [R5,#8]
6B12C:  VSTR            D16, [R5]
6B130:  STRH.W          R4, [SP,#0xC8+var_78]
6B134:  B               loc_6B15A
6B136:  LDR             R0, [SP,#0xC8+var_28]; void *
6B138:  BLX             j__ZdlPv; operator delete(void *)
6B13C:  LDRB.W          R1, [SP,#0xC8+var_88]
6B140:  VLDR            D16, [R6]
6B144:  LDR             R0, [R6,#8]
6B146:  STR             R0, [R5,#8]
6B148:  LSLS            R0, R1, #0x1F
6B14A:  VSTR            D16, [R5]
6B14E:  STRH.W          R4, [SP,#0xC8+var_78]
6B152:  ITT NE
6B154:  LDRNE           R0, [SP,#0xC8+var_80]; void *
6B156:  BLXNE           j__ZdlPv; operator delete(void *)
6B15A:  LDRB.W          R0, [SP,#0xC8+var_BC]
6B15E:  LSLS            R0, R0, #0x1F
6B160:  ITT NE
6B162:  LDRNE           R0, [SP,#0xC8+var_B4]; void *
6B164:  BLXNE           j__ZdlPv; operator delete(void *)
6B168:  LDRD.W          R5, R0, [SP,#0xC8+var_68]
6B16C:  ORRS.W          R1, R5, R0
6B170:  BEQ             loc_6B182
6B172:  LDRD.W          R1, R2, [SP,#0xC8+var_60]
6B176:  ORRS            R1, R2
6B178:  ITT NE
6B17A:  LDRBNE.W        R1, [SP,#0xC8+var_50]
6B17E:  CMPNE           R1, #0
6B180:  BNE             loc_6B1CC
6B182:  LDR             R1, =(aMemory - 0x6B18A); "Memory" ...
6B184:  LDR             R2, =(aNoMapForLib - 0x6B18C); "No map for lib: " ...
6B186:  ADD             R1, PC; "Memory"
6B188:  ADD             R2, PC; "No map for lib: "
6B18A:  MOVS            R0, #4; prio
6B18C:  MOV             R3, R8
6B18E:  BLX             __android_log_print
6B192:  MOVS            R5, #0
6B194:  LDRB.W          R0, [SP,#0xC8+var_30]
6B198:  LSLS            R0, R0, #0x1F
6B19A:  ITT NE
6B19C:  LDRNE           R0, [SP,#0xC8+var_28]; void *
6B19E:  BLXNE           j__ZdlPv; operator delete(void *)
6B1A2:  LDRB.W          R0, [SP,#0xC8+var_40]
6B1A6:  LSLS            R0, R0, #0x1F
6B1A8:  ITT NE
6B1AA:  LDRNE           R0, [SP,#0xC8+var_38]; void *
6B1AC:  BLXNE           j__ZdlPv; operator delete(void *)
6B1B0:  LDR             R0, [SP,#0xC8+var_1C]
6B1B2:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B1B8)
6B1B4:  ADD             R1, PC; __stack_chk_guard_ptr
6B1B6:  LDR             R1, [R1]; __stack_chk_guard
6B1B8:  LDR             R1, [R1]
6B1BA:  CMP             R1, R0
6B1BC:  ITTTT EQ
6B1BE:  MOVEQ           R0, R5
6B1C0:  ADDEQ           SP, SP, #0xB0
6B1C2:  POPEQ.W         {R8,R9,R11}
6B1C6:  POPEQ           {R4-R7,PC}
6B1C8:  BLX             __stack_chk_fail
6B1CC:  LDR             R1, [SP,#0xC8+var_58]
6B1CE:  CMP             R1, #5
6B1D0:  BCC             loc_6B182
6B1D2:  LDR             R1, [R5]
6B1D4:  MOV             R2, #0x464C457F
6B1DC:  CMP             R1, R2
6B1DE:  BNE             loc_6B182
6B1E0:  LDR             R1, =(aMemory - 0x6B1E8); "Memory" ...
6B1E2:  LDR             R2, =(aSAddress0xX - 0x6B1EA); "%s address: 0x%X " ...
6B1E4:  ADD             R1, PC; "Memory"
6B1E6:  ADD             R2, PC; "%s address: 0x%X "
6B1E8:  STRD.W          R5, R0, [SP,#0xC8+var_C8]
6B1EC:  MOVS            R0, #4; prio
6B1EE:  MOV             R3, R8
6B1F0:  BLX             __android_log_print
6B1F4:  B               loc_6B194
6B1F6:  ADD             R0, SP, #0xC8+var_BC
6B1F8:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
