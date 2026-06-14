; =========================================================
; Game Engine Function: sub_81FF0
; Address            : 0x81FF0 - 0x81FFE
; =========================================================

81FF0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIPFvvENS_9allocatorIS3_EES2_EE - 0x81FF8); `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)> ...
81FF2:  LDR             R0, [R0,#4]
81FF4:  ADD             R2, PC; `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>
81FF6:  ADDS            R2, #8
81FF8:  STRD.W          R2, R0, [R1]
81FFC:  BX              LR
