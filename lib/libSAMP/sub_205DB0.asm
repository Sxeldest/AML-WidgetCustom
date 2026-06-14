; =========================================================
; Game Engine Function: sub_205DB0
; Address            : 0x205DB0 - 0x205DE2
; =========================================================

205DB0:  PUSH            {R4-R7,LR}
205DB2:  ADD             R7, SP, #0xC
205DB4:  PUSH.W          {R11}
205DB8:  MOV             R5, R0
205DBA:  LDR             R0, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0x205DC2)
205DBC:  MOV             R4, R1
205DBE:  ADD             R0, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
205DC0:  LDR             R0, [R0]; this
205DC2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205DC6:  MOV             R6, R0
205DC8:  MOV             R0, R4
205DCA:  MOV             R1, R6
205DCC:  BL              sub_20652C
205DD0:  MOV             R1, R0; this
205DD2:  MOV             R0, R5; int
205DD4:  MOV             R2, R6
205DD6:  POP.W           {R11}
205DDA:  POP.W           {R4-R7,LR}
205DDE:  B.W             sub_206408
