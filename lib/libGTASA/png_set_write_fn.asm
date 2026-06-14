; =========================================================
; Game Engine Function: png_set_write_fn
; Address            : 0x203940 - 0x20398E
; =========================================================

203940:  CMP             R0, #0
203942:  IT EQ
203944:  BXEQ            LR
203946:  PUSH            {R7,LR}
203948:  MOV             R7, SP
20394A:  LDR.W           LR, =(png_default_write_data_ptr - 0x203958)
20394E:  CMP             R2, #0
203950:  LDR.W           R12, =(png_default_flush_ptr - 0x203962)
203954:  ADD             LR, PC; png_default_write_data_ptr
203956:  STR.W           R1, [R0,#0x120]
20395A:  LDR.W           R1, [R0,#0x11C]
20395E:  ADD             R12, PC; png_default_flush_ptr
203960:  IT EQ
203962:  LDREQ.W         R2, [LR]; png_default_write_data
203966:  CMP             R3, #0
203968:  STR.W           R2, [R0,#0x118]
20396C:  IT EQ
20396E:  LDREQ.W         R3, [R12]; png_default_flush
203972:  CMP             R1, #0
203974:  STR.W           R3, [R0,#0x234]
203978:  POP.W           {R7,LR}
20397C:  BEQ             locret_20398C
20397E:  LDR             R1, =(aCanTSetBothRea - 0x20398A); "Can't set both read_data_fn and write_d"...
203980:  MOVS            R2, #0
203982:  STR.W           R2, [R0,#0x11C]
203986:  ADD             R1, PC; "Can't set both read_data_fn and write_d"...
203988:  B.W             j_j_png_warning
20398C:  BX              LR
