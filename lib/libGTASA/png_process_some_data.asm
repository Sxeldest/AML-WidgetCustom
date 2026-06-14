; =========================================================
; Game Engine Function: png_process_some_data
; Address            : 0x1F42A0 - 0x1F42C6
; =========================================================

1F42A0:  CMP             R0, #0
1F42A2:  IT EQ
1F42A4:  BXEQ            LR
1F42A6:  LDR.W           R2, [R0,#0x2B8]
1F42AA:  CMP             R2, #2
1F42AC:  IT EQ
1F42AE:  BEQ.W           png_push_read_IDAT
1F42B2:  CMP             R2, #1
1F42B4:  IT EQ
1F42B6:  BEQ             png_push_read_chunk
1F42B8:  CMP             R2, #0
1F42BA:  IT EQ
1F42BC:  BEQ             png_push_read_sig
1F42BE:  MOVS            R1, #0
1F42C0:  STR.W           R1, [R0,#0x2B0]
1F42C4:  BX              LR
