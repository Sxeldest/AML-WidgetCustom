; =========================================================
; Game Engine Function: sub_1E3444
; Address            : 0x1E3444 - 0x1E345E
; =========================================================

1E3444:  LDR             R0, =(_ZN12posix_detail8memCacheE_ptr - 0x1E344C)
1E3446:  MOVS            R3, #0
1E3448:  ADD             R0, PC; _ZN12posix_detail8memCacheE_ptr
1E344A:  LDR             R1, [R0]; posix_detail::memCache ...
1E344C:  LDR             R0, =(byte_1E2559 - 0x1E3454)
1E344E:  LDR             R2, =(off_22A540 - 0x1E345A)
1E3450:  ADD             R0, PC; byte_1E2559
1E3452:  STRD.W          R3, R3, [R1]; posix_detail::memCache
1E3456:  ADD             R2, PC; off_22A540
1E3458:  STR             R3, [R1,#(dword_382D44 - 0x382D3C)]
1E345A:  B.W             sub_224250
