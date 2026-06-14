; =========================================================
; Game Engine Function: _ZN4llmo3mem4prot3setEPvji
; Address            : 0x1E2DA6 - 0x1E2DF6
; =========================================================

1E2DA6:  PUSH            {R4-R7,LR}
1E2DA8:  ADD             R7, SP, #0xC
1E2DAA:  PUSH.W          {R8}
1E2DAE:  MOV             R5, R0
1E2DB0:  ADDS            R4, R0, R1
1E2DB2:  MOVS            R0, #0x27 ; '''; name
1E2DB4:  MOV             R8, R2
1E2DB6:  BLX             sysconf
1E2DBA:  NEGS            R0, R0
1E2DBC:  ANDS            R4, R0
1E2DBE:  ANDS            R5, R0
1E2DC0:  CMP             R5, R4
1E2DC2:  BLS             loc_1E2DC8
1E2DC4:  MOVS            R6, #1
1E2DC6:  B               loc_1E2DEE
1E2DC8:  MOVS            R0, #0x27 ; '''; name
1E2DCA:  BLX             sysconf
1E2DCE:  MOV             R1, R0; len
1E2DD0:  MOV             R0, R5; addr
1E2DD2:  MOV             R2, R8; prot
1E2DD4:  BLX             mprotect
1E2DD8:  CLZ.W           R1, R0
1E2DDC:  MOV.W           R6, R1,LSR#5
1E2DE0:  CBNZ            R0, loc_1E2DEE
1E2DE2:  MOVS            R0, #0x27 ; '''; name
1E2DE4:  BLX             sysconf
1E2DE8:  ADD             R5, R0
1E2DEA:  CMP             R5, R4
1E2DEC:  BLS             loc_1E2DC8
1E2DEE:  MOV             R0, R6
1E2DF0:  POP.W           {R8}
1E2DF4:  POP             {R4-R7,PC}
