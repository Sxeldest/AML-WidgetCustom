; =========================================================
; Game Engine Function: _Z16emu_ArraysDeletej
; Address            : 0x1BD074 - 0x1BD08A
; =========================================================

1BD074:  CMP             R0, #0
1BD076:  IT EQ
1BD078:  BXEQ            LR
1BD07A:  PUSH            {R7,LR}
1BD07C:  MOV             R7, SP
1BD07E:  BLX             j__ZN10ArrayStateD2Ev; ArrayState::~ArrayState()
1BD082:  POP.W           {R7,LR}
1BD086:  B.W             j__ZdlPv; operator delete(void *)
