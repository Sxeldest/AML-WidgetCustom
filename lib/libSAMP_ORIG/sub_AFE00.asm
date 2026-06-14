; =========================================================
; Game Engine Function: sub_AFE00
; Address            : 0xAFE00 - 0xB0080
; =========================================================

AFE00:  PUSH            {R4-R7,LR}
AFE02:  ADD             R7, SP, #0xC
AFE04:  PUSH.W          {R8-R11}
AFE08:  SUB             SP, SP, #4
AFE0A:  VPUSH           {D8-D9}
AFE0E:  SUB.W           SP, SP, #0x398
AFE12:  MOV             R8, R0
AFE14:  LDR             R0, =(__stack_chk_guard_ptr - 0xAFE1E)
AFE16:  MOV.W           R1, #0x200; n
AFE1A:  ADD             R0, PC; __stack_chk_guard_ptr
AFE1C:  LDR             R0, [R0]; __stack_chk_guard
AFE1E:  LDR             R0, [R0]
AFE20:  STR             R0, [SP,#0x3C8+var_34]
AFE22:  MOVS            R0, #0
AFE24:  STRD.W          R0, R0, [R8]
AFE28:  STR.W           R0, [R8,#8]
AFE2C:  ADD             R0, SP, #0x3C8+s; int
AFE2E:  BLX             sub_10967C
AFE32:  LDR             R0, =(aProcSelfMaps - 0xAFE3A); "/proc/self/maps" ...
AFE34:  LDR             R1, =(a6ar+4 - 0xAFE3C); "r" ...
AFE36:  ADD             R0, PC; "/proc/self/maps"
AFE38:  ADD             R1, PC; "r" ; modes
AFE3A:  BLX             fopen
AFE3E:  CMP             R0, #0
AFE40:  STR.W           R8, [SP,#0x3C8+var_3B4]
AFE44:  BEQ.W           loc_B004A
AFE48:  MOV             R9, R0
AFE4A:  ADD             R0, SP, #0x3C8+s; s
AFE4C:  MOV.W           R1, #0x200; n
AFE50:  MOV             R2, R9; stream
AFE52:  BLX             fgets
AFE56:  CMP             R0, #0
AFE58:  BEQ.W           loc_B002C
AFE5C:  ADD             R1, SP, #0x3C8+var_390
AFE5E:  VMOV.I32        Q4, #0
AFE62:  ADD.W           R0, R1, #0x38 ; '8'
AFE66:  STR             R0, [SP,#0x3C8+var_3A0]
AFE68:  ADD.W           R0, R1, #0x28 ; '('
AFE6C:  STR             R0, [SP,#0x3C8+var_39C]
AFE6E:  ADD.W           R0, R1, #0x34 ; '4'
AFE72:  STR             R0, [SP,#0x3C8+var_3A4]
AFE74:  ADD.W           R0, R1, #0x20 ; ' '
AFE78:  STR             R0, [SP,#0x3C8+var_3A8]
AFE7A:  ADD.W           R0, R1, #8
AFE7E:  STR             R0, [SP,#0x3C8+var_3AC]
AFE80:  LDR             R0, =(aLlxLlxSLlxSLuS - 0xAFE8C); "%llx-%llx %s %llx %s %lu %s" ...
AFE82:  ADD.W           R11, SP, #0x3C8+var_398
AFE86:  ADD             R4, SP, #0x3C8+s
AFE88:  ADD             R0, PC; "%llx-%llx %s %llx %s %lu %s"
AFE8A:  STR             R0, [SP,#0x3C8+format]
AFE8C:  B               loc_AFEC8
AFE8E:  ADD             R1, SP, #0x3C8+var_390
AFE90:  MOV             R0, R8
AFE92:  BL              sub_B07C0
AFE96:  MOV             R11, R4
AFE98:  LDRB.W          R0, [SP,#0x3C8+var_358]
AFE9C:  LSLS            R0, R0, #0x1F
AFE9E:  ITT NE
AFEA0:  LDRNE           R0, [SP,#0x3C8+var_350]; void *
AFEA2:  BLXNE           j__ZdlPv; operator delete(void *)
AFEA6:  LDRB.W          R0, [SP,#0x3C8+var_368]
AFEAA:  ADD             R4, SP, #0x3C8+s
AFEAC:  LSLS            R0, R0, #0x1F
AFEAE:  ITT NE
AFEB0:  LDRNE           R0, [SP,#0x3C8+var_360]; void *
AFEB2:  BLXNE           j__ZdlPv; operator delete(void *)
AFEB6:  MOV             R0, R4; s
AFEB8:  MOV.W           R1, #0x200; n
AFEBC:  MOV             R2, R9; stream
AFEBE:  BLX             fgets
AFEC2:  CMP             R0, #0
AFEC4:  BEQ.W           loc_B002C
AFEC8:  ADD.W           R10, SP, #0x3C8+var_390
AFECC:  ADD             R6, SP, #0x3C8+var_348
AFECE:  MOVS            R1, #0
AFED0:  MOV             R5, R10
AFED2:  STRD.W          R1, R1, [SP,#0x3C8+var_248]
AFED6:  VST1.64         {D8-D9}, [R5]!
AFEDA:  MOV             R0, R5
AFEDC:  STRB.W          R1, [SP,#0x3C8+var_394]
AFEE0:  VST1.64         {D8-D9}, [R0]!
AFEE4:  VST1.64         {D8-D9}, [R0]!
AFEE8:  VST1.64         {D8-D9}, [R0]!
AFEEC:  STR             R1, [R0]
AFEEE:  MOV             R0, R6; int
AFEF0:  STR             R1, [SP,#0x3C8+var_398]
AFEF2:  STR.W           R1, [SP,#0x3C8+var_244+3]
AFEF6:  MOV.W           R1, #0x100; n
AFEFA:  BLX             sub_10967C
AFEFE:  LDR             R0, [SP,#0x3C8+var_3A8]
AFF00:  MOV             R1, R4
AFF02:  STR             R0, [SP,#0x3C8+var_3C4]
AFF04:  MOV             R2, R10
AFF06:  LDR             R0, [SP,#0x3C8+var_3A4]
AFF08:  ADD             R4, SP, #0x3C8+var_248
AFF0A:  STRD.W          R0, R6, [SP,#0x3C8+var_3BC]
AFF0E:  MOV             R0, R1; s
AFF10:  LDR             R1, [SP,#0x3C8+format]; format
AFF12:  LDR             R3, [SP,#0x3C8+var_3AC]
AFF14:  STR.W           R11, [SP,#0x3C8+var_3C8]
AFF18:  STR             R4, [SP,#0x3C8+var_3C0]
AFF1A:  BLX             sscanf
AFF1E:  LDR             R0, [SP,#0x3C8+var_390]
AFF20:  LDR             R1, [SP,#0x3C8+var_388]
AFF22:  SUBS            R0, R1, R0
AFF24:  STR             R0, [R5]
AFF26:  LDR             R0, [SP,#0x3C8+var_39C]; int
AFF28:  MOV             R1, R4; s
AFF2A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
AFF2E:  LDR             R0, [SP,#0x3C8+var_3A0]; int
AFF30:  ADD             R1, SP, #0x3C8+var_348; s
AFF32:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
AFF36:  LDRB.W          R0, [SP,#0x3C8+var_398]
AFF3A:  CMP             R0, #0x72 ; 'r'
AFF3C:  BNE             loc_AFF4C
AFF3E:  LDR             R0, [SP,#0x3C8+var_37C]
AFF40:  MOVS            R1, #1
AFF42:  STRB.W          R1, [SP,#0x3C8+var_378]
AFF46:  ORR.W           R0, R0, #1
AFF4A:  STR             R0, [SP,#0x3C8+var_37C]
AFF4C:  LDRB.W          R0, [SP,#0x3C8+var_398+1]
AFF50:  CMP             R0, #0x77 ; 'w'
AFF52:  BNE             loc_AFF62
AFF54:  LDR             R0, [SP,#0x3C8+var_37C]
AFF56:  MOVS            R1, #1
AFF58:  STRB.W          R1, [SP,#0x3C8+var_377]
AFF5C:  ORR.W           R0, R0, #2
AFF60:  STR             R0, [SP,#0x3C8+var_37C]
AFF62:  LDRB.W          R0, [SP,#0x3C8+var_398+2]
AFF66:  CMP             R0, #0x78 ; 'x'
AFF68:  BNE             loc_AFF78
AFF6A:  LDR             R0, [SP,#0x3C8+var_37C]
AFF6C:  MOVS            R1, #1
AFF6E:  STRB.W          R1, [SP,#0x3C8+var_376]
AFF72:  ORR.W           R0, R0, #4
AFF76:  STR             R0, [SP,#0x3C8+var_37C]
AFF78:  LDRB.W          R0, [SP,#0x3C8+var_398+3]
AFF7C:  LDR             R1, =(aRX - 0xAFF90); "r-x" ...
AFF7E:  SUB.W           R2, R0, #0x73 ; 's'
AFF82:  SUBS            R0, #0x70 ; 'p'
AFF84:  CLZ.W           R2, R2
AFF88:  CLZ.W           R0, R0
AFF8C:  ADD             R1, PC; "r-x"
AFF8E:  LSRS            R2, R2, #5
AFF90:  LSRS            R0, R0, #5
AFF92:  STRB.W          R2, [SP,#0x3C8+var_374]
AFF96:  MOVS            R2, #3; n
AFF98:  STRB.W          R0, [SP,#0x3C8+var_375]
AFF9C:  MOV             R0, R11; s1
AFF9E:  BLX             memcmp
AFFA2:  LDR             R1, =(aRw - 0xAFFB0); "rw-" ...
AFFA4:  CLZ.W           R0, R0
AFFA8:  MOVS            R2, #3; n
AFFAA:  LSRS            R0, R0, #5
AFFAC:  ADD             R1, PC; "rw-"
AFFAE:  STRB.W          R0, [SP,#0x3C8+var_371]
AFFB2:  MOV             R0, R11; s1
AFFB4:  BLX             memcmp
AFFB8:  LDR             R1, =(aR - 0xAFFC8); "r--" ...
AFFBA:  CLZ.W           R0, R0
AFFBE:  MOVS            R2, #3; n
AFFC0:  MOV             R4, R11
AFFC2:  LSRS            R0, R0, #5
AFFC4:  ADD             R1, PC; "r--"
AFFC6:  STRB.W          R0, [SP,#0x3C8+var_372]
AFFCA:  MOV             R0, R11; s1
AFFCC:  BLX             memcmp
AFFD0:  LDRD.W          R11, R1, [R8,#4]
AFFD4:  CLZ.W           R0, R0
AFFD8:  LSRS            R0, R0, #5
AFFDA:  CMP             R11, R1
AFFDC:  STRB.W          R0, [SP,#0x3C8+var_373]
AFFE0:  BEQ.W           loc_AFE8E
AFFE4:  ADD             R0, SP, #0x3C8+var_390
AFFE6:  ADD.W           R8, R11, #0x28 ; '('
AFFEA:  VLD1.64         {D16-D17}, [R0]!
AFFEE:  VLD1.64         {D18-D19}, [R0]!
AFFF2:  VLDR            D20, [R0]
AFFF6:  MOV             R0, R11
AFFF8:  VST1.64         {D16-D17}, [R0]!
AFFFC:  VST1.64         {D18-D19}, [R0]!
B0000:  VSTR            D20, [R0]
B0004:  LDR             R1, [SP,#0x3C8+var_39C]
B0006:  MOV             R0, R8
B0008:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
B000C:  LDR             R0, [SP,#0x3C8+var_35C]
B000E:  STR.W           R0, [R11,#0x34]
B0012:  LDR             R1, [SP,#0x3C8+var_3A0]
B0014:  ADD.W           R0, R11, #0x38 ; '8'
B0018:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
B001C:  LDR.W           R8, [SP,#0x3C8+var_3B4]
B0020:  ADD.W           R0, R11, #0x48 ; 'H'
B0024:  MOV             R11, R4
B0026:  STR.W           R0, [R8,#4]
B002A:  B               loc_AFE98
B002C:  MOV             R0, R9; stream
B002E:  BLX             fclose
B0032:  LDRD.W          R0, R1, [R8]
B0036:  CMP             R0, R1
B0038:  BNE             loc_B005C
B003A:  LDR             R1, =(aKittymemory - 0xB0042); "KittyMemory" ...
B003C:  LDR             R2, =(aGetallmapsErrC - 0xB0044); "getAllMaps err couldn't find any map" ...
B003E:  ADD             R1, PC; "KittyMemory"
B0040:  ADD             R2, PC; "getAllMaps err couldn't find any map"
B0042:  MOVS            R0, #6; prio
B0044:  BLX             __android_log_print
B0048:  B               loc_B005C
B004A:  LDR             R1, =(aKittymemory - 0xB0054); "KittyMemory" ...
B004C:  LDR             R2, =(aCouldnTOpenFil - 0xB0056); "Couldn't open file %s." ...
B004E:  LDR             R3, =(aProcSelfMaps - 0xB0058); "/proc/self/maps" ...
B0050:  ADD             R1, PC; "KittyMemory"
B0052:  ADD             R2, PC; "Couldn't open file %s."
B0054:  ADD             R3, PC; "/proc/self/maps"
B0056:  MOVS            R0, #6; prio
B0058:  BLX             __android_log_print
B005C:  LDR             R0, [SP,#0x3C8+var_34]
B005E:  LDR             R1, =(__stack_chk_guard_ptr - 0xB0064)
B0060:  ADD             R1, PC; __stack_chk_guard_ptr
B0062:  LDR             R1, [R1]; __stack_chk_guard
B0064:  LDR             R1, [R1]
B0066:  CMP             R1, R0
B0068:  ITTTT EQ
B006A:  ADDEQ.W         SP, SP, #0x398
B006E:  VPOPEQ          {D8-D9}
B0072:  ADDEQ           SP, SP, #4
B0074:  POPEQ.W         {R8-R11}
B0078:  IT EQ
B007A:  POPEQ           {R4-R7,PC}
B007C:  BLX             __stack_chk_fail
