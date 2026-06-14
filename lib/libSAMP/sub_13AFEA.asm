; =========================================================
; Game Engine Function: sub_13AFEA
; Address            : 0x13AFEA - 0x13B010
; =========================================================

13AFEA:  PUSH            {R4,R6,R7,LR}
13AFEC:  ADD             R7, SP, #8
13AFEE:  LDRB            R0, [R0,#4]
13AFF0:  MOV             R4, R1
13AFF2:  CBZ             R0, loc_13B002
13AFF4:  LDRB            R0, [R4,#0x10]
13AFF6:  LSLS            R0, R0, #0x1F
13AFF8:  ITT NE
13AFFA:  LDRNE           R0, [R4,#0x18]; void *
13AFFC:  BLXNE           j__ZdlPv; operator delete(void *)
13B000:  B               loc_13B004
13B002:  CBZ             R4, locret_13B00E
13B004:  MOV             R0, R4; void *
13B006:  POP.W           {R4,R6,R7,LR}
13B00A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
13B00E:  POP             {R4,R6,R7,PC}
