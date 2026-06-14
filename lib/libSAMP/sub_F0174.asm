; =========================================================
; Game Engine Function: sub_F0174
; Address            : 0xF0174 - 0xF0184
; =========================================================

F0174:  PUSH            {R7,LR}
F0176:  MOV             R7, SP
F0178:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
F017C:  POP.W           {R7,LR}
F0180:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
