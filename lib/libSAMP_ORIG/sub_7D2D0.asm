; =========================================================
; Game Engine Function: sub_7D2D0
; Address            : 0x7D2D0 - 0x7D306
; =========================================================

7D2D0:  PUSH            {R4,R6,R7,LR}
7D2D2:  ADD             R7, SP, #8
7D2D4:  LDR             R1, =(_ZTV7CButton - 0x7D2DE); `vtable for'CButton ...
7D2D6:  MOV             R4, R0
7D2D8:  LDR             R0, [R0,#0x68]
7D2DA:  ADD             R1, PC; `vtable for'CButton
7D2DC:  ADDS            R1, #8
7D2DE:  STR             R1, [R4]
7D2E0:  ADD.W           R1, R4, #0x58 ; 'X'
7D2E4:  CMP             R1, R0
7D2E6:  BEQ             loc_7D2EE
7D2E8:  CBZ             R0, loc_7D2F8
7D2EA:  MOVS            R1, #5
7D2EC:  B               loc_7D2F0
7D2EE:  MOVS            R1, #4
7D2F0:  LDR             R2, [R0]
7D2F2:  LDR.W           R1, [R2,R1,LSL#2]
7D2F6:  BLX             R1
7D2F8:  MOV             R0, R4
7D2FA:  BL              sub_7C3B4
7D2FE:  POP.W           {R4,R6,R7,LR}
7D302:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
