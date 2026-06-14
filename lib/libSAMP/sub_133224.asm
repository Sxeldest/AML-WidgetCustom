; =========================================================
; Game Engine Function: sub_133224
; Address            : 0x133224 - 0x13325C
; =========================================================

133224:  PUSH            {R4,R6,R7,LR}
133226:  ADD             R7, SP, #8
133228:  MOV             R4, R0
13322A:  LDR             R0, =(off_234C0C - 0x133230)
13322C:  ADD             R0, PC; off_234C0C
13322E:  LDR             R1, [R0]; `vtable for'Button ...
133230:  LDR             R0, [R4,#0x68]
133232:  ADDS            R1, #8
133234:  STR             R1, [R4]
133236:  ADD.W           R1, R4, #0x58 ; 'X'
13323A:  CMP             R1, R0
13323C:  BEQ             loc_133244
13323E:  CBZ             R0, loc_13324E
133240:  MOVS            R1, #5
133242:  B               loc_133246
133244:  MOVS            R1, #4
133246:  LDR             R2, [R0]
133248:  LDR.W           R1, [R2,R1,LSL#2]
13324C:  BLX             R1
13324E:  MOV             R0, R4
133250:  BL              sub_12BCE4
133254:  POP.W           {R4,R6,R7,LR}
133258:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
