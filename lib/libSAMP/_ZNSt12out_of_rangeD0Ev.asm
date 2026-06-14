; =========================================================
; Game Engine Function: _ZNSt12out_of_rangeD0Ev
; Address            : 0x21FBF8 - 0x21FC08
; =========================================================

21FBF8:  PUSH            {R7,LR}
21FBFA:  MOV             R7, SP
21FBFC:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
21FC00:  POP.W           {R7,LR}
21FC04:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
