; =========================================================
; Game Engine Function: sub_10C4DC
; Address            : 0x10C4DC - 0x10C4E8
; =========================================================

10C4DC:  MOV             R12, #(j__ZNSt6__ndk15mutex6unlockEv - 0x10C4E8); std::mutex::unlock(void)
10C4E4:  ADD             R12, PC; std::mutex::unlock(void)
10C4E6:  BX              R12; std::mutex::unlock(void)
