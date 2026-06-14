; =========================================================
; Game Engine Function: sub_FDD74
; Address            : 0xFDD74 - 0xFDD86
; =========================================================

FDD74:  PUSH            {R7,LR}
FDD76:  MOV             R7, SP
FDD78:  MOV             R2, R0
FDD7A:  LDR             R0, [R0]; this
FDD7C:  STR             R1, [R2]
FDD7E:  CBZ             R0, locret_FDD84
FDD80:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
FDD84:  POP             {R7,PC}
