; =========================================================
; Game Engine Function: _Z21BufferInitDestinationP20jpeg_compress_struct
; Address            : 0x481C5C - 0x481C6E
; =========================================================

481C5C:  LDR             R1, [R0,#0x18]
481C5E:  LDR             R2, =(unk_9BA2B0 - 0x481C64)
481C60:  ADD             R2, PC; unk_9BA2B0
481C62:  STR             R2, [R1]
481C64:  LDR             R0, [R0,#0x18]
481C66:  MOV.W           R1, #0x32000
481C6A:  STR             R1, [R0,#4]
481C6C:  BX              LR
