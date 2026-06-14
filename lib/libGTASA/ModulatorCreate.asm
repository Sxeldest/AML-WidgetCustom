; =========================================================
; Game Engine Function: ModulatorCreate
; Address            : 0x23ECF4 - 0x23ED2E
; =========================================================

23ECF4:  PUSH            {R4,R6,R7,LR}
23ECF6:  ADD             R7, SP, #8
23ECF8:  MOVS            R0, #0x48 ; 'H'; byte_count
23ECFA:  BLX             malloc
23ECFE:  MOVS            R1, #0
23ED00:  CBZ             R0, loc_23ED2A
23ED02:  LDR.W           R12, =(sub_2512F2+1 - 0x23ED12)
23ED06:  MOVS            R4, #1
23ED08:  LDR.W           LR, =(sub_2513E4+1 - 0x23ED16)
23ED0C:  LDR             R3, =(j_j_free_1+1 - 0x23ED1C)
23ED0E:  ADD             R12, PC; sub_2512F2
23ED10:  LDR             R2, =(sub_2512F8+1 - 0x23ED24)
23ED12:  ADD             LR, PC; sub_2513E4
23ED14:  STRD.W          R1, R4, [R0,#0x14]
23ED18:  ADD             R3, PC; j_j_free_1
23ED1A:  STRD.W          R1, R1, [R0,#0x40]
23ED1E:  MOV             R1, R0
23ED20:  ADD             R2, PC; sub_2512F8
23ED22:  STRD.W          R3, R12, [R0]
23ED26:  STRD.W          R2, LR, [R0,#8]
23ED2A:  MOV             R0, R1
23ED2C:  POP             {R4,R6,R7,PC}
