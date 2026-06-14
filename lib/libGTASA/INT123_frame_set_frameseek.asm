; =========================================================
; Game Engine Function: INT123_frame_set_frameseek
; Address            : 0x226768 - 0x2267A6
; =========================================================

226768:  MOVW            R3, #0xB460
22676C:  MOVW            R2, #0x92D8
226770:  LDR             R3, [R0,R3]
226772:  LDR.W           R12, [R0,R2]
226776:  MOVW            R2, #0xB2D0
22677A:  STR             R1, [R0,R2]
22677C:  CMP.W           R12, #3
226780:  MOV             R2, R3
226782:  IT EQ
226784:  MOVEQ           R2, #1
226786:  CMP             R3, #1
226788:  IT GE
22678A:  MOVGE           R2, R3
22678C:  CMP             R2, #2
22678E:  MOV             R3, R2
226790:  IT GT
226792:  MOVGT           R3, #2
226794:  CMP.W           R12, #3
226798:  IT EQ
22679A:  MOVEQ           R3, R2
22679C:  MOVW            R2, #0xB2D8
2267A0:  SUBS            R1, R1, R3
2267A2:  STR             R1, [R0,R2]
2267A4:  BX              LR
