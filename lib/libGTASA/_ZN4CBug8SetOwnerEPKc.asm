; =========================================================
; Game Engine Function: _ZN4CBug8SetOwnerEPKc
; Address            : 0x3BDF5A - 0x3BDFE0
; =========================================================

3BDF5A:  PUSH            {R4-R7,LR}
3BDF5C:  ADD             R7, SP, #0xC
3BDF5E:  PUSH.W          {R8-R10}
3BDF62:  MOV             R4, R1
3BDF64:  MOV             R9, R0
3BDF66:  MOV             R0, R4; char *
3BDF68:  BLX             strlen
3BDF6C:  MOV             R5, R0
3BDF6E:  ADD.W           R8, R5, #8
3BDF72:  MOV             R0, R8; unsigned int
3BDF74:  BLX             _Znaj; operator new[](uint)
3BDF78:  MOV             R10, R0
3BDF7A:  MOVS            R0, #0
3BDF7C:  STR.W           R0, [R10]
3BDF80:  ADD.W           R0, R10, #8; void *
3BDF84:  MOV             R1, R4; void *
3BDF86:  MOV             R2, R5; size_t
3BDF88:  STR.W           R5, [R10,#4]
3BDF8C:  BLX             memcpy_1
3BDF90:  LDR.W           R4, [R9,#4]
3BDF94:  ADD.W           R6, R4, R8
3BDF98:  MOV             R0, R6; unsigned int
3BDF9A:  BLX             _Znaj; operator new[](uint)
3BDF9E:  MOV             R1, R6
3BDFA0:  MOV             R5, R0
3BDFA2:  BLX             j___aeabi_memclr8_1
3BDFA6:  LDR.W           R6, [R9]
3BDFAA:  MOV             R0, R5; void *
3BDFAC:  MOV             R2, R4; size_t
3BDFAE:  MOV             R1, R6; void *
3BDFB0:  BLX             memcpy_1
3BDFB4:  ADDS            R0, R5, R4; void *
3BDFB6:  MOV             R1, R10; void *
3BDFB8:  MOV             R2, R8; size_t
3BDFBA:  BLX             memcpy_1
3BDFBE:  CBZ             R6, loc_3BDFCA
3BDFC0:  MOV             R0, R6; void *
3BDFC2:  BLX             _ZdaPv; operator delete[](void *)
3BDFC6:  LDR.W           R4, [R9,#4]
3BDFCA:  ADD.W           R0, R4, R8
3BDFCE:  STRD.W          R5, R0, [R9]
3BDFD2:  MOV             R0, R10; void *
3BDFD4:  POP.W           {R8-R10}
3BDFD8:  POP.W           {R4-R7,LR}
3BDFDC:  B.W             sub_18E920
