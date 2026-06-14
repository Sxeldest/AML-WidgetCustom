; =========================================================
; Game Engine Function: sub_10C4F4
; Address            : 0x10C4F4 - 0x10C500
; =========================================================

10C4F4:  MOV             R12, #(j__ZNSt6__ndk115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE - 0x10C500); std::__thread_struct::notify_all_at_thread_exit(std::condition_variable *,std::mutex *)
10C4FC:  ADD             R12, PC; std::__thread_struct::notify_all_at_thread_exit(std::condition_variable *,std::mutex *)
10C4FE:  BX              R12; std::__thread_struct::notify_all_at_thread_exit(std::condition_variable *,std::mutex *)
