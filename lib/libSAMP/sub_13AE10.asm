; =========================================================
; Game Engine Function: sub_13AE10
; Address            : 0x13AE10 - 0x13AE48
; =========================================================

13AE10:  PUSH            {R4,R6,R7,LR}
13AE12:  ADD             R7, SP, #8
13AE14:  MOV             R4, R0
13AE16:  LDR             R0, =(off_234C0C - 0x13AE1C)
13AE18:  ADD             R0, PC; off_234C0C
13AE1A:  LDR             R1, [R0]; `vtable for'Button ...
13AE1C:  LDR             R0, [R4,#0x68]
13AE1E:  ADDS            R1, #8
13AE20:  STR             R1, [R4]
13AE22:  ADD.W           R1, R4, #0x58 ; 'X'
13AE26:  CMP             R1, R0
13AE28:  BEQ             loc_13AE30
13AE2A:  CBZ             R0, loc_13AE3A
13AE2C:  MOVS            R1, #5
13AE2E:  B               loc_13AE32
13AE30:  MOVS            R1, #4
13AE32:  LDR             R2, [R0]
13AE34:  LDR.W           R1, [R2,R1,LSL#2]
13AE38:  BLX             R1
13AE3A:  MOV             R0, R4
13AE3C:  BL              sub_12BCE4
13AE40:  POP.W           {R4,R6,R7,LR}
13AE44:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
