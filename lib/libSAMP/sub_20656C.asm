; =========================================================
; Game Engine Function: sub_20656C
; Address            : 0x20656C - 0x206588
; =========================================================

20656C:  PUSH            {R4,R6,R7,LR}
20656E:  ADD             R7, SP, #8
206570:  LDR             R0, =(dword_383C48 - 0x206576)
206572:  ADD             R0, PC; dword_383C48 ; this
206574:  ADD.W           R4, R0, #0x14
206578:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
20657C:  MOV             R1, R0
20657E:  MOV             R0, R4
206580:  POP.W           {R4,R6,R7,LR}
206584:  B.W             sub_224808
