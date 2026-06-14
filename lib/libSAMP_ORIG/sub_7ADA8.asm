; =========================================================
; Game Engine Function: sub_7ADA8
; Address            : 0x7ADA8 - 0x7B1D2
; =========================================================

7ADA8:  PUSH            {R4-R7,LR}
7ADAA:  ADD             R7, SP, #0xC
7ADAC:  PUSH.W          {R8-R11}
7ADB0:  SUB             SP, SP, #4
7ADB2:  VPUSH           {D8-D9}
7ADB6:  SUB             SP, SP, #0x38
7ADB8:  MOV             R11, R0
7ADBA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x7ADC4)
7ADBE:  MOVS            R1, #0; tz
7ADC0:  ADD             R0, PC; __stack_chk_guard_ptr
7ADC2:  LDR             R0, [R0]; __stack_chk_guard
7ADC4:  LDR             R0, [R0]
7ADC6:  STR             R0, [SP,#0x68+var_34]
7ADC8:  ADD             R0, SP, #0x68+tv; tv
7ADCA:  BLX             gettimeofday
7ADCE:  MOVW            R6, #0x4DD3
7ADD2:  LDRD.W          R0, R1, [SP,#0x68+tv]
7ADD6:  MOVT            R6, #0x1062
7ADDA:  SMMUL.W         R1, R1, R6
7ADDE:  ASRS            R2, R1, #6
7ADE0:  ADD.W           R1, R2, R1,LSR#31
7ADE4:  MOV.W           R2, #0x3E8
7ADE8:  MLA.W           R0, R0, R2, R1
7ADEC:  LDR.W           R1, [R11,#4]
7ADF0:  SUBS            R0, R0, R1
7ADF2:  CMP.W           R0, #0x7D0
7ADF6:  BCC.W           loc_7B198
7ADFA:  LDR             R0, =(off_114AB0 - 0x7AE08)
7ADFC:  MOV             R1, #0x23DEF4
7AE04:  ADD             R0, PC; off_114AB0
7AE06:  LDR.W           R8, [R0]; dword_1A4408
7AE0A:  LDR.W           R0, [R8]
7AE0E:  LDR             R0, [R0,R1]
7AE10:  CMP             R0, #0
7AE12:  BEQ.W           loc_7B198
7AE16:  ADD             R0, SP, #0x68+tv; tv
7AE18:  MOVS            R1, #0; tz
7AE1A:  MOVS            R4, #0
7AE1C:  BLX             gettimeofday
7AE20:  LDR             R0, =(off_114AD8 - 0x7AE32)
7AE22:  MOV.W           R3, #0x3E8
7AE26:  LDRD.W          R1, R2, [SP,#0x68+tv]
7AE2A:  VMOV.I32        Q8, #0
7AE2E:  ADD             R0, PC; off_114AD8
7AE30:  LDR             R5, [R0]; dword_1A4434
7AE32:  SMMUL.W         R0, R2, R6
7AE36:  LDR             R2, [R5]
7AE38:  ASRS            R6, R0, #6
7AE3A:  ADD.W           R0, R6, R0,LSR#31
7AE3E:  LDR.W           R2, [R2,#0x3B0]
7AE42:  MLA.W           R0, R1, R3, R0
7AE46:  LDR             R1, [R2]
7AE48:  STR.W           R0, [R11,#4]
7AE4C:  MOVW            R0, #0x139C
7AE50:  ADD             R0, R1
7AE52:  STR             R0, [SP,#0x68+var_50]
7AE54:  ADDW            R0, R1, #0xFB4
7AE58:  STR             R1, [SP,#0x68+var_5C]
7AE5A:  ADDS            R1, R0, R4
7AE5C:  ADDS            R4, #8
7AE5E:  CMP.W           R4, #0x3E8
7AE62:  VLD1.8          {D18}, [R1]
7AE66:  VADDW.U8        Q8, Q8, D18
7AE6A:  BNE             loc_7AE5A
7AE6C:  VADD.I16        D16, D16, D17
7AE70:  LDR             R0, [SP,#0x68+var_50]
7AE72:  VMOV.U16        R1, D16[1]
7AE76:  LDRB.W          R12, [R0]
7AE7A:  VMOV.U16        R2, D16[0]
7AE7E:  LDRB            R6, [R0,#1]
7AE80:  VMOV.U16        R3, D16[2]
7AE84:  LDRB            R4, [R0,#2]
7AE86:  LDRB.W          LR, [R0,#3]
7AE8A:  LDR.W           R0, [R11]
7AE8E:  ADD             R1, R2
7AE90:  VMOV.U16        R2, D16[3]
7AE94:  ADD             R1, R3
7AE96:  ADD             R1, R2
7AE98:  MOV             R2, #0xFFFFFFED
7AE9C:  ADD             R1, R12
7AE9E:  ADD             R1, R6
7AEA0:  ADD             R1, R4
7AEA2:  ADD             R1, LR
7AEA4:  UXTAH.W         R1, R2, R1
7AEA8:  CMP             R0, R1
7AEAA:  IT GT
7AEAC:  MOVGT           R0, R1
7AEAE:  BGT             loc_7AEB6
7AEB0:  CMP.W           R0, #0xFFFFFFFF
7AEB4:  BGT             loc_7AEBE
7AEB6:  BIC.W           R0, R0, R0,ASR#31
7AEBA:  STR.W           R0, [R11]
7AEBE:  LDR             R0, =(off_114B48 - 0x7AECA)
7AEC0:  MOV             R10, R11
7AEC2:  LDR.W           R1, [R10,#8]!
7AEC6:  ADD             R0, PC; off_114B48
7AEC8:  STR.W           R1, [R10,#4]
7AECC:  LDR             R0, [R0]; dword_1A41D8
7AECE:  LDR             R0, [R0]
7AED0:  BL              sub_698B0
7AED4:  MOVS            R0, #0x18; unsigned int
7AED6:  BLX             j__Znwj; operator new(uint)
7AEDA:  MOV             R4, R0
7AEDC:  MOVS            R0, #0
7AEDE:  LDR             R6, [SP,#0x68+var_50]
7AEE0:  MOVW            R3, #0x13A2
7AEE4:  STRD.W          R0, R0, [R4,#0x10]
7AEE8:  LDR             R0, [R5]
7AEEA:  LDR             R5, [SP,#0x68+var_5C]
7AEEC:  LDRD.W          R1, R2, [R6,#0x24]
7AEF0:  ADD             R3, R5
7AEF2:  LDRH            R6, [R6,#4]
7AEF4:  STR             R3, [SP,#0x68+var_58]
7AEF6:  STRD.W          R2, R1, [R4,#8]
7AEFA:  MOVW            R1, #:lower16:unk_1413FD
7AEFE:  STRD.W          R6, R3, [R4]
7AF02:  MOVW            R3, #0x13BC
7AF06:  LDR.W           R0, [R0,#0x3B0]
7AF0A:  MOVT            R1, #:upper16:unk_1413FD
7AF0E:  LDR.W           R2, [R8]
7AF12:  LDR             R0, [R0]
7AF14:  ADD             R1, R2
7AF16:  LDR             R0, [R0,R3]
7AF18:  BLX             R1
7AF1A:  UBFX.W          R1, R0, #8, #8
7AF1E:  UBFX.W          R2, R0, #0x10, #8
7AF22:  LSRS            R0, R0, #0x18
7AF24:  VLDR            S6, =0.0039216
7AF28:  VMOV            S4, R0
7AF2C:  MOV.W           R0, #0x3F800000
7AF30:  VMOV            S0, R1
7AF34:  STR             R0, [SP,#0x68+var_38]
7AF36:  VMOV            S2, R2
7AF3A:  ADD             R0, SP, #0x68+tv
7AF3C:  VCVT.F32.S32    S0, S0
7AF40:  VCVT.F32.S32    S2, S2
7AF44:  VCVT.F32.S32    S4, S4
7AF48:  VMUL.F32        S0, S0, S6
7AF4C:  VMUL.F32        S2, S2, S6
7AF50:  VMUL.F32        S4, S4, S6
7AF54:  VSTR            S0, [SP,#0x68+var_3C]
7AF58:  VSTR            S2, [SP,#0x68+tv.tv_usec]
7AF5C:  VSTR            S4, [SP,#0x68+tv]
7AF60:  BL              sub_88A34
7AF64:  STR             R0, [R4,#0x10]
7AF66:  LDRD.W          R0, R1, [R10,#4]
7AF6A:  STR.W           R8, [SP,#0x68+var_60]
7AF6E:  CMP             R0, R1
7AF70:  STR.W           R10, [SP,#0x68+var_4C]
7AF74:  BEQ             loc_7AF80
7AF76:  STR.W           R4, [R0],#4
7AF7A:  STR.W           R0, [R11,#0xC]
7AF7E:  B               loc_7AFFA
7AF80:  LDR.W           R9, [R10]
7AF84:  SUB.W           R5, R0, R9
7AF88:  MOVS            R0, #1
7AF8A:  ADD.W           R6, R0, R5,ASR#2
7AF8E:  CMP.W           R6, #0x40000000
7AF92:  BCS.W           loc_7B1CC
7AF96:  CMP.W           R6, R5,ASR#1
7AF9A:  MOVW            R0, #0xFFFC
7AF9E:  IT LS
7AFA0:  ASRLS           R6, R5, #1
7AFA2:  MOVT            R0, #0x7FFF
7AFA6:  CMP             R5, R0
7AFA8:  IT CS
7AFAA:  MOVCS           R6, #0x3FFFFFFF
7AFAE:  CBZ             R6, loc_7AFC2
7AFB0:  CMP.W           R6, #0x40000000
7AFB4:  BCS.W           loc_7B1C0
7AFB8:  LSLS            R0, R6, #2; unsigned int
7AFBA:  BLX             j__Znwj; operator new(uint)
7AFBE:  MOV             R8, R0
7AFC0:  B               loc_7AFC6
7AFC2:  MOV.W           R8, #0
7AFC6:  ASRS            R0, R5, #2
7AFC8:  ADD.W           R10, R8, R6,LSL#2
7AFCC:  ADD.W           R6, R8, R0,LSL#2
7AFD0:  CMP             R5, #1
7AFD2:  STR.W           R4, [R6],#4
7AFD6:  BLT             loc_7AFE2
7AFD8:  MOV             R0, R8; dest
7AFDA:  MOV             R1, R9; src
7AFDC:  MOV             R2, R5; n
7AFDE:  BLX             j_memcpy
7AFE2:  CMP.W           R9, #0
7AFE6:  STRD.W          R8, R6, [R11,#8]
7AFEA:  STR.W           R10, [R11,#0x10]
7AFEE:  LDRD.W          R8, R5, [SP,#0x68+var_60]
7AFF2:  ITT NE
7AFF4:  MOVNE           R0, R9; void *
7AFF6:  BLXNE           j__ZdlPv; operator delete(void *)
7AFFA:  VMOV.I32        Q4, #0
7AFFE:  MOV.W           R10, #0
7B002:  MOVS            R0, #1
7B004:  STR.W           R11, [SP,#0x68+var_54]
7B008:  STR             R0, [SP,#0x68+var_48]
7B00A:  B               loc_7B088
7B00C:  LDR.W           R2, [R8]
7B010:  MOV             R6, #0x148E8F
7B018:  STR             R1, [R0,#4]
7B01A:  ADD             R2, R6
7B01C:  MOV             R0, R5
7B01E:  MOV             R1, R4
7B020:  BLX             R2
7B022:  LDR.W           R11, [SP,#0x68+var_4C]
7B026:  MOV             R1, R4
7B028:  LDR             R4, [SP,#0x68+var_48]
7B02A:  LDR.W           R2, [R11]
7B02E:  LDR.W           R3, [R2,R4,LSL#2]
7B032:  LDR.W           R2, [R8]
7B036:  STR             R0, [R3,#8]
7B038:  ADDS            R0, R6, R2
7B03A:  ADD.W           R2, R0, #0x16
7B03E:  MOV             R0, R5
7B040:  BLX             R2
7B042:  LDR.W           R1, [R11]
7B046:  LDR.W           R2, [R9,#4]
7B04A:  LDR.W           R6, [R8]
7B04E:  LDR.W           R3, [R1,R4,LSL#2]
7B052:  LDR             R1, [R2]
7B054:  STR             R0, [R3,#0xC]
7B056:  MOV             R0, #0x14A403
7B05E:  ADDS            R2, R6, R0
7B060:  MOV             R0, R1
7B062:  BLX             R2
7B064:  LDR.W           R1, [R11]
7B068:  LSRS            R0, R0, #8
7B06A:  LDR.W           R11, [SP,#0x68+var_54]
7B06E:  ADD.W           R0, R0, #0xFF000000
7B072:  LDR.W           R1, [R1,R4,LSL#2]
7B076:  ADDS            R4, #1
7B078:  STR             R4, [SP,#0x68+var_48]
7B07A:  STR             R0, [R1,#0x10]
7B07C:  ADD.W           R10, R10, #1
7B080:  CMP.W           R10, #0x3EC
7B084:  BEQ.W           loc_7B198
7B088:  ADD.W           R0, R5, R10
7B08C:  LDRB.W          R0, [R0,#0xFB4]
7B090:  CMP             R0, #0
7B092:  BEQ             loc_7B07C
7B094:  ADD.W           R9, R5, R10,LSL#2
7B098:  LDR.W           R0, [R9,#4]
7B09C:  CMP             R0, #0
7B09E:  ITT NE
7B0A0:  LDRNE           R0, [R0]
7B0A2:  CMPNE           R0, #0
7B0A4:  BEQ             loc_7B07C
7B0A6:  LDR.W           R0, [R8]
7B0AA:  MOV             R1, #0x148E8F
7B0B2:  UXTH.W          R4, R10
7B0B6:  ADD             R0, R1
7B0B8:  MOV             R1, R4
7B0BA:  ADD.W           R2, R0, #0x2C ; ','
7B0BE:  MOV             R0, R5
7B0C0:  BLX             R2
7B0C2:  CMP             R0, #0
7B0C4:  BNE             loc_7B07C
7B0C6:  MOVS            R0, #0x18; unsigned int
7B0C8:  BLX             j__Znwj; operator new(uint)
7B0CC:  MOV             R6, R0
7B0CE:  LDRD.W          R1, R0, [R11,#0xC]
7B0D2:  MOV             R2, R6
7B0D4:  MOVS            R3, #0
7B0D6:  VST1.64         {D8-D9}, [R2]!
7B0DA:  CMP             R1, R0
7B0DC:  STR             R3, [R6,#0x14]
7B0DE:  STR             R3, [R2]
7B0E0:  BCS             loc_7B0EC
7B0E2:  STR.W           R6, [R1],#4
7B0E6:  STR.W           R1, [R11,#0xC]
7B0EA:  B               loc_7B172
7B0EC:  LDR             R2, [SP,#0x68+var_4C]
7B0EE:  LDR             R2, [R2]
7B0F0:  SUBS            R5, R1, R2
7B0F2:  MOVS            R1, #1
7B0F4:  ADD.W           R11, R1, R5,ASR#2
7B0F8:  CMP.W           R11, #0x40000000
7B0FC:  BCS             loc_7B1BA
7B0FE:  SUBS            R0, R0, R2
7B100:  MOV             R1, #0x7FFFFFFC
7B108:  CMP.W           R11, R0,ASR#1
7B10C:  IT LS
7B10E:  MOVLS.W         R11, R0,ASR#1
7B112:  CMP             R0, R1
7B114:  IT CS
7B116:  MOVCS           R11, #0x3FFFFFFF
7B11A:  CMP.W           R11, #0
7B11E:  BEQ             loc_7B134
7B120:  CMP.W           R11, #0x40000000
7B124:  BCS             loc_7B1C0
7B126:  MOV.W           R0, R11,LSL#2; unsigned int
7B12A:  MOV             R8, R2
7B12C:  BLX             j__Znwj; operator new(uint)
7B130:  MOV             R2, R8
7B132:  B               loc_7B136
7B134:  MOVS            R0, #0; dest
7B136:  ASRS            R1, R5, #2
7B138:  CMP             R5, #1
7B13A:  ADD.W           R8, R0, R1,LSL#2
7B13E:  STR.W           R6, [R8],#4
7B142:  BLT             loc_7B154
7B144:  MOV             R1, R2; src
7B146:  MOV             R6, R2
7B148:  MOV             R2, R5; n
7B14A:  STR             R0, [SP,#0x68+var_64]
7B14C:  BLX             j_memcpy
7B150:  LDR             R0, [SP,#0x68+var_64]
7B152:  MOV             R2, R6
7B154:  ADD.W           R1, R0, R11,LSL#2
7B158:  LDR.W           R11, [SP,#0x68+var_54]
7B15C:  CMP             R2, #0
7B15E:  STRD.W          R0, R8, [R11,#8]
7B162:  STR.W           R1, [R11,#0x10]
7B166:  LDRD.W          R8, R5, [SP,#0x68+var_60]
7B16A:  ITT NE
7B16C:  MOVNE           R0, R2; void *
7B16E:  BLXNE           j__ZdlPv; operator delete(void *)
7B172:  LDR             R0, [SP,#0x68+var_4C]
7B174:  LDR             R1, [SP,#0x68+var_48]
7B176:  LDR             R0, [R0]
7B178:  LDR.W           R0, [R0,R1,LSL#2]
7B17C:  LDR             R1, [SP,#0x68+var_50]
7B17E:  LDRH            R1, [R1,#4]
7B180:  STR.W           R10, [R0]
7B184:  CMP             R1, R4
7B186:  LDR             R1, [SP,#0x68+var_58]
7B188:  BEQ.W           loc_7B00C
7B18C:  LDR.W           R1, [R9,#4]
7B190:  CMP             R1, #0
7B192:  IT NE
7B194:  ADDNE           R1, #4
7B196:  B               loc_7B00C
7B198:  LDR             R0, [SP,#0x68+var_34]
7B19A:  LDR             R1, =(__stack_chk_guard_ptr - 0x7B1A0)
7B19C:  ADD             R1, PC; __stack_chk_guard_ptr
7B19E:  LDR             R1, [R1]; __stack_chk_guard
7B1A0:  LDR             R1, [R1]
7B1A2:  CMP             R1, R0
7B1A4:  ITTTT EQ
7B1A6:  ADDEQ           SP, SP, #0x38 ; '8'
7B1A8:  VPOPEQ          {D8-D9}
7B1AC:  ADDEQ           SP, SP, #4
7B1AE:  POPEQ.W         {R8-R11}
7B1B2:  IT EQ
7B1B4:  POPEQ           {R4-R7,PC}
7B1B6:  BLX             __stack_chk_fail
7B1BA:  LDR             R0, [SP,#0x68+var_4C]
7B1BC:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7B1C0:  LDR             R0, =(aAllocatorTAllo - 0x7B1C6); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7B1C2:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7B1C4:  BL              sub_7B270
7B1C8:  DCD off_114AB0 - 0x7AE08
7B1CC:  MOV             R0, R10
7B1CE:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
