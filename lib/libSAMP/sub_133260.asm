; =========================================================
; Game Engine Function: sub_133260
; Address            : 0x133260 - 0x133298
; =========================================================

133260:  PUSH            {R4,R6,R7,LR}
133262:  ADD             R7, SP, #8
133264:  MOV             R4, R0
133266:  LDR             R0, =(off_234C0C - 0x13326C)
133268:  ADD             R0, PC; off_234C0C
13326A:  LDR             R1, [R0]; `vtable for'Button ...
13326C:  LDR             R0, [R4,#0x68]
13326E:  ADDS            R1, #8
133270:  STR             R1, [R4]
133272:  ADD.W           R1, R4, #0x58 ; 'X'
133276:  CMP             R1, R0
133278:  BEQ             loc_133280
13327A:  CBZ             R0, loc_13328A
13327C:  MOVS            R1, #5
13327E:  B               loc_133282
133280:  MOVS            R1, #4
133282:  LDR             R2, [R0]
133284:  LDR.W           R1, [R2,R1,LSL#2]
133288:  BLX             R1
13328A:  MOV             R0, R4
13328C:  BL              sub_12BCE4
133290:  POP.W           {R4,R6,R7,LR}
133294:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
