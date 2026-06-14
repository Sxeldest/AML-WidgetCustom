; =========================================================
; Game Engine Function: _Z16jpeg_set_qualityP20jpeg_compress_structih
; Address            : 0x47A2E0 - 0x47A314
; =========================================================

47A2E0:  PUSH            {R4,R5,R7,LR}
47A2E2:  ADD             R7, SP, #8
47A2E4:  CMP             R1, #1
47A2E6:  MOV             R4, R2
47A2E8:  IT LE
47A2EA:  MOVLE           R1, #1
47A2EC:  MOV             R5, R0
47A2EE:  CMP             R1, #0x64 ; 'd'
47A2F0:  IT GE
47A2F2:  MOVGE           R1, #0x64 ; 'd'
47A2F4:  CMP             R1, #0x31 ; '1'
47A2F6:  BGT             loc_47A304
47A2F8:  MOVW            R0, #0x1388
47A2FC:  BLX             __aeabi_uidiv
47A300:  MOV             R1, R0
47A302:  B               loc_47A30A
47A304:  MOVS            R0, #0xC8
47A306:  SUB.W           R1, R0, R1,LSL#1
47A30A:  MOV             R0, R5
47A30C:  MOV             R2, R4
47A30E:  POP.W           {R4,R5,R7,LR}
47A312:  B               _Z23jpeg_set_linear_qualityP20jpeg_compress_structih; jpeg_set_linear_quality(jpeg_compress_struct *,int,uchar)
