; =========================================================
; Game Engine Function: png_set_progressive_read_fn
; Address            : 0x1F55EC - 0x1F5618
; =========================================================

1F55EC:  CMP             R0, #0
1F55EE:  IT EQ
1F55F0:  BXEQ            LR
1F55F2:  PUSH            {R7,LR}
1F55F4:  MOV             R7, SP
1F55F6:  LDR.W           LR, =(png_push_fill_buffer_ptr - 0x1F5602)
1F55FA:  LDR.W           R12, [R7,#8+arg_0]
1F55FE:  ADD             LR, PC; png_push_fill_buffer_ptr
1F5600:  STR.W           R2, [R0,#0x284]
1F5604:  STR.W           R3, [R0,#0x288]
1F5608:  STR.W           R12, [R0,#0x28C]
1F560C:  LDR.W           R2, [LR]; png_push_fill_buffer
1F5610:  POP.W           {R7,LR}
1F5614:  B.W             j_j_png_set_read_fn
