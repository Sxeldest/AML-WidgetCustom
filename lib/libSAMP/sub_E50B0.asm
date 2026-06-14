; =========================================================
; Game Engine Function: sub_E50B0
; Address            : 0xE50B0 - 0xE50EC
; =========================================================

E50B0:  PUSH            {R4,R5,R7,LR}
E50B2:  ADD             R7, SP, #8
E50B4:  MOV             R4, R0
E50B6:  LDR             R0, =(_ZTVNSt6__ndk113basic_filebufIcNS_11char_traitsIcEEEE_ptr - 0xE50BC)
E50B8:  ADD             R0, PC; _ZTVNSt6__ndk113basic_filebufIcNS_11char_traitsIcEEEE_ptr
E50BA:  LDR             R0, [R0]; `vtable for'std::filebuf ...
E50BC:  ADDS            R0, #8
E50BE:  STR             R0, [R4]
E50C0:  MOV             R0, R4
E50C2:  BL              sub_E5108
E50C6:  LDRB.W          R0, [R4,#0x58]
E50CA:  CBZ             R0, loc_E50D4
E50CC:  LDR             R0, [R4,#0x20]; void *
E50CE:  CBZ             R0, loc_E50D4
E50D0:  BLX             j__ZdaPv; operator delete[](void *)
E50D4:  LDRB.W          R0, [R4,#0x59]
E50D8:  CBZ             R0, loc_E50E2
E50DA:  LDR             R0, [R4,#0x38]; void *
E50DC:  CBZ             R0, loc_E50E2
E50DE:  BLX             j__ZdaPv; operator delete[](void *)
E50E2:  MOV             R0, R4
E50E4:  POP.W           {R4,R5,R7,LR}
E50E8:  B.W             sub_224274
