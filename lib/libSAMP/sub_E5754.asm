; =========================================================
; Game Engine Function: sub_E5754
; Address            : 0xE5754 - 0xE5772
; =========================================================

E5754:  PUSH            {R7,LR}
E5756:  MOV             R7, SP
E5758:  MOVS            R0, #4; thrown_size
E575A:  BLX             j___cxa_allocate_exception
E575E:  BLX             j__ZNSt8bad_castC2Ev; std::bad_cast::bad_cast(void)
E5762:  LDR             R1, =(_ZTISt8bad_cast_ptr - 0xE576A)
E5764:  LDR             R2, =(_ZNSt8bad_castD2Ev_ptr - 0xE576C)
E5766:  ADD             R1, PC; _ZTISt8bad_cast_ptr
E5768:  ADD             R2, PC; _ZNSt8bad_castD2Ev_ptr
E576A:  LDR             R1, [R1]; lptinfo
E576C:  LDR             R2, [R2]; std::bad_cast::~bad_cast() ; void (*)(void *)
E576E:  BLX             j___cxa_throw
