; =========================================================
; Game Engine Function: sub_13ADD4
; Address            : 0x13ADD4 - 0x13AE0C
; =========================================================

13ADD4:  PUSH            {R4,R6,R7,LR}
13ADD6:  ADD             R7, SP, #8
13ADD8:  MOV             R4, R0
13ADDA:  LDR             R0, =(off_234C0C - 0x13ADE0)
13ADDC:  ADD             R0, PC; off_234C0C
13ADDE:  LDR             R1, [R0]; `vtable for'Button ...
13ADE0:  LDR             R0, [R4,#0x68]
13ADE2:  ADDS            R1, #8
13ADE4:  STR             R1, [R4]
13ADE6:  ADD.W           R1, R4, #0x58 ; 'X'
13ADEA:  CMP             R1, R0
13ADEC:  BEQ             loc_13ADF4
13ADEE:  CBZ             R0, loc_13ADFE
13ADF0:  MOVS            R1, #5
13ADF2:  B               loc_13ADF6
13ADF4:  MOVS            R1, #4
13ADF6:  LDR             R2, [R0]
13ADF8:  LDR.W           R1, [R2,R1,LSL#2]
13ADFC:  BLX             R1
13ADFE:  MOV             R0, R4
13AE00:  BL              sub_12BCE4
13AE04:  POP.W           {R4,R6,R7,LR}
13AE08:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
