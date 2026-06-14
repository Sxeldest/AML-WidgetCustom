; =========================================================
; Game Engine Function: sub_E90DC
; Address            : 0xE90DC - 0xE91C8
; =========================================================

E90DC:  PUSH            {R4-R7,LR}
E90DE:  ADD             R7, SP, #0xC
E90E0:  PUSH.W          {R8}
E90E4:  SUB             SP, SP, #0x28
E90E6:  MOV             R4, R0
E90E8:  MOV             R5, R0
E90EA:  MOV             R8, R1
E90EC:  LDR.W           R0, [R5,#4]!
E90F0:  LDR             R1, [R4,#8]
E90F2:  ADD.W           R3, R4, #0x50 ; 'P'
E90F6:  MOVS            R2, #2
E90F8:  MOVS            R6, #2
E90FA:  SUBS            R0, R1, R0
E90FC:  ASRS            R1, R0, #2
E90FE:  ADD.W           R0, R4, #0x30 ; '0'
E9102:  BL              sub_E9460
E9106:  STRB.W          R0, [R7,#var_11]
E910A:  ADD.W           R0, R4, #0x10
E910E:  SUB.W           R1, R7, #-var_11
E9112:  BL              sub_E8994
E9116:  STRB.W          R6, [SP,#0x38+var_28]
E911A:  ADD             R6, SP, #0x38+var_1C
E911C:  ADD             R2, SP, #0x38+var_28
E911E:  MOV             R1, R4
E9120:  MOV             R0, R6
E9122:  MOVS            R3, #1
E9124:  BL              sub_E9484
E9128:  LDRD.W          R0, R1, [R4,#8]
E912C:  CMP             R0, R1
E912E:  BEQ             loc_E913A
E9130:  LDR             R1, [SP,#0x38+var_18]
E9132:  STR.W           R1, [R0],#4
E9136:  STR             R0, [R4,#8]
E9138:  B               loc_E9144
E913A:  ADDS            R1, R6, #4
E913C:  MOV             R0, R5
E913E:  BL              sub_E9658
E9142:  LDR             R0, [R4,#8]
E9144:  ADDS.W          R1, R8, #1
E9148:  ITT NE
E914A:  LDRNE.W         R0, [R0,#-4]
E914E:  CMPNE           R0, #0
E9150:  BEQ             loc_E916A
E9152:  LDRSB.W         R0, [R0]
E9156:  CMP             R0, #2
E9158:  BHI             loc_E9164
E915A:  LDR             R1, =(unk_92190 - 0xE9160)
E915C:  ADD             R1, PC; unk_92190
E915E:  LDR.W           R0, [R1,R0,LSL#2]
E9162:  B               loc_E9166
E9164:  MOVS            R0, #1
E9166:  CMP             R0, R8
E9168:  BCC             loc_E9174
E916A:  MOVS            R0, #1
E916C:  ADD             SP, SP, #0x28 ; '('
E916E:  POP.W           {R8}
E9172:  POP             {R4-R7,PC}
E9174:  MOVS            R0, #0x10; thrown_size
E9176:  BLX             j___cxa_allocate_exception
E917A:  MOV             R5, R0
E917C:  ADD             R0, SP, #0x38+var_34; this
E917E:  MOV             R1, R8; std::__itoa *
E9180:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
E9184:  LDR             R2, =(aExcessiveArray - 0xE918A); "excessive array size: " ...
E9186:  ADD             R2, PC; "excessive array size: "
E9188:  ADD             R0, SP, #0x38+var_34; int
E918A:  MOVS            R1, #0; int
E918C:  MOVS            R6, #0
E918E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E9192:  VLDR            D16, [R0]
E9196:  LDR             R1, [R0,#8]
E9198:  STR             R1, [SP,#0x38+var_20]
E919A:  VSTR            D16, [SP,#0x38+var_28]
E919E:  STRD.W          R6, R6, [R0]
E91A2:  STR             R6, [R0,#8]
E91A4:  LDR             R0, [R4,#8]
E91A6:  MOVS            R4, #1
E91A8:  LDR.W           R3, [R0,#-4]
E91AC:  ADD             R2, SP, #0x38+var_28
E91AE:  MOV             R0, R5
E91B0:  MOV.W           R1, #0x198
E91B4:  BL              sub_E92EC
E91B8:  LDR             R1, =(_ZTIN8nlohmann6detail12out_of_rangeE - 0xE91C2); `typeinfo for'nlohmann::detail::out_of_range ...
E91BA:  MOVS            R4, #0
E91BC:  LDR             R2, =(sub_E9438+1 - 0xE91C4)
E91BE:  ADD             R1, PC; lptinfo
E91C0:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E91C2:  MOV             R0, R5; void *
E91C4:  BLX             j___cxa_throw
