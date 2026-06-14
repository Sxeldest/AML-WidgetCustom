; =========================================================
; Game Engine Function: sub_2245D4
; Address            : 0x2245D4 - 0x2245E0
; =========================================================

2245D4:  MOV             R12, #(j__ZNSt6__ndk115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE - 0x2245E0); std::__thread_struct::notify_all_at_thread_exit(std::condition_variable *,std::mutex *)
2245DC:  ADD             R12, PC; std::__thread_struct::notify_all_at_thread_exit(std::condition_variable *,std::mutex *)
2245DE:  BX              R12; std::__thread_struct::notify_all_at_thread_exit(std::condition_variable *,std::mutex *)
