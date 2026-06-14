; =========================================================
; Game Engine Function: sub_224304
; Address            : 0x224304 - 0x224310
; =========================================================

224304:  MOV             R12, #(j__ZNSt6__ndk15mutex6unlockEv - 0x224310); std::mutex::unlock(void)
22430C:  ADD             R12, PC; std::mutex::unlock(void)
22430E:  BX              R12; std::mutex::unlock(void)
