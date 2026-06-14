; =========================================================
; Game Engine Function: sub_FDD64
; Address            : 0xFDD64 - 0xFDD74
; =========================================================

FDD64:  PUSH            {R7,LR}
FDD66:  MOV             R7, SP
FDD68:  BLX             j__ZNSt6__ndk114error_categoryD2Ev; std::error_category::~error_category()
FDD6C:  POP.W           {R7,LR}
FDD70:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
