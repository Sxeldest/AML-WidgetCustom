; =========================================================
; Game Engine Function: _Z17HDTermDestinationP20jpeg_compress_struct
; Address            : 0x48217C - 0x48219A
; =========================================================

48217C:  LDR             R0, [R0,#0x18]
48217E:  LDR             R1, =(unk_9BA2B0 - 0x482186)
482180:  LDR             R0, [R0]
482182:  ADD             R1, PC; unk_9BA2B0
482184:  SUBS            R2, R0, R1; char *
482186:  CMP             R2, #1
482188:  IT LT
48218A:  BXLT            LR
48218C:  LDR             R0, =(dword_9EC2B4 - 0x482194)
48218E:  LDR             R1, =(unk_9BA2B0 - 0x482196)
482190:  ADD             R0, PC; dword_9EC2B4
482192:  ADD             R1, PC; unk_9BA2B0 ; unsigned int
482194:  LDR             R0, [R0]; this
482196:  B.W             sub_18FEC4
