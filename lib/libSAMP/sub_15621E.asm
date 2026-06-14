; =========================================================
; Game Engine Function: sub_15621E
; Address            : 0x15621E - 0x15626C
; =========================================================

15621E:  PUSH            {R4-R7,LR}
156220:  ADD             R7, SP, #0xC
156222:  PUSH.W          {R8}
156226:  MOV             R8, R0
156228:  LDR.W           R4, [R8,#4]!
15622C:  CBZ             R4, loc_156262
15622E:  MOV             R6, R1
156230:  MOV             R5, R8
156232:  LDR             R1, [R6]; s
156234:  ADD.W           R0, R4, #0x10; int
156238:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc; std::string::compare(char const*)
15623C:  CMP             R0, #0
15623E:  MOV             R0, R4
156240:  IT MI
156242:  ADDMI           R0, #4
156244:  LDR             R0, [R0]
156246:  IT PL
156248:  MOVPL           R5, R4
15624A:  CMP             R0, #0
15624C:  MOV             R4, R0
15624E:  BNE             loc_156232
156250:  CMP             R5, R8
156252:  BEQ             loc_156262
156254:  LDR             R1, [R6]; s
156256:  ADD.W           R0, R5, #0x10; int
15625A:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc; std::string::compare(char const*)
15625E:  CMP             R0, #1
156260:  BLT             loc_156264
156262:  MOV             R5, R8
156264:  MOV             R0, R5
156266:  POP.W           {R8}
15626A:  POP             {R4-R7,PC}
