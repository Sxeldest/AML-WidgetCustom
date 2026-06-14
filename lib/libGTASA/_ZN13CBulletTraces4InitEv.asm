; =========================================================
; Game Engine Function: _ZN13CBulletTraces4InitEv
; Address            : 0x5BFA88 - 0x5BFAD0
; =========================================================

5BFA88:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5BFA90)
5BFA8A:  MOVS            R1, #0
5BFA8C:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5BFA8E:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5BFA90:  STRB.W          R1, [R0,#(byte_A56384 - 0xA56340)]
5BFA94:  STRB            R1, [R0,#(byte_A56358 - 0xA56340)]
5BFA96:  STRB.W          R1, [R0,#(byte_A563B0 - 0xA56340)]
5BFA9A:  STRB.W          R1, [R0,#(byte_A563DC - 0xA56340)]
5BFA9E:  STRB.W          R1, [R0,#(byte_A56408 - 0xA56340)]
5BFAA2:  STRB.W          R1, [R0,#(byte_A56434 - 0xA56340)]
5BFAA6:  STRB.W          R1, [R0,#(byte_A56460 - 0xA56340)]
5BFAAA:  STRB.W          R1, [R0,#(byte_A5648C - 0xA56340)]
5BFAAE:  STRB.W          R1, [R0,#(byte_A564B8 - 0xA56340)]
5BFAB2:  STRB.W          R1, [R0,#(byte_A564E4 - 0xA56340)]
5BFAB6:  STRB.W          R1, [R0,#(byte_A56510 - 0xA56340)]
5BFABA:  STRB.W          R1, [R0,#(byte_A5653C - 0xA56340)]
5BFABE:  STRB.W          R1, [R0,#(byte_A56568 - 0xA56340)]
5BFAC2:  STRB.W          R1, [R0,#(byte_A56594 - 0xA56340)]
5BFAC6:  STRB.W          R1, [R0,#(byte_A565C0 - 0xA56340)]
5BFACA:  STRB.W          R1, [R0,#(byte_A565EC - 0xA56340)]
5BFACE:  BX              LR
