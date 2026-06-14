; =========================================================
; Game Engine Function: gzgets
; Address            : 0x20CCBC - 0x20CD18
; =========================================================

20CCBC:  PUSH            {R4-R7,LR}
20CCBE:  ADD             R7, SP, #0xC
20CCC0:  PUSH.W          {R8-R10}
20CCC4:  MOV             R8, R1
20CCC6:  MOV             R9, R0
20CCC8:  MOV             R6, R2
20CCCA:  MOVS            R0, #0
20CCCC:  CMP.W           R8, #0
20CCD0:  BEQ             loc_20CD12
20CCD2:  CMP             R6, #1
20CCD4:  BLT             loc_20CD12
20CCD6:  MOV             R5, R8
20CCD8:  MOV.W           R10, #0
20CCDC:  MOVS            R4, #1
20CCDE:  CMP             R6, #2
20CCE0:  BLT             loc_20CCFE
20CCE2:  MOV             R0, R9; int
20CCE4:  MOV             R1, R5; ptr
20CCE6:  MOVS            R2, #1; size_t
20CCE8:  BLX             j_gzread
20CCEC:  CMP             R0, #1
20CCEE:  BNE             loc_20CD00
20CCF0:  LDRB.W          R0, [R5],#1
20CCF4:  SUBS            R6, #1
20CCF6:  CMP             R0, #0xA
20CCF8:  BNE             loc_20CCDE
20CCFA:  MOVS            R4, #1
20CCFC:  B               loc_20CD00
20CCFE:  MOVS            R4, #0
20CD00:  CMP             R5, R8
20CD02:  MOV             R0, R8
20CD04:  STRB.W          R10, [R5]
20CD08:  IT EQ
20CD0A:  MOVEQ           R0, #0
20CD0C:  CMP             R4, #0
20CD0E:  IT EQ
20CD10:  MOVEQ           R0, R8
20CD12:  POP.W           {R8-R10}
20CD16:  POP             {R4-R7,PC}
