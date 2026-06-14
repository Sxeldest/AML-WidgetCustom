; =========================================================
; Game Engine Function: sub_129F14
; Address            : 0x129F14 - 0x129F3C
; =========================================================

129F14:  PUSH            {R4,R6,R7,LR}
129F16:  ADD             R7, SP, #8
129F18:  LDR             R1, =(_ZTV2UI - 0x129F22); `vtable for'UI ...
129F1A:  MOV             R4, R0
129F1C:  LDR             R0, [R0,#0x54]
129F1E:  ADD             R1, PC; `vtable for'UI
129F20:  ADD.W           R1, R1, #8
129F24:  STR             R1, [R4]
129F26:  CBZ             R0, loc_129F2E
129F28:  LDR             R1, [R0]
129F2A:  LDR             R1, [R1,#0x14]
129F2C:  BLX             R1
129F2E:  MOV             R0, R4
129F30:  BL              sub_12BCE4
129F34:  POP.W           {R4,R6,R7,LR}
129F38:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
