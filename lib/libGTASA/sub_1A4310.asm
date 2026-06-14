; =========================================================
; Game Engine Function: sub_1A4310
; Address            : 0x1A4310 - 0x1A433A
; =========================================================

1A4310:  LDR             R0, =(AESoundManager_ptr - 0x1A431C)
1A4312:  MOVW            R1, #0x87F0
1A4316:  MOVS            R2, #0
1A4318:  ADD             R0, PC; AESoundManager_ptr
1A431A:  LDR             R0, [R0]; AESoundManager
1A431C:  ADDS            R0, #0xC
1A431E:  STR.W           R2, [R0],#0x74
1A4322:  SUBS            R1, #0x74 ; 't'
1A4324:  BNE             loc_1A431E
1A4326:  LDR             R0, =(_ZN15CAESoundManagerD2Ev_ptr - 0x1A432E)
1A4328:  LDR             R1, =(AESoundManager_ptr - 0x1A4332)
1A432A:  ADD             R0, PC; _ZN15CAESoundManagerD2Ev_ptr
1A432C:  LDR             R2, =(unk_67A000 - 0x1A4336)
1A432E:  ADD             R1, PC; AESoundManager_ptr
1A4330:  LDR             R0, [R0]; CAESoundManager::~CAESoundManager() ; lpfunc
1A4332:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A4334:  LDR             R1, [R1]; AESoundManager ; obj
1A4336:  B.W             j___cxa_atexit
