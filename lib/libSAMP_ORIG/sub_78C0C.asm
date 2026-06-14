; =========================================================
; Game Engine Function: sub_78C0C
; Address            : 0x78C0C - 0x78C2A
; =========================================================

78C0C:  LDM             R0!, {R1,R3,R6,R7}
78C0E:  SUBS            R7, #0x48 ; 'H'
78C10:  STM             R0!, {R4,R7}
78C12:  MOVS            R1, R1
78C14:  STM             R0!, {R1,R2,R4,R7}
78C16:  MOVS            R1, R1
78C18:  LDR             R2, =(_ZTSZN14selectorLayoutC1EvE3$_2 - 0x78C22); type descriptor name
78C1A:  LDR             R3, [R1,#4]
78C1C:  MOVS            R1, #0
78C1E:  ADD             R2, PC; type descriptor name
78C20:  CMP             R3, R2
78C22:  IT EQ
78C24:  ADDEQ           R1, R0, #4
78C26:  MOV             R0, R1
78C28:  BX              LR
